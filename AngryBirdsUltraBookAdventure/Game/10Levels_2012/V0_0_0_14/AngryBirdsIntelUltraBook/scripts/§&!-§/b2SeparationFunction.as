package §&!-§
{
   import §8>§.b2Mat22;
   import §8>§.b2Math;
   import §8>§.b2Transform;
   import §8>§.b2Vec2;
   import §;u§.b2Settings;
   
   class b2SeparationFunction
   {
      
      public static const §,!9§:int = 1;
      
      public static const §@!`§:int = 2;
      
      public static const §6$§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §,!9§ = 1;
         }
         while(true)
         {
            §@!`§ = 2;
            while(_loc2_ || _loc1_)
            {
               §6$§ = 4;
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public var §<n§:b2DistanceProxy;
      
      public var §1!f§:b2DistanceProxy;
      
      public var §"!1§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §9u§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_localPoint = new b2Vec2();
         }
         do
         {
            this.§9u§ = new b2Vec2();
            do
            {
               super();
            }
            while(_loc2_);
            
         }
         while(!(_loc1_ || this));
         
      }
      
      public function §7R§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         var _loc14_:* = NaN;
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
         if(_loc36_ || param3)
         {
            this.§<n§ = param2;
            if(!(_loc35_ && param3))
            {
               addr103:
               this.§1!f§ = param4;
            }
            var _loc6_:int = param1.count;
            if(_loc36_ || this)
            {
               §§push(b2Settings);
               if(_loc36_ || param1)
               {
                  §§push(0);
                  if(!(_loc35_ && param2))
                  {
                     §§push(_loc6_);
                     if(_loc36_ || param1)
                     {
                        §§push(§§pop() < §§pop());
                        if(_loc36_ || this)
                        {
                           if(§§pop())
                           {
                              if(!_loc35_)
                              {
                                 §§pop();
                                 addr156:
                                 §§push(_loc6_ < 3);
                              }
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        if(_loc36_ || this)
                        {
                           if(_loc6_ == 1)
                           {
                              if(!_loc35_)
                              {
                                 this.§"!1§ = §,!9§;
                                 if(!(_loc35_ && param3))
                                 {
                                    §§push(this.§<n§);
                                    if(!(_loc35_ && this))
                                    {
                                       §§push(§§pop().§#I§(param1.indexA[0]));
                                       if(!(_loc35_ && this))
                                       {
                                          _loc7_ = §§pop();
                                          _loc10_ = this.§1!f§.§#I§(param1.indexB[0]);
                                          _loc20_ = _loc7_;
                                          _loc19_ = param3.R;
                                          if(_loc36_)
                                          {
                                             §§push(param3.position);
                                             if(!(_loc35_ && param1))
                                             {
                                                §§push(§§pop().x);
                                                if(_loc36_ || param1)
                                                {
                                                   §§push(_loc19_.col1);
                                                   if(!(_loc35_ && param3))
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc35_ && param3))
                                                      {
                                                         §§push(_loc20_.x);
                                                         if(!_loc35_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc35_)
                                                            {
                                                               §§push(_loc19_.col2);
                                                               if(_loc36_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc35_)
                                                                  {
                                                                     §§push(_loc20_.y);
                                                                     if(_loc36_ || param1)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc35_ && param1))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc35_ && param1))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc36_ || param3)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc36_ || param2)
                                                                                 {
                                                                                    _loc13_ = §§pop();
                                                                                    if(_loc36_)
                                                                                    {
                                                                                       addr315:
                                                                                       addr313:
                                                                                       §§push(param3.position.y);
                                                                                       if(!(_loc35_ && param3))
                                                                                       {
                                                                                          addr323:
                                                                                          §§push(_loc19_.col1.y);
                                                                                          if(!(_loc35_ && this))
                                                                                          {
                                                                                             addr333:
                                                                                             §§push(_loc20_.x);
                                                                                             if(!_loc35_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc36_)
                                                                                                {
                                                                                                   addr340:
                                                                                                   §§push(_loc19_.col2.y);
                                                                                                   if(_loc36_ || this)
                                                                                                   {
                                                                                                      addr353:
                                                                                                      §§push(§§pop() + (§§pop() + §§pop() * _loc20_.y));
                                                                                                      if(!_loc35_)
                                                                                                      {
                                                                                                         addr357:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr353);
                                                                                       }
                                                                                       _loc14_ = §§pop();
                                                                                    }
                                                                                    _loc20_ = _loc10_;
                                                                                    _loc19_ = param5.R;
                                                                                    if(!(_loc35_ && param3))
                                                                                    {
                                                                                       §§push(param5.position);
                                                                                       loop51:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr554:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc19_.col1);
                                                                                             addr556:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!(_loc35_ && param2))
                                                                                                {
                                                                                                   §§push(_loc20_.x);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc36_ || param1)
                                                                                                      {
                                                                                                         §§push(_loc19_.col2);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr577:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc20_.y);
                                                                                                               addr579:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr580:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr576:
                                                                                                      }
                                                                                                   }
                                                                                                   addr566:
                                                                                                }
                                                                                                addr581:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr582:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr583:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc15_ = §§pop();
                                                                                                         continue loop51;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr553:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param5.position);
                                                                                       if(_loc36_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(!_loc35_)
                                                                                          {
                                                                                             if(!(_loc35_ && param1))
                                                                                             {
                                                                                                if(!(_loc35_ && param2))
                                                                                                {
                                                                                                   §§push(_loc19_.col1);
                                                                                                   if(_loc36_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!(_loc35_ && param2))
                                                                                                      {
                                                                                                         §§push(_loc20_.x);
                                                                                                         if(_loc36_)
                                                                                                         {
                                                                                                            if(!(_loc35_ && param1))
                                                                                                            {
                                                                                                               if(_loc36_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc35_ && this))
                                                                                                                  {
                                                                                                                     if(_loc36_ || param2)
                                                                                                                     {
                                                                                                                        §§push(_loc19_.col2);
                                                                                                                        if(!_loc35_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(_loc36_ || param2)
                                                                                                                           {
                                                                                                                              §§push(_loc20_.y);
                                                                                                                              if(_loc36_ || param2)
                                                                                                                              {
                                                                                                                                 addr530:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc35_ && param3))
                                                                                                                                 {
                                                                                                                                    addr538:
                                                                                                                                    §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                    if(!_loc35_)
                                                                                                                                    {
                                                                                                                                       if(_loc36_ || param2)
                                                                                                                                       {
                                                                                                                                          addr549:
                                                                                                                                          _loc16_ = Number(§§pop());
                                                                                                                                          loop63:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§9u§);
                                                                                                                                             addr432:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                addr433:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                   addr434:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      addr435:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         continue loop63;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr549);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr577);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr579);
                                                                                                                           }
                                                                                                                           §§goto(addr530);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr576);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr581);
                                                                                                                  }
                                                                                                                  §§goto(addr538);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr566);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr580);
                                                                                                         }
                                                                                                         §§goto(addr530);
                                                                                                      }
                                                                                                      §§goto(addr538);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr556);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr554);
                                                                                                }
                                                                                                §§goto(addr556);
                                                                                             }
                                                                                             §§goto(addr582);
                                                                                          }
                                                                                          §§goto(addr549);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr553);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr323);
                                                                           }
                                                                           §§goto(addr340);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr353);
                                                               }
                                                               §§goto(addr340);
                                                            }
                                                         }
                                                         §§goto(addr353);
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                   §§goto(addr323);
                                                }
                                                §§goto(addr357);
                                             }
                                             §§goto(addr315);
                                          }
                                          §§goto(addr313);
                                       }
                                       else
                                       {
                                          addr1914:
                                          _loc8_ = §§pop();
                                          _loc9_ = this.§<n§.§#I§(param1.indexA[1]);
                                          _loc11_ = this.§1!f§.§#I§(param1.indexB[0]);
                                          _loc12_ = this.§1!f§.§#I§(param1.indexB[1]);
                                          _loc23_ = b2Math.§,^§(param3,_loc7_);
                                          _loc24_ = b2Math.§"!+§(param3.R,b2Math.§>G§(_loc9_,_loc8_));
                                          _loc25_ = b2Math.§,^§(param5,_loc10_);
                                          _loc26_ = b2Math.§"!+§(param5.R,b2Math.§>G§(_loc12_,_loc11_));
                                          if(_loc36_)
                                          {
                                             §§push(_loc24_.x);
                                             if(_loc36_ || this)
                                             {
                                                §§push(_loc24_.x);
                                                if(!_loc35_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc35_ && param2))
                                                   {
                                                      §§push(_loc24_.y);
                                                      if(!(_loc35_ && param3))
                                                      {
                                                         §§push(_loc24_.y);
                                                         if(_loc36_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc36_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc36_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc35_ && param2))
                                                                  {
                                                                     addr2025:
                                                                     _loc27_ = §§pop();
                                                                     if(_loc36_)
                                                                     {
                                                                        addr2028:
                                                                        §§push(_loc26_.x);
                                                                        if(_loc36_)
                                                                        {
                                                                           §§push(_loc26_.x);
                                                                           if(!(_loc35_ && this))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc36_ || param3)
                                                                              {
                                                                                 addr2049:
                                                                                 §§push(_loc26_.y);
                                                                                 if(_loc36_)
                                                                                 {
                                                                                    addr2056:
                                                                                    §§push(§§pop() + §§pop() * _loc26_.y);
                                                                                    if(_loc36_ || param2)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr2056);
                                                                              }
                                                                           }
                                                                           §§goto(addr2056);
                                                                        }
                                                                        _loc28_ = §§pop();
                                                                     }
                                                                     _loc29_ = b2Math.§>G§(_loc26_,_loc24_);
                                                                     if(_loc36_)
                                                                     {
                                                                        §§push(_loc24_.x);
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc29_.x);
                                                                           addr2511:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              addr2512:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc24_.y);
                                                                                 addr2514:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc29_.y);
                                                                                    addr2516:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       addr2517:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr2518:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr2519:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc30_ = §§pop();
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr2509:
                                                                     }
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc26_.x);
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc29_.x);
                                                                           if(_loc36_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc26_.y);
                                                                                 loop11:
                                                                                 while(!(_loc35_ && param2))
                                                                                 {
                                                                                    §§push(_loc29_.y);
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       addr2503:
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc31_ = §§pop();
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc24_.x);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc26_.x);
                                                                                                      addr2450:
                                                                                                      while(_loc36_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      §§goto(addr2511);
                                                                                                      addr2104:
                                                                                                      if(!(_loc36_ || param1))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr2112:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc35_)
                                                                                                      {
                                                                                                         if(!(_loc35_ && param2))
                                                                                                         {
                                                                                                            addr2121:
                                                                                                            if(!(_loc35_ && this))
                                                                                                            {
                                                                                                               if(!(_loc35_ && param1))
                                                                                                               {
                                                                                                                  _loc21_ = §§pop();
                                                                                                                  if(!(_loc35_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc35_ && param1)
                                                                                                                     {
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        loop42:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc32_);
                                                                                                                           if(_loc36_)
                                                                                                                           {
                                                                                                                              if(_loc36_)
                                                                                                                              {
                                                                                                                                 §§push(_loc21_);
                                                                                                                                 if(_loc36_ || param2)
                                                                                                                                 {
                                                                                                                                    if(!_loc36_)
                                                                                                                                    {
                                                                                                                                       continue loop11;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc36_)
                                                                                                                                    {
                                                                                                                                       addr2171:
                                                                                                                                       if(!(_loc35_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(_loc31_);
                                                                                                                                          if(!_loc35_)
                                                                                                                                          {
                                                                                                                                             addr2181:
                                                                                                                                             if(!_loc35_)
                                                                                                                                             {
                                                                                                                                                addr2183:
                                                                                                                                                if(!(_loc35_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc35_)
                                                                                                                                                      {
                                                                                                                                                         addr2193:
                                                                                                                                                         §§push(_loc28_);
                                                                                                                                                         if(!(_loc35_ && this))
                                                                                                                                                         {
                                                                                                                                                            loop43:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc36_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc35_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                     if(_loc36_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc36_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           loop44:
                                                                                                                                                                           while(!(_loc35_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc35_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(_loc36_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr2243:
                                                                                                                                                                                    while(!(_loc35_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc34_ = §§pop();
                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc35_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc35_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                loop46:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc35_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc36_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr2285:
                                                                                                                                                                                                            if(_loc36_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc36_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr2299:
                                                                                                                                                                                                                        while(_loc36_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           loop48:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc35_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc34_ = §§pop();
                                                                                                                                                                                                                                    addr2317:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc35_ && param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop38:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc36_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc36_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(b2Math);
                                                                                                                                                                                                                                                §§push(_loc32_);
                                                                                                                                                                                                                                                if(_loc36_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc31_);
                                                                                                                                                                                                                                                   if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc30_);
                                                                                                                                                                                                                                                         if(_loc36_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * _loc28_);
                                                                                                                                                                                                                                                            if(_loc36_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                               if(_loc36_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr2380:
                                                                                                                                                                                                                                                                  §§push(_loc33_);
                                                                                                                                                                                                                                                                  if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr2389:
                                                                                                                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr2389);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop().§5L§(§§pop(),§§pop(),1));
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            break loop44;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr2392:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr2380);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr2389);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                   loop33:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      addr2400:
                                                                                                                                                                                                                                                      while(!(_loc35_ && param3))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc21_ = §§pop();
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc33_);
                                                                                                                                                                                                                                                            addr2327:
                                                                                                                                                                                                                                                            while(_loc36_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop38;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop42;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr2171);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop33;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop14;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr2444:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop8;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(b2Math);
                                                                                                                                                                                                                                       §§push(_loc32_);
                                                                                                                                                                                                                                       if(_loc36_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc30_);
                                                                                                                                                                                                                                          if(_loc36_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr2086:
                                                                                                                                                                                                                                                §§push(_loc27_);
                                                                                                                                                                                                                                                if(_loc36_ || param3)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr2095:
                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(§§pop().§5L§(§§pop(),§§pop(),1));
                                                                                                                                                                                                                                                if(_loc36_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc36_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop44;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr2104);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc32_);
                                                                                                                                                                                                                                                      addr2423:
                                                                                                                                                                                                                                                      addr2462:
                                                                                                                                                                                                                                                      while(!_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc32_);
                                                                                                                                                                                                                                                         if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop12;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr2464:
                                                                                                                                                                                                                                                         while(!(_loc35_ && param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            while(!(_loc35_ && param3))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  break loop48;
                                                                                                                                                                                                                                                                  §§goto(addr2121);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop46;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop13;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr2516);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr2464);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr2112);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2095);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2086);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr2519);
                                                                                                                                                                                                                                    addr2317:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr2392);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc32_ = §§pop();
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop15;
                                                                                                                                                                                                                        addr2299:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2307);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc27_);
                                                                                                                                                                                                                     if(!(_loc35_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc28_);
                                                                                                                                                                                                                        break loop43;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2422);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2408);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop42;
                                                                                                                                                                                                               §§goto(addr2285);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr2396:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2317);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2472);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr2521:
                                                                                                                                                                                                §§push(_loc7_ = new b2Vec2());
                                                                                                                                                                                                §§push(_loc8_.x);
                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc9_.x);
                                                                                                                                                                                                      if(_loc36_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - _loc8_.x);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                if(!(_loc35_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                   §§push(_loc8_.y);
                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc21_);
                                                                                                                                                                                                      if(!(_loc35_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc9_.y);
                                                                                                                                                                                                         if(_loc36_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - _loc8_.y);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc10_ = new b2Vec2());
                                                                                                                                                                                                §§push(_loc11_.x);
                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                   if(!(_loc35_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc12_.x);
                                                                                                                                                                                                      if(_loc36_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - _loc11_.x);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                if(!(_loc35_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                                                                   §§push(_loc11_.y);
                                                                                                                                                                                                   if(!(_loc35_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc21_);
                                                                                                                                                                                                      if(!(_loc35_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc12_.y);
                                                                                                                                                                                                         if(_loc36_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - _loc11_.y);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   addr2733:
                                                                                                                                                                                                   §§push(_loc21_ == 0);
                                                                                                                                                                                                   if(_loc36_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr2698:
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         addr2699:
                                                                                                                                                                                                         §§push(_loc21_);
                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() == 1);
                                                                                                                                                                                                            if(_loc36_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr2670:
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr2672:
                                                                                                                                                                                                                  if(_loc36_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§"!1§ = §6$§;
                                                                                                                                                                                                                     addr2682:
                                                                                                                                                                                                                     if(_loc36_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§9u§ = b2Math.§=!,§(b2Math.§>G§(_loc12_,_loc11_),1);
                                                                                                                                                                                                                        addr2659:
                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr2633:
                                                                                                                                                                                                                           §§push(this.§9u§);
                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().Normalize();
                                                                                                                                                                                                                              if(_loc36_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc35_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.m_localPoint = _loc10_;
                                                                                                                                                                                                                                    if(_loc36_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc36_ || param3)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(false)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr2633);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(this.§9u§);
                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr2738:
                                                                                                                                                                                                                                             _loc20_ = §§pop();
                                                                                                                                                                                                                                             §§push((_loc19_ = param5.R).col1);
                                                                                                                                                                                                                                             if(_loc36_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                                                                if(_loc36_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc20_.x);
                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(_loc36_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc19_.col2);
                                                                                                                                                                                                                                                         if(_loc36_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                                                                            if(_loc36_ || param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc20_.y);
                                                                                                                                                                                                                                                               if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        if(_loc36_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc17_ = §§pop();
                                                                                                                                                                                                                                                                           if(_loc36_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr2808:
                                                                                                                                                                                                                                                                              §§push(_loc19_.col1.y);
                                                                                                                                                                                                                                                                              if(_loc36_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr2816:
                                                                                                                                                                                                                                                                                 §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                 if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr2825:
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr2833:
                                                                                                                                                                                                                                                                                       §§push(_loc19_.col2.y);
                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr2841:
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                                                                                                                                                                                                                          if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr2849:
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr2841);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                                                                                                                                                                    addr2851:
                                                                                                                                                                                                                                                                                    _loc20_ = this.m_localPoint;
                                                                                                                                                                                                                                                                                    _loc19_ = param5.R;
                                                                                                                                                                                                                                                                                    if(_loc36_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(param5.position);
                                                                                                                                                                                                                                                                                       if(_loc36_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                                                                                                                          if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc19_.col1);
                                                                                                                                                                                                                                                                                             if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc19_.col2);
                                                                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc20_.y);
                                                                                                                                                                                                                                                                                                               if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                  if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr2926:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc36_ || param3)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr2950:
                                                                                                                                                                                                                                                                                                                                 addr2948:
                                                                                                                                                                                                                                                                                                                                 §§push(param5.position.y);
                                                                                                                                                                                                                                                                                                                                 if(_loc36_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr2953:
                                                                                                                                                                                                                                                                                                                                    §§push(_loc19_.col1.y);
                                                                                                                                                                                                                                                                                                                                    if(_loc36_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr2962:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                          if(_loc36_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr2965:
                                                                                                                                                                                                                                                                                                                                             §§push(_loc19_.col2.y);
                                                                                                                                                                                                                                                                                                                                             if(_loc36_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr2973:
                                                                                                                                                                                                                                                                                                                                                addr2974:
                                                                                                                                                                                                                                                                                                                                                addr2972:
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + (§§pop() + §§pop() * _loc20_.y));
                                                                                                                                                                                                                                                                                                                                                if(_loc36_ || param3)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr2983:
                                                                                                                                                                                                                                                                                                                                                _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                addr2984:
                                                                                                                                                                                                                                                                                                                                                _loc20_ = _loc7_;
                                                                                                                                                                                                                                                                                                                                                _loc19_ = param3.R;
                                                                                                                                                                                                                                                                                                                                                if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr3226:
                                                                                                                                                                                                                                                                                                                                                   §§push(param3.position.x);
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc19_.col1.x);
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr3217:
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc19_.col2.x);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   _loc13_ = Number(§§pop() + (§§pop() + §§pop() * _loc20_.y));
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr3227:
                                                                                                                                                                                                                                                                                                                                                §§push(param3.position);
                                                                                                                                                                                                                                                                                                                                                if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr3164:
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc19_.col1);
                                                                                                                                                                                                                                                                                                                                                   if(_loc36_ || this)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr3174:
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr3179:
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc19_.col2);
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr3189:
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc20_.y);
                                                                                                                                                                                                                                                                                                                                                            if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr3199:
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                               if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr3204:
                                                                                                                                                                                                                                                                                                                                                                  _loc14_ = Number(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                                                                                                                  addr3056:
                                                                                                                                                                                                                                                                                                                                                                  addr3205:
                                                                                                                                                                                                                                                                                                                                                                  addr3202:
                                                                                                                                                                                                                                                                                                                                                                  addr3203:
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr3080:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc36_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc36_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr3110:
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr3135:
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc36_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr3143:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr3148:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr3152:
                                                                                                                                                                                                                                                                                                                                                                                                                           _loc22_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                           addr3153:
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc36_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc36_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               this.§9u§.§%r§();
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr3054:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr3056);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr3770);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr3153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr3054);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr3110);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr3135);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr3148);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr3226);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr3080);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr3148);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr3152);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr3227);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr3205);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr3204);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr3189);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr3199);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr3217);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr3226);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3143);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr3179);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr3202);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr3164);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr3203);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr3148);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr3226);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr3110);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr3226);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr3174);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr3148);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr3226);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr3080);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr3226);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3217);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr3189);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr3226);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr2973);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr2974);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr2973);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr2983);
                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr2984);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr2953);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr2965);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr2962);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr2972);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr2973);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr2965);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr2973);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2926);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr2973);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr2953);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr2973);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr2950);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr2948);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr2841);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2849);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr2851);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr2833);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr2816);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr2841);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr2833);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr2825);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr2849);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2808);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr3255:
                                                                                                                                                                                                                                             _loc20_ = §§pop();
                                                                                                                                                                                                                                             §§push((_loc19_ = param3.R).col1);
                                                                                                                                                                                                                                             if(_loc36_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                                                                if(_loc36_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc20_.x);
                                                                                                                                                                                                                                                   if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(_loc36_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc19_.col2);
                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                                                                            if(_loc36_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc20_.y);
                                                                                                                                                                                                                                                               if(_loc36_ || param3)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(_loc36_ || param3)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(_loc36_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr3317:
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr3320:
                                                                                                                                                                                                                                                                           _loc17_ = §§pop();
                                                                                                                                                                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr3330:
                                                                                                                                                                                                                                                                              §§push(_loc19_.col1.y);
                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr3333:
                                                                                                                                                                                                                                                                                 §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                 if(_loc36_ || this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr3342:
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(_loc36_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr3347:
                                                                                                                                                                                                                                                                                       §§push(_loc19_.col2.y);
                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr3353:
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                                                                                                                                                                                                                          if(_loc36_ || param3)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr3361:
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr3353);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr3361);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr3353);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              _loc18_ = §§pop();
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           _loc20_ = this.m_localPoint;
                                                                                                                                                                                                                                                                           _loc19_ = param3.R;
                                                                                                                                                                                                                                                                           if(_loc36_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(param3.position);
                                                                                                                                                                                                                                                                              if(_loc36_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                                                                                                                 if(_loc36_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc19_.col1);
                                                                                                                                                                                                                                                                                    if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             if(_loc36_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc19_.col2);
                                                                                                                                                                                                                                                                                                if(_loc36_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                   if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr3421:
                                                                                                                                                                                                                                                                                                      §§push(_loc20_.y);
                                                                                                                                                                                                                                                                                                      if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         if(_loc36_ || this)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr3462:
                                                                                                                                                                                                                                                                                                                        addr3460:
                                                                                                                                                                                                                                                                                                                        §§push(param3.position.y);
                                                                                                                                                                                                                                                                                                                        if(_loc36_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr3467:
                                                                                                                                                                                                                                                                                                                           §§push(_loc19_.col1.y);
                                                                                                                                                                                                                                                                                                                           if(_loc36_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr3470:
                                                                                                                                                                                                                                                                                                                              §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                                                              if(_loc36_ || param3)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr3489:
                                                                                                                                                                                                                                                                                                                                    §§push(_loc19_.col2.y);
                                                                                                                                                                                                                                                                                                                                    if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr3500:
                                                                                                                                                                                                                                                                                                                                       addr3501:
                                                                                                                                                                                                                                                                                                                                       addr3497:
                                                                                                                                                                                                                                                                                                                                       addr3499:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + (§§pop() + §§pop() * _loc20_.y));
                                                                                                                                                                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr3505:
                                                                                                                                                                                                                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       _loc20_ = _loc10_;
                                                                                                                                                                                                                                                                                                                                       _loc19_ = param5.R;
                                                                                                                                                                                                                                                                                                                                       if(_loc36_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr3768:
                                                                                                                                                                                                                                                                                                                                          _loc15_ = Number(param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y));
                                                                                                                                                                                                                                                                                                                                          addr3769:
                                                                                                                                                                                                                                                                                                                                          addr3753:
                                                                                                                                                                                                                                                                                                                                          addr3767:
                                                                                                                                                                                                                                                                                                                                          addr3758:
                                                                                                                                                                                                                                                                                                                                          addr3762:
                                                                                                                                                                                                                                                                                                                                          addr3765:
                                                                                                                                                                                                                                                                                                                                          addr3759:
                                                                                                                                                                                                                                                                                                                                          addr3756:
                                                                                                                                                                                                                                                                                                                                          addr3766:
                                                                                                                                                                                                                                                                                                                                          addr3764:
                                                                                                                                                                                                                                                                                                                                          addr3761:
                                                                                                                                                                                                                                                                                                                                          addr3755:
                                                                                                                                                                                                                                                                                                                                          §§push(param5.position);
                                                                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc19_.col1);
                                                                                                                                                                                                                                                                                                                                                if(_loc36_ || this)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr3694:
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                                                                                   if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                      if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc19_.col2);
                                                                                                                                                                                                                                                                                                                                                         if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc20_.y);
                                                                                                                                                                                                                                                                                                                                                               if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr3729:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr3748:
                                                                                                                                                                                                                                                                                                                                                                     _loc16_ = Number(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                     addr3568:
                                                                                                                                                                                                                                                                                                                                                                     addr3749:
                                                                                                                                                                                                                                                                                                                                                                     addr3747:
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc36_ || param3)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr3581:
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc36_ || this)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr3599:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr3602:
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr3625:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr3635:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr3665:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                           addr3673:
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            this.§9u§.§%r§();
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr3566:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr3568);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr3770);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3749);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr3673);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr3566);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr3770);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr3694);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr3635);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr3768);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr3748);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr3581);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr3665);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr3769);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr3753);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr3767);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr3747);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr3665);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr3729);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3758);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr3729);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr3635);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr3762);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr3765);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr3625);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr3759);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr3625);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr3665);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr3756);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr3625);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr3602);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr3599);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr3766);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr3764);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr3729);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3761);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr3729);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr3755);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr3748);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr3752:
                                                                                                                                                                                                                                                                                                                                          §§goto(addr3752);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr3566);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr3500);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr3501);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr3500);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr3505);
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr3500);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr3500);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr3470);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr3497);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr3499);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr3500);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr3489);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr3500);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr3421);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr3470);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr3467);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr3462);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr3460);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr3361);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr3320);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr3353);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr3342);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr3347);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr3333);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr3353);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr3317);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr3330);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2672);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr3250:
                                                                                                                                                                                                                                    this.m_localPoint = _loc7_;
                                                                                                                                                                                                                                    §§goto(addr3255);
                                                                                                                                                                                                                                    §§push(this.§9u§);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2659);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr3250);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2738);
                                                                                                                                                                                                                           addr2661:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr2682);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2733);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2699);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               this.§"!1§ = §@!`§;
                                                                                                                                                                                                               if(_loc36_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§9u§ = b2Math.§=!,§(b2Math.§>G§(_loc9_,_loc8_),1);
                                                                                                                                                                                                                  if(!(_loc35_ && param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr3250);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr3250);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2698);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2733);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2670);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2698);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2661);
                                                                                                                                                                                                addr2270:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2518);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                addr2443:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc33_ = §§pop();
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr2442:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2444);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2299);
                                                                                                                                                                                    }
                                                                                                                                                                                    break loop43;
                                                                                                                                                                                    continue loop10;
                                                                                                                                                                                    addr2243:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2270);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr2512);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           while(_loc36_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc21_ = §§pop();
                                                                                                                                                                              §§goto(addr2396);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop9;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2443);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2307);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr2450);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2423);
                                                                                                                                                               §§goto(addr2193);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc36_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr2422);
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                               §§goto(addr2243);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2517);
                                                                                                                                                            addr2201:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2243);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr2509);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr2191:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr2183);
                                                                                                                                                   }
                                                                                                                                                   addr2441:
                                                                                                                                                }
                                                                                                                                                §§goto(addr2442);
                                                                                                                                             }
                                                                                                                                             §§goto(addr2330);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2201);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2327);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2299);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2181);
                                                                                                                              }
                                                                                                                              §§goto(addr2400);
                                                                                                                           }
                                                                                                                           §§goto(addr2299);
                                                                                                                        }
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                     §§goto(addr2521);
                                                                                                                  }
                                                                                                                  §§goto(addr2317);
                                                                                                               }
                                                                                                               §§goto(addr2519);
                                                                                                            }
                                                                                                            §§goto(addr2480);
                                                                                                         }
                                                                                                         §§goto(addr2191);
                                                                                                      }
                                                                                                      §§goto(addr2307);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr2514);
                                                                              }
                                                                           }
                                                                           §§goto(addr2503);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr2049);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr2056);
                                                   }
                                                   §§goto(addr2049);
                                                }
                                                §§goto(addr2056);
                                             }
                                             §§goto(addr2025);
                                          }
                                          §§goto(addr2028);
                                       }
                                    }
                                    else
                                    {
                                       addr611:
                                       §§push(§§pop().§#I§(param1.indexA[0]));
                                       if(!(_loc35_ && param2))
                                       {
                                          _loc8_ = §§pop();
                                          _loc9_ = this.§<n§.§#I§(param1.indexA[1]);
                                          _loc10_ = this.§1!f§.§#I§(param1.indexB[0]);
                                          if(!_loc35_)
                                          {
                                             §§push(this.m_localPoint);
                                             loop106:
                                             while(true)
                                             {
                                                §§push(0.5);
                                                addr737:
                                                while(true)
                                                {
                                                   §§push(_loc8_.x);
                                                   addr739:
                                                   while(true)
                                                   {
                                                      §§push(_loc9_.x);
                                                      addr741:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr742:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr743:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               continue loop106;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr680);
                                       }
                                       else
                                       {
                                          addr1309:
                                          _loc11_ = §§pop();
                                          _loc12_ = this.§1!f§.§#I§(param1.indexB[1]);
                                          _loc7_ = this.§<n§.§#I§(param1.indexA[0]);
                                          if(_loc36_)
                                          {
                                             §§push(this.m_localPoint);
                                             loop72:
                                             while(true)
                                             {
                                                §§push(0.5);
                                                if(!_loc35_)
                                                {
                                                   §§push(_loc11_.x);
                                                   while(true)
                                                   {
                                                      §§push(_loc12_.x);
                                                      addr1407:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr1408:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                      }
                                                   }
                                                   addr1405:
                                                }
                                                addr1409:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   continue loop72;
                                                }
                                             }
                                          }
                                          §§goto(addr1349);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr607:
                                    §§push(this.§<n§);
                                    if(_loc36_)
                                    {
                                       §§goto(addr611);
                                    }
                                    else
                                    {
                                       addr1909:
                                       §§goto(addr1914);
                                       §§push(§§pop().§#I§(param1.indexA[0]));
                                    }
                                 }
                                 §§goto(addr3770);
                              }
                              else
                              {
                                 addr1300:
                                 §§push(this.§1!f§.§#I§(param1.indexB[0]));
                                 if(_loc36_)
                                 {
                                    §§goto(addr1309);
                                 }
                                 else
                                 {
                                    §§goto(addr1914);
                                 }
                              }
                              §§goto(addr1914);
                           }
                           else if(param1.indexB[0] == param1.indexB[1])
                           {
                              if(_loc36_)
                              {
                                 this.§"!1§ = §@!`§;
                                 if(!(_loc35_ && this))
                                 {
                                    §§goto(addr607);
                                 }
                                 else
                                 {
                                    §§goto(addr1300);
                                 }
                              }
                              else
                              {
                                 addr1297:
                                 this.§"!1§ = §6$§;
                                 §§goto(addr1300);
                              }
                              §§goto(addr1300);
                           }
                           else
                           {
                              if(param1.indexA[0] == param1.indexA[0])
                              {
                                 if(!(_loc35_ && param1))
                                 {
                                    §§goto(addr1297);
                                 }
                                 §§goto(addr1300);
                              }
                              else
                              {
                                 §§goto(addr1909);
                                 §§push(this.§<n§);
                              }
                              §§goto(addr1914);
                           }
                           §§goto(addr1909);
                        }
                        §§goto(addr607);
                     }
                  }
               }
               §§goto(addr156);
            }
            §§goto(addr1300);
         }
         §§goto(addr103);
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
         §§push(this.§"!1§);
         if(!_loc13_)
         {
            var _loc11_:* = §§pop();
            if(!_loc13_)
            {
               §§push(§,!9§);
               if(!_loc13_)
               {
                  §§push(_loc11_);
                  if(_loc12_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc12_)
                        {
                           §§push(0);
                           if(_loc13_)
                           {
                              addr429:
                              §§push(_loc11_);
                              if(_loc12_ || this)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc13_ && this))
                                    {
                                       §§push(1);
                                       if(_loc12_)
                                       {
                                          addr477:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc3_ = b2Math.§`m§(param1.R,this.§9u§);
                                                _loc4_ = b2Math.§`m§(param2.R,this.§9u§.§2!'§());
                                                _loc5_ = this.§<n§.§55§(_loc3_);
                                                _loc6_ = this.§1!f§.§55§(_loc4_);
                                                _loc7_ = b2Math.§,^§(param1,_loc5_);
                                                §§push((_loc8_ = b2Math.§,^§(param2,_loc6_)).x);
                                                if(_loc12_)
                                                {
                                                   §§push(_loc7_.x);
                                                   if(!(_loc13_ && param1))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc12_ || param1)
                                                      {
                                                         §§push(this.§9u§.x);
                                                         if(!_loc13_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc13_)
                                                            {
                                                               §§push(_loc8_.y);
                                                               if(_loc12_)
                                                               {
                                                                  §§push(_loc7_.y);
                                                                  if(!(_loc13_ && _loc3_))
                                                                  {
                                                                     §§goto(addr138);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc13_ && _loc3_))
                                                                  {
                                                                     addr138:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(this.§9u§.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc12_ || this)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc13_ && this)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr156);
                                                         }
                                                         §§goto(addr138);
                                                      }
                                                   }
                                                   §§goto(addr156);
                                                }
                                                addr156:
                                                return §§pop();
                                             case 1:
                                                _loc10_ = b2Math.§"!+§(param1.R,this.§9u§);
                                                _loc7_ = b2Math.§,^§(param1,this.m_localPoint);
                                                _loc4_ = b2Math.§`m§(param2.R,_loc10_.§2!'§());
                                                _loc6_ = this.§1!f§.§55§(_loc4_);
                                                §§push((_loc8_ = b2Math.§,^§(param2,_loc6_)).x);
                                                if(!_loc13_)
                                                {
                                                   §§push(_loc7_.x);
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc12_)
                                                      {
                                                         §§push(_loc10_.x);
                                                         if(_loc12_ || param2)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc12_)
                                                            {
                                                               §§push(_loc8_.y);
                                                               if(_loc12_ || param1)
                                                               {
                                                                  §§push(_loc7_.y);
                                                                  if(_loc12_ || param2)
                                                                  {
                                                                     addr264:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§push(_loc10_.y);
                                                                     }
                                                                     _loc9_ = §§pop();
                                                                     §§goto(addr265);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr252:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc13_ && _loc3_))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc12_)
                                                                        {
                                                                           addr263:
                                                                           §§push(§§pop());
                                                                        }
                                                                        addr265:
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                            §§goto(addr263);
                                                         }
                                                         §§goto(addr264);
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                   §§goto(addr252);
                                                }
                                                §§goto(addr264);
                                             case 2:
                                                _loc10_ = b2Math.§"!+§(param2.R,this.§9u§);
                                                _loc8_ = b2Math.§,^§(param2,this.m_localPoint);
                                                _loc3_ = b2Math.§`m§(param1.R,_loc10_.§2!'§());
                                                _loc5_ = this.§<n§.§55§(_loc3_);
                                                §§push((_loc7_ = b2Math.§,^§(param1,_loc5_)).x);
                                                if(_loc12_ || this)
                                                {
                                                   §§push(_loc8_.x);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc13_)
                                                      {
                                                         §§push(_loc10_.x);
                                                         if(!(_loc13_ && param2))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc12_ || _loc3_)
                                                            {
                                                               §§push(_loc7_.y);
                                                               if(_loc12_ || _loc3_)
                                                               {
                                                                  §§push(_loc8_.y);
                                                                  if(_loc12_ || param1)
                                                                  {
                                                                     addr366:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(_loc10_.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc12_)
                                                                     {
                                                                        addr369:
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc12_ || _loc3_)
                                                                        {
                                                                           addr377:
                                                                           §§push(_loc9_ = §§pop());
                                                                           if(!(_loc12_ || param2))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr386);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr377);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc12_ || param2)
                                                                  {
                                                                     §§goto(addr366);
                                                                  }
                                                                  §§goto(addr377);
                                                               }
                                                               §§goto(addr366);
                                                            }
                                                            §§goto(addr369);
                                                         }
                                                         §§goto(addr366);
                                                      }
                                                   }
                                                   §§goto(addr377);
                                                }
                                                addr386:
                                                return §§pop();
                                             default:
                                                b2Settings.b2Assert(false);
                                          }
                                          return 0;
                                          addr477:
                                          addr458:
                                       }
                                       else
                                       {
                                          addr462:
                                          if(§§pop() === _loc11_)
                                          {
                                             addr464:
                                             §§push(2);
                                             if(_loc12_ || _loc3_)
                                             {
                                             }
                                             §§goto(addr477);
                                          }
                                          else
                                          {
                                             §§goto(addr477);
                                             §§push(3);
                                          }
                                          §§goto(addr477);
                                       }
                                       §§goto(addr477);
                                    }
                                    §§goto(addr464);
                                 }
                                 else
                                 {
                                    §§push(§6$§);
                                    if(!_loc13_)
                                    {
                                       §§goto(addr462);
                                    }
                                 }
                              }
                              §§goto(addr462);
                           }
                           §§goto(addr477);
                        }
                        §§goto(addr464);
                     }
                     else
                     {
                        §§push(§@!`§);
                        if(_loc12_ || param1)
                        {
                           §§goto(addr429);
                        }
                     }
                     §§goto(addr458);
                  }
                  §§goto(addr462);
               }
               §§goto(addr429);
            }
            §§goto(addr464);
         }
         §§goto(addr477);
      }
   }
}
