package §55§
{
   import §#]§.b2Mat22;
   import §#]§.b2Math;
   import §#]§.b2Transform;
   import §#]§.b2Vec2;
   import §4!!§.b2Settings;
   
   class b2SeparationFunction
   {
      
      public static const §0!j§:int = 1;
      
      public static const §;1§:int = 2;
      
      public static const §#[§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0!j§ = 1;
         }
         while(true)
         {
            §;1§ = 2;
            while(!_loc1_)
            {
               §#[§ = 4;
               if(!(_loc1_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      public var §!"6§:b2DistanceProxy;
      
      public var §9X§:b2DistanceProxy;
      
      public var §<";§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §<!j§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_localPoint = new b2Vec2();
         }
         while(true)
         {
            this.§<!j§ = new b2Vec2();
            while(_loc2_)
            {
               super();
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §`!r§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
            this.§!"6§ = param2;
            if(!(_loc35_ && this))
            {
               addr98:
               this.§9X§ = param4;
            }
            var _loc6_:int = param1.count;
            if(_loc36_)
            {
               §§push(b2Settings);
               if(_loc36_ || param2)
               {
                  §§push(0);
                  if(!(_loc35_ && param2))
                  {
                     §§push(_loc6_);
                     if(!_loc35_)
                     {
                        §§push(§§pop() < §§pop());
                        if(!_loc35_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc35_ && param2))
                              {
                                 addr138:
                                 §§pop();
                                 §§push(_loc6_ < 3);
                              }
                           }
                           §§pop().b2Assert(§§pop());
                           if(!(_loc35_ && param2))
                           {
                              addr150:
                              if(_loc6_ == 1)
                              {
                                 if(_loc36_)
                                 {
                                    this.§<";§ = §0!j§;
                                    if(_loc36_ || param2)
                                    {
                                       §§push(this.§!"6§);
                                       if(!_loc35_)
                                       {
                                          §§push(§§pop().§0!C§(param1.indexA[0]));
                                          if(!(_loc35_ && param3))
                                          {
                                             _loc7_ = §§pop();
                                             _loc10_ = this.§9X§.§0!C§(param1.indexB[0]);
                                             _loc20_ = _loc7_;
                                             _loc19_ = param3.R;
                                             if(_loc36_)
                                             {
                                                §§push(param3.position);
                                                if(_loc36_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc35_ && this))
                                                   {
                                                      §§push(_loc19_.col1);
                                                      if(!_loc35_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc35_ && param3))
                                                         {
                                                            §§push(_loc20_.x);
                                                            if(_loc36_ || param3)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc36_ || param3)
                                                               {
                                                                  addr242:
                                                                  §§push(_loc19_.col2);
                                                                  if(_loc36_)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc36_)
                                                                     {
                                                                        §§push(_loc20_.y);
                                                                        if(!_loc35_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc35_ && param2))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc36_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc35_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc36_)
                                                                                    {
                                                                                       _loc13_ = §§pop();
                                                                                       if(_loc36_)
                                                                                       {
                                                                                          addr275:
                                                                                          §§push(param3.position.y);
                                                                                          if(_loc36_ || param2)
                                                                                          {
                                                                                             addr285:
                                                                                             §§push(_loc19_.col1.y);
                                                                                             if(!(_loc35_ && this))
                                                                                             {
                                                                                                §§push(_loc20_.x);
                                                                                                if(!_loc35_)
                                                                                                {
                                                                                                   addr297:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc35_)
                                                                                                   {
                                                                                                      addr302:
                                                                                                      §§push(_loc19_.col2.y);
                                                                                                      if(_loc36_)
                                                                                                      {
                                                                                                         addr308:
                                                                                                         §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                                      }
                                                                                                      §§goto(addr308);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr308);
                                                                                             }
                                                                                          }
                                                                                          addr313:
                                                                                          _loc14_ = §§pop();
                                                                                          addr314:
                                                                                          _loc20_ = _loc10_;
                                                                                          _loc19_ = param5.R;
                                                                                          if(_loc36_)
                                                                                          {
                                                                                             §§push(param5.position);
                                                                                             loop93:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                loop94:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc19_.col1);
                                                                                                   addr519:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(!_loc35_)
                                                                                                      {
                                                                                                         §§push(_loc20_.x);
                                                                                                         if(!_loc35_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc19_.col2);
                                                                                                               addr529:
                                                                                                               addr433:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(_loc36_)
                                                                                                                  {
                                                                                                                     §§push(_loc20_.y);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr476:
                                                                                                                        §§push(_loc20_.y);
                                                                                                                        if(!(_loc36_ || param2))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§push(§§pop() + (§§pop() + §§pop() * §§pop()));
                                                                                                                        if(!(_loc35_ && this))
                                                                                                                        {
                                                                                                                           addr495:
                                                                                                                           if(!(_loc36_ || this))
                                                                                                                           {
                                                                                                                              continue loop94;
                                                                                                                           }
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        if(_loc36_ || param1)
                                                                                                                        {
                                                                                                                           _loc16_ = §§pop();
                                                                                                                           loop104:
                                                                                                                           while(_loc36_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§<!j§);
                                                                                                                                 loop106:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc15_);
                                                                                                                                    addr393:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       addr394:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          addr395:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                             addr396:
                                                                                                                                             while(_loc36_)
                                                                                                                                             {
                                                                                                                                                do
                                                                                                                                                {
                                                                                                                                                   §§push(this.§<!j§);
                                                                                                                                                   continue loop106;
                                                                                                                                                }
                                                                                                                                                while(false);
                                                                                                                                                
                                                                                                                                                return;
                                                                                                                                             }
                                                                                                                                             continue loop104;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop93;
                                                                                                                        }
                                                                                                                        addr538:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc15_ = §§pop();
                                                                                                                           continue loop93;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               if(!(_loc36_ || param2))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(_loc20_.x);
                                                                                                               if(!(_loc35_ && param2))
                                                                                                               {
                                                                                                                  if(_loc36_ || param2)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc36_ || param1)
                                                                                                                     {
                                                                                                                        addr535:
                                                                                                                        §§push(_loc19_.col2);
                                                                                                                        if(!(_loc35_ && param2))
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(!_loc35_)
                                                                                                                           {
                                                                                                                              §§goto(addr476);
                                                                                                                           }
                                                                                                                           §§goto(addr486);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr529);
                                                                                                                        }
                                                                                                                        addr535:
                                                                                                                     }
                                                                                                                     §§goto(addr487);
                                                                                                                  }
                                                                                                                  §§goto(addr535);
                                                                                                               }
                                                                                                               §§goto(addr486);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr535);
                                                                                                      }
                                                                                                      §§goto(addr536);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr513);
                                                                                          addr312:
                                                                                       }
                                                                                       §§goto(addr314);
                                                                                    }
                                                                                    §§goto(addr312);
                                                                                 }
                                                                                 §§goto(addr314);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc36_)
                                                                              {
                                                                                 §§goto(addr314);
                                                                              }
                                                                              §§goto(addr313);
                                                                           }
                                                                        }
                                                                        §§goto(addr308);
                                                                     }
                                                                     §§goto(addr297);
                                                                  }
                                                               }
                                                               §§goto(addr302);
                                                            }
                                                            §§goto(addr297);
                                                         }
                                                         §§goto(addr242);
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                   §§goto(addr313);
                                                }
                                             }
                                             §§goto(addr275);
                                          }
                                          else
                                          {
                                             addr1219:
                                             _loc11_ = §§pop();
                                             _loc12_ = this.§9X§.§0!C§(param1.indexB[1]);
                                             _loc7_ = this.§!"6§.§0!C§(param1.indexA[0]);
                                             if(_loc36_)
                                             {
                                                §§push(this.m_localPoint);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(0.5);
                                                   if(!_loc35_)
                                                   {
                                                      §§push(_loc11_.x);
                                                      while(true)
                                                      {
                                                         §§push(_loc12_.x);
                                                         addr1327:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr1328:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                         }
                                                      }
                                                      addr1325:
                                                   }
                                                   addr1329:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             §§goto(addr1317);
                                          }
                                       }
                                       else
                                       {
                                          addr1859:
                                          _loc8_ = §§pop().§0!C§(param1.indexA[0]);
                                          _loc9_ = this.§!"6§.§0!C§(param1.indexA[1]);
                                          _loc11_ = this.§9X§.§0!C§(param1.indexB[0]);
                                          _loc12_ = this.§9X§.§0!C§(param1.indexB[1]);
                                          _loc23_ = b2Math.§2C§(param3,_loc7_);
                                          _loc24_ = b2Math.§?"1§(param3.R,b2Math.§0!1§(_loc9_,_loc8_));
                                          _loc25_ = b2Math.§2C§(param5,_loc10_);
                                          _loc26_ = b2Math.§?"1§(param5.R,b2Math.§0!1§(_loc12_,_loc11_));
                                          if(!(_loc35_ && param2))
                                          {
                                             §§push(_loc24_.x);
                                             if(!(_loc35_ && this))
                                             {
                                                §§push(_loc24_.x);
                                                if(_loc36_ || param2)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc35_)
                                                   {
                                                      §§push(_loc24_.y);
                                                      if(_loc36_)
                                                      {
                                                         §§push(_loc24_.y);
                                                         if(!(_loc35_ && param1))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc35_)
                                                            {
                                                               addr1964:
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc35_ && param2))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc36_)
                                                                  {
                                                                     _loc27_ = §§pop();
                                                                     if(!(_loc35_ && param2))
                                                                     {
                                                                        addr1983:
                                                                        §§push(_loc26_.x);
                                                                        if(!(_loc35_ && param1))
                                                                        {
                                                                           §§push(_loc26_.x);
                                                                           if(_loc36_)
                                                                           {
                                                                              addr2015:
                                                                              addr1996:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc36_)
                                                                              {
                                                                                 addr1999:
                                                                                 §§push(_loc26_.y);
                                                                                 if(_loc36_)
                                                                                 {
                                                                                    addr2005:
                                                                                    §§push(§§pop() * _loc26_.y);
                                                                                 }
                                                                              }
                                                                              _loc28_ = §§pop();
                                                                              _loc29_ = b2Math.§0!1§(_loc26_,_loc24_);
                                                                              if(_loc36_)
                                                                              {
                                                                                 §§push(_loc24_.x);
                                                                                 loop43:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc29_.x);
                                                                                    addr2421:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       addr2422:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc24_.y);
                                                                                          addr2424:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc29_.y);
                                                                                             addr2426:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr2427:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr2428:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr2429:
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
                                                                                    loop90:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc35_ && param2)
                                                                                       {
                                                                                          continue loop43;
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                       if(!_loc35_)
                                                                                       {
                                                                                          loop84:
                                                                                          while(!(_loc35_ && param3))
                                                                                          {
                                                                                             _loc34_ = §§pop();
                                                                                             loop85:
                                                                                             while(!_loc35_)
                                                                                             {
                                                                                                §§push(0);
                                                                                                loop86:
                                                                                                while(_loc36_ || this)
                                                                                                {
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      loop87:
                                                                                                      for(; !_loc35_; if(_loc35_ && param1)
                                                                                                      {
                                                                                                         continue;
                                                                                                      },if(false)
                                                                                                      {
                                                                                                         §§goto(addr2106);
                                                                                                      })
                                                                                                      {
                                                                                                         if(!_loc35_)
                                                                                                         {
                                                                                                            if(!(_loc35_ && param3))
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               loop88:
                                                                                                               while(_loc36_ || this)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop91:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc34_ = §§pop();
                                                                                                                     loop92:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc36_)
                                                                                                                        {
                                                                                                                           §§push(b2Math);
                                                                                                                           §§push(_loc32_);
                                                                                                                           if(_loc36_ || param3)
                                                                                                                           {
                                                                                                                              §§push(_loc30_);
                                                                                                                              if(!(_loc35_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(!_loc35_)
                                                                                                                                 {
                                                                                                                                    addr2046:
                                                                                                                                    §§push(_loc27_);
                                                                                                                                    if(_loc36_)
                                                                                                                                    {
                                                                                                                                       addr2050:
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       §§push(0);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().§<O§(§§pop(),§§pop(),1));
                                                                                                                                    if(!_loc35_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc36_ || param3))
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       if(!_loc35_)
                                                                                                                                       {
                                                                                                                                          addr2065:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc35_ && param3)
                                                                                                                                          {
                                                                                                                                             continue loop91;
                                                                                                                                          }
                                                                                                                                          if(!_loc36_)
                                                                                                                                          {
                                                                                                                                             continue loop88;
                                                                                                                                          }
                                                                                                                                          if(!_loc36_)
                                                                                                                                          {
                                                                                                                                             continue loop85;
                                                                                                                                          }
                                                                                                                                          if(!(_loc35_ && this))
                                                                                                                                          {
                                                                                                                                             if(!_loc35_)
                                                                                                                                             {
                                                                                                                                                if(_loc36_)
                                                                                                                                                {
                                                                                                                                                   if(_loc36_ || param1)
                                                                                                                                                   {
                                                                                                                                                      _loc21_ = §§pop();
                                                                                                                                                      if(_loc36_)
                                                                                                                                                      {
                                                                                                                                                         continue loop87;
                                                                                                                                                      }
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   loop71:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      loop72:
                                                                                                                                                      while(_loc36_ || param2)
                                                                                                                                                      {
                                                                                                                                                         _loc33_ = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            addr2303:
                                                                                                                                                            while(_loc36_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc21_ = §§pop();
                                                                                                                                                                  loop76:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc33_);
                                                                                                                                                                     addr2207:
                                                                                                                                                                     loop77:
                                                                                                                                                                     while(_loc36_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc36_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           loop78:
                                                                                                                                                                           while(!_loc35_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc36_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       while(_loc36_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(b2Math);
                                                                                                                                                                                          §§push(_loc32_);
                                                                                                                                                                                          if(!(_loc35_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc31_);
                                                                                                                                                                                             if(!(_loc35_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc36_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc30_);
                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * _loc28_);
                                                                                                                                                                                                      if(_loc36_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         if(_loc36_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc33_);
                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr2275:
                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2275);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop().§<O§(§§pop(),§§pop(),1));
                                                                                                                                                                                                   while(!_loc35_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      break loop91;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(_loc36_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc28_);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         break loop77;
                                                                                                                                                                                                         addr2143:
                                                                                                                                                                                                         if(!(_loc36_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop92;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2429);
                                                                                                                                                                                                   addr2278:
                                                                                                                                                                                                   addr2315:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2275);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop76;
                                                                                                                                                                                       addr2224:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2106:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr2376:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc32_);
                                                                                                                                                                                       if(_loc36_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc21_);
                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc36_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop78;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!(_loc36_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop91;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc31_);
                                                                                                                                                                                             if(!_loc36_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop84;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc36_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!_loc36_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop85;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc36_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop72;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc28_);
                                                                                                                                                                                                if(_loc35_ && param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop84;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2143);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr2278);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop91;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc36_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             break loop88;
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       break loop88;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc29_.x);
                                                                                                                                                                                       if(_loc36_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc35_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc26_.y);
                                                                                                                                                                                                addr2406:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc29_.y);
                                                                                                                                                                                                   addr2408:
                                                                                                                                                                                                   while(_loc36_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      break loop84;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2426);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr2404:
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       break loop84;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2427);
                                                                                                                                                                                    addr2387:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2424);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2406);
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop71;
                                                                                                                                                                           }
                                                                                                                                                                           addr2338:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2404);
                                                                                                                                                                     }
                                                                                                                                                                     addr2373:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc32_);
                                                                                                                                                                        if(_loc36_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc35_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc32_);
                                                                                                                                                                              if(!_loc36_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr2421);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2338);
                                                                                                                                                                     }
                                                                                                                                                                     while(_loc36_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr2376);
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2408);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            loop58:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc31_ = §§pop();
                                                                                                                                                               addr2414:
                                                                                                                                                               addr2430:
                                                                                                                                                               while(_loc36_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc24_.x);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc35_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc26_.x);
                                                                                                                                                                        if(_loc36_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc24_.y);
                                                                                                                                                                              break loop86;
                                                                                                                                                                           }
                                                                                                                                                                           addr2369:
                                                                                                                                                                        }
                                                                                                                                                                        break loop86;
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                     addr2285:
                                                                                                                                                                     if(_loc36_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        _loc21_ = §§pop();
                                                                                                                                                                        break loop87;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop58;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr2387);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            break loop87;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2422);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr2311);
                                                                                                                                             }
                                                                                                                                             break loop91;
                                                                                                                                          }
                                                                                                                                          §§goto(addr2151);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2207);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2065);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr2050);
                                                                                                                           }
                                                                                                                           §§goto(addr2046);
                                                                                                                        }
                                                                                                                        §§goto(addr2414);
                                                                                                                     }
                                                                                                                     continue loop90;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc35_)
                                                                                                                     {
                                                                                                                        if(_loc36_)
                                                                                                                        {
                                                                                                                           §§goto(addr2285);
                                                                                                                        }
                                                                                                                        §§goto(addr2369);
                                                                                                                     }
                                                                                                                     §§goto(addr2303);
                                                                                                                  }
                                                                                                                  §§goto(addr2352);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc32_ = §§pop();
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr2315);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr2224);
                                                                                                      }
                                                                                                      while(!(_loc35_ && this))
                                                                                                      {
                                                                                                         §§goto(addr2106);
                                                                                                      }
                                                                                                      §§goto(addr2348);
                                                                                                   }
                                                                                                   §§push(_loc7_ = new b2Vec2());
                                                                                                   §§push(_loc8_.x);
                                                                                                   if(_loc36_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc21_);
                                                                                                      if(_loc36_ || param1)
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
                                                                                                      if(!_loc35_)
                                                                                                      {
                                                                                                         §§push(_loc21_);
                                                                                                         if(_loc36_ || param3)
                                                                                                         {
                                                                                                            §§push(_loc9_.y);
                                                                                                            if(!(_loc35_ && param1))
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
                                                                                                   if(!(_loc35_ && this))
                                                                                                   {
                                                                                                      §§push(_loc21_);
                                                                                                      if(_loc36_)
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
                                                                                                   if(_loc36_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                      §§push(_loc11_.y);
                                                                                                      if(!_loc35_)
                                                                                                      {
                                                                                                         §§push(_loc21_);
                                                                                                         if(!(_loc35_ && this))
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
                                                                                                   }
                                                                                                   addr2653:
                                                                                                   §§push(_loc21_ == 0);
                                                                                                   if(_loc36_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         addr2623:
                                                                                                         §§pop();
                                                                                                         addr2624:
                                                                                                         §§push(_loc21_);
                                                                                                         if(_loc36_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop() == 1);
                                                                                                            if(_loc36_ || param1)
                                                                                                            {
                                                                                                               addr2600:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr2602:
                                                                                                                  if(_loc36_ || param2)
                                                                                                                  {
                                                                                                                     this.§<";§ = §#[§;
                                                                                                                     if(_loc36_)
                                                                                                                     {
                                                                                                                        this.§<!j§ = b2Math.§8E§(b2Math.§0!1§(_loc12_,_loc11_),1);
                                                                                                                        addr2574:
                                                                                                                        if(_loc36_ || param1)
                                                                                                                        {
                                                                                                                           addr2555:
                                                                                                                           §§push(this.§<!j§);
                                                                                                                           if(_loc36_)
                                                                                                                           {
                                                                                                                              §§pop().Normalize();
                                                                                                                              addr2561:
                                                                                                                              if(!_loc35_)
                                                                                                                              {
                                                                                                                                 this.m_localPoint = _loc10_;
                                                                                                                                 if(!(_loc35_ && param2))
                                                                                                                                 {
                                                                                                                                    if(_loc36_)
                                                                                                                                    {
                                                                                                                                       if(!_loc35_)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr2555);
                                                                                                                                          }
                                                                                                                                          §§push(this.§<!j§);
                                                                                                                                          if(_loc36_)
                                                                                                                                          {
                                                                                                                                             addr2658:
                                                                                                                                             _loc20_ = §§pop();
                                                                                                                                             §§push((_loc19_ = param5.R).col1);
                                                                                                                                             if(_loc36_ || param3)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(_loc36_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc20_.x);
                                                                                                                                                   if(_loc36_ || param2)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc36_)
                                                                                                                                                      {
                                                                                                                                                         addr2693:
                                                                                                                                                         §§push(_loc19_.col2);
                                                                                                                                                         if(_loc36_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            if(_loc36_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc20_.y);
                                                                                                                                                               if(_loc36_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!(_loc35_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr2712:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc36_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        addr2720:
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc17_ = §§pop();
                                                                                                                                                                           if(!(_loc35_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              addr2733:
                                                                                                                                                                              §§push(_loc19_.col1.y);
                                                                                                                                                                              if(_loc36_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr2736:
                                                                                                                                                                                 §§push(_loc20_.x);
                                                                                                                                                                                 if(_loc36_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr2745:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc36_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2753:
                                                                                                                                                                                       §§push(_loc19_.col2.y);
                                                                                                                                                                                       if(_loc36_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr2766:
                                                                                                                                                                                          addr2765:
                                                                                                                                                                                          addr2763:
                                                                                                                                                                                          §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                                                                                                                          if(_loc36_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr2769:
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                                                                          _loc20_ = this.m_localPoint;
                                                                                                                                                                                          _loc19_ = param5.R;
                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param5.position);
                                                                                                                                                                                             if(!(_loc35_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc19_.col1);
                                                                                                                                                                                                   if(!_loc35_)
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
                                                                                                                                                                                                                  if(_loc36_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc20_.y);
                                                                                                                                                                                                                     if(_loc36_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc36_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(!(_loc35_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              if(!(_loc35_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 if(!(_loc35_ && param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                                                                                                                    if(!(_loc35_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr2870:
                                                                                                                                                                                                                                       §§push(param5.position.y);
                                                                                                                                                                                                                                       if(!(_loc35_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr2880:
                                                                                                                                                                                                                                          §§push(_loc19_.col1.y);
                                                                                                                                                                                                                                          if(_loc36_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc20_.x);
                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr2892:
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(_loc36_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr2900:
                                                                                                                                                                                                                                                   §§push(_loc19_.col2.y);
                                                                                                                                                                                                                                                   if(_loc36_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr2913:
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr2913);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2913);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr2918:
                                                                                                                                                                                                                                          _loc16_ = §§pop();
                                                                                                                                                                                                                                          _loc20_ = _loc7_;
                                                                                                                                                                                                                                          _loc19_ = param3.R;
                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr3160:
                                                                                                                                                                                                                                             addr3137:
                                                                                                                                                                                                                                             addr3140:
                                                                                                                                                                                                                                             addr3159:
                                                                                                                                                                                                                                             addr3161:
                                                                                                                                                                                                                                             addr3142:
                                                                                                                                                                                                                                             addr3139:
                                                                                                                                                                                                                                             addr3136:
                                                                                                                                                                                                                                             §§push(param3.position.x);
                                                                                                                                                                                                                                             §§push(_loc19_.col1.x * _loc20_.x);
                                                                                                                                                                                                                                             if(!(_loc35_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr3158:
                                                                                                                                                                                                                                                §§push(_loc19_.col2.x);
                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr3157:
                                                                                                                                                                                                                                                   §§push(§§pop() * _loc20_.y);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             _loc13_ = Number(§§pop() + §§pop());
                                                                                                                                                                                                                                             addr3162:
                                                                                                                                                                                                                                             §§push(param3.position);
                                                                                                                                                                                                                                             if(!(_loc35_ && param3))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                                                                if(!(_loc35_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc19_.col1);
                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr3102:
                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                      §§push(_loc20_.x);
                                                                                                                                                                                                                                                      if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr3110:
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         §§push(_loc19_.col2);
                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr3115:
                                                                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                                                                            §§push(_loc20_.y);
                                                                                                                                                                                                                                                            if(_loc36_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr3120:
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(_loc36_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr3124:
                                                                                                                                                                                                                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                  if(_loc36_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr3132:
                                                                                                                                                                                                                                                                     _loc14_ = §§pop();
                                                                                                                                                                                                                                                                     addr2983:
                                                                                                                                                                                                                                                                     addr3133:
                                                                                                                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                                                                                                                     if(_loc36_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr2995:
                                                                                                                                                                                                                                                                           §§push(§§pop() - _loc15_);
                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr2999:
                                                                                                                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                                                                                                                              if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                                                                             if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc36_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr3047:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                   if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr3055:
                                                                                                                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc36_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr3060:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               if(_loc36_ || param3)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr3071:
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                        addr3076:
                                                                                                                                                                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc36_ || param2)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc36_ || param3)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc36_ || param3)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr2978:
                                                                                                                                                                                                                                                                                                                                                         this.§<!j§.§ o§();
                                                                                                                                                                                                                                                                                                                                                         addr2981:
                                                                                                                                                                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr2983);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3690);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr3162);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr3133);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr3076);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr2981);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr2995);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr2999);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr3047);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr3060);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr3160);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr3071);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr3137);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr3124);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr3071);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr3110);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr3115);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr3120);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr3140);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr3102);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr3055);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr3060);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr3071);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr3159);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr3102);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr3124);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr3071);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr3132);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr3071);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr3161);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr3158);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr3157);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr3158);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr3142);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr3139);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr3132);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr3136);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2978);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr2918);
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2900);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr2892);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2913);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2900);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2913);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2900);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2880);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2870);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2880);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2766);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2769);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2766);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2753);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2766);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2736);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2745);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2765);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2763);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2753);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2720);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2712);
                                                                                                                                                }
                                                                                                                                                §§goto(addr2693);
                                                                                                                                             }
                                                                                                                                             §§goto(addr2733);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr3190:
                                                                                                                                             _loc20_ = §§pop();
                                                                                                                                             §§push((_loc19_ = param3.R).col1);
                                                                                                                                             if(!_loc35_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(!(_loc35_ && param3))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc20_.x);
                                                                                                                                                   if(_loc36_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc36_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc19_.col2);
                                                                                                                                                         if(_loc36_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            if(_loc36_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc20_.y);
                                                                                                                                                               if(_loc36_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!(_loc35_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr3239:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc36_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        if(!(_loc35_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           _loc17_ = §§pop();
                                                                                                                                                                           if(_loc36_ || param3)
                                                                                                                                                                           {
                                                                                                                                                                              addr3260:
                                                                                                                                                                              §§push(_loc19_.col1.y);
                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr3263:
                                                                                                                                                                                 §§push(_loc20_.x);
                                                                                                                                                                                 if(_loc36_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc36_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr3270:
                                                                                                                                                                                       §§push(_loc19_.col2.y);
                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr3278:
                                                                                                                                                                                          §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                                                                                                                          if(!(_loc35_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr3287:
                                                                                                                                                                                             _loc18_ = Number(§§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr3287);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr3278);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr3287);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr3278);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr3287);
                                                                                                                                                                           }
                                                                                                                                                                           _loc20_ = this.m_localPoint;
                                                                                                                                                                           _loc19_ = param3.R;
                                                                                                                                                                           if(_loc36_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param3.position);
                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 if(_loc36_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc19_.col1);
                                                                                                                                                                                    if(!(_loc35_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       if(_loc36_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc20_.x);
                                                                                                                                                                                          if(_loc36_ || param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc19_.col2);
                                                                                                                                                                                                if(_loc36_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                   if(!(_loc35_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc20_.y);
                                                                                                                                                                                                      if(!(_loc35_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(!(_loc35_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr3373:
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(_loc36_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr3381:
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!(_loc35_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr3389:
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  if(!(_loc35_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc13_ = §§pop();
                                                                                                                                                                                                                     if(_loc36_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr3407:
                                                                                                                                                                                                                        §§push(param3.position.y);
                                                                                                                                                                                                                        if(!(_loc35_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr3439:
                                                                                                                                                                                                                           §§push(_loc19_.col1.y);
                                                                                                                                                                                                                           if(!(_loc35_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr3425:
                                                                                                                                                                                                                              §§push(_loc20_.x);
                                                                                                                                                                                                                              if(_loc36_ || param3)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(!_loc36_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr3451:
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(_loc36_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr3455:
                                                                                                                                                                                                                                    _loc14_ = §§pop();
                                                                                                                                                                                                                                    _loc20_ = _loc10_;
                                                                                                                                                                                                                                    _loc19_ = param5.R;
                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr3688:
                                                                                                                                                                                                                                       _loc15_ = Number(param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y));
                                                                                                                                                                                                                                       addr3689:
                                                                                                                                                                                                                                       addr3679:
                                                                                                                                                                                                                                       addr3686:
                                                                                                                                                                                                                                       addr3676:
                                                                                                                                                                                                                                       addr3673:
                                                                                                                                                                                                                                       addr3682:
                                                                                                                                                                                                                                       addr3685:
                                                                                                                                                                                                                                       addr3684:
                                                                                                                                                                                                                                       addr3678:
                                                                                                                                                                                                                                       addr3681:
                                                                                                                                                                                                                                       addr3675:
                                                                                                                                                                                                                                       addr3687:
                                                                                                                                                                                                                                       §§push(param5.position);
                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                                                                          if(!(_loc35_ && param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc19_.col1);
                                                                                                                                                                                                                                                if(_loc36_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr3631:
                                                                                                                                                                                                                                                   §§push(§§pop().y * _loc20_.x);
                                                                                                                                                                                                                                                   §§push(_loc19_.col2);
                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr3637:
                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc20_.y);
                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr3644:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(_loc36_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr3649:
                                                                                                                                                                                                                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                  if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr3668:
                                                                                                                                                                                                                                                                     _loc16_ = Number(§§pop());
                                                                                                                                                                                                                                                                     addr3521:
                                                                                                                                                                                                                                                                     addr3669:
                                                                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                                                                                                                     if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                        if(_loc36_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc36_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc36_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                                                                                                                if(_loc36_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                                                                                                                                                                         if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr3591:
                                                                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc36_ || param3)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr3601:
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                           if(_loc36_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr3607:
                                                                                                                                                                                                                                                                                                                              _loc22_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                              addr3608:
                                                                                                                                                                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                              if(!(_loc35_ && this))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                                                                                                                    if(_loc36_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc36_ || param1)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         this.§<!j§.§ o§();
                                                                                                                                                                                                                                                                                                                                                         addr3519:
                                                                                                                                                                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr3521);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3690);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr3689);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr3669);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr3608);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr3519);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr3690);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr3679);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr3601);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr3521);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr3607);
                                                                                                                                                                                                                                                                                                                              addr3606:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr3607);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr3686);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr3631);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr3644);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr3601);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr3637);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr3591);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr3631);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr3649);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr3601);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr3688);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr3668);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr3607);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr3676);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr3631);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr3601);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr3649);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr3606);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr3591);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr3673);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr3682);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr3685);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr3684);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr3678);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr3681);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr3675);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr3687);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr3668);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr3672:
                                                                                                                                                                                                                                       §§goto(addr3672);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr3668);
                                                                                                                                                                                                                                    addr3454:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr3455);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr3450:
                                                                                                                                                                                                                              §§goto(addr3451);
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(_loc19_.col2.y);
                                                                                                                                                                                                                           if(!(_loc35_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr3447:
                                                                                                                                                                                                                              §§goto(addr3450);
                                                                                                                                                                                                                              §§push(§§pop() * _loc20_.y);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr3450);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr3455);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr3454);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr3425);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr3447);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr3373);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr3439);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr3381);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr3425);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr3451);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr3439);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr3389);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr3407);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr3455);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr3263);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr3270);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr3278);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr3270);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr3287);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr3239);
                                                                                                                                                }
                                                                                                                                                §§goto(addr3287);
                                                                                                                                             }
                                                                                                                                             §§goto(addr3260);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr2653);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2561);
                                                                                                                                 }
                                                                                                                                 addr3174:
                                                                                                                                 this.§<!j§ = b2Math.§8E§(b2Math.§0!1§(_loc9_,_loc8_),1);
                                                                                                                                 if(_loc36_)
                                                                                                                                 {
                                                                                                                                    addr3185:
                                                                                                                                    this.m_localPoint = _loc7_;
                                                                                                                                 }
                                                                                                                                 §§goto(addr3190);
                                                                                                                                 §§push(this.§<!j§);
                                                                                                                              }
                                                                                                                              §§goto(addr2574);
                                                                                                                           }
                                                                                                                           §§goto(addr2658);
                                                                                                                        }
                                                                                                                        §§goto(addr2602);
                                                                                                                     }
                                                                                                                     §§goto(addr3185);
                                                                                                                  }
                                                                                                                  §§goto(addr2624);
                                                                                                               }
                                                                                                               this.§<";§ = §;1§;
                                                                                                               if(_loc36_ || param1)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr3174);
                                                                                                            }
                                                                                                            §§goto(addr2623);
                                                                                                         }
                                                                                                         §§goto(addr2653);
                                                                                                      }
                                                                                                      §§goto(addr2600);
                                                                                                   }
                                                                                                   §§goto(addr2623);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr2373);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr2428);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr2412);
                                                                                             §§goto(addr2162);
                                                                                          }
                                                                                          addr2162:
                                                                                       }
                                                                                       §§goto(addr2173);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr2430);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc35_ && param1))
                                                                           {
                                                                              addr2014:
                                                                              §§goto(addr2015);
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           §§goto(addr2015);
                                                                        }
                                                                        §§goto(addr2014);
                                                                     }
                                                                     §§goto(addr2015);
                                                                  }
                                                               }
                                                               §§goto(addr2015);
                                                            }
                                                            §§goto(addr1996);
                                                         }
                                                         §§goto(addr2005);
                                                      }
                                                      §§goto(addr2015);
                                                   }
                                                   §§goto(addr2014);
                                                }
                                                §§goto(addr1964);
                                             }
                                             §§goto(addr1999);
                                          }
                                          §§goto(addr1983);
                                       }
                                       §§goto(addr3690);
                                    }
                                    else
                                    {
                                       addr1207:
                                       this.§<";§ = §#[§;
                                       §§push(this.§9X§.§0!C§(param1.indexB[0]));
                                       if(!_loc35_)
                                       {
                                          §§goto(addr1219);
                                       }
                                       else
                                       {
                                          §§goto(addr1859);
                                       }
                                    }
                                    §§goto(addr1859);
                                 }
                                 §§goto(addr1207);
                              }
                              else if(param1.indexB[0] == param1.indexB[1])
                              {
                                 if(_loc36_)
                                 {
                                    addr552:
                                    this.§<";§ = §;1§;
                                    if(_loc36_)
                                    {
                                       addr557:
                                       §§push(this.§!"6§);
                                       if(_loc36_ || param1)
                                       {
                                          §§push(§§pop().§0!C§(param1.indexA[0]));
                                          if(_loc36_)
                                          {
                                             _loc8_ = §§pop();
                                             _loc9_ = this.§!"6§.§0!C§(param1.indexA[1]);
                                             _loc10_ = this.§9X§.§0!C§(param1.indexB[0]);
                                             if(!_loc35_)
                                             {
                                                §§push(this.m_localPoint);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(0.5);
                                                   addr702:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_.x);
                                                      addr704:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_.x);
                                                         addr706:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr707:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr708:
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  continue loop10;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr698);
                                          }
                                          else
                                          {
                                             §§goto(addr1859);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr1859);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr1207);
                                    }
                                    §§goto(addr1859);
                                 }
                                 §§goto(addr557);
                              }
                              else
                              {
                                 if(param1.indexA[0] == param1.indexA[0])
                                 {
                                    if(_loc35_ && param1)
                                    {
                                    }
                                    §§goto(addr1207);
                                 }
                                 else
                                 {
                                    §§goto(addr1859);
                                    §§push(this.§!"6§);
                                 }
                                 §§goto(addr1859);
                              }
                              §§goto(addr1859);
                           }
                           §§goto(addr552);
                        }
                     }
                  }
               }
               §§goto(addr138);
            }
            §§goto(addr150);
         }
         §§goto(addr98);
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
         §§push(this.§<";§);
         if(_loc12_ || param1)
         {
            var _loc11_:* = §§pop();
            if(_loc12_)
            {
               §§push(§0!j§);
               if(_loc12_ || _loc3_)
               {
                  §§push(_loc11_);
                  if(_loc12_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc13_)
                        {
                           §§push(0);
                           if(_loc13_ && param2)
                           {
                              addr471:
                           }
                        }
                        else
                        {
                           addr477:
                           §§push(2);
                           if(_loc12_ || param1)
                           {
                              addr485:
                           }
                        }
                        addr490:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = b2Math.§%o§(param1.R,this.§<!j§);
                              _loc4_ = b2Math.§%o§(param2.R,this.§<!j§.§2!R§());
                              _loc5_ = this.§!"6§.§#@§(_loc3_);
                              _loc6_ = this.§9X§.§#@§(_loc4_);
                              _loc7_ = b2Math.§2C§(param1,_loc5_);
                              §§push((_loc8_ = b2Math.§2C§(param2,_loc6_)).x);
                              if(!_loc13_)
                              {
                                 §§push(_loc7_.x);
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       §§push(this.§<!j§.x);
                                       if(!(_loc13_ && param2))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc12_ || this)
                                          {
                                             §§push(_loc8_.y);
                                             if(!(_loc13_ && param2))
                                             {
                                                §§push(_loc7_.y);
                                                if(!(_loc13_ && param2))
                                                {
                                                   §§goto(addr160);
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(_loc13_ && this)
                                                {
                                                }
                                                §§goto(addr160);
                                             }
                                          }
                                          addr151:
                                          §§push(Number(§§pop()));
                                          if(!(_loc13_ && param2))
                                          {
                                             addr160:
                                             §§push(§§pop() - §§pop());
                                             if(_loc12_)
                                             {
                                                §§push(this.§<!j§.y);
                                             }
                                             _loc9_ = §§pop();
                                             return §§pop();
                                             §§push(§§pop());
                                          }
                                          §§goto(addr160);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc12_)
                                       {
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr151);
                                 }
                              }
                              §§goto(addr160);
                           case 1:
                              _loc10_ = b2Math.§?"1§(param1.R,this.§<!j§);
                              _loc7_ = b2Math.§2C§(param1,this.m_localPoint);
                              _loc4_ = b2Math.§%o§(param2.R,_loc10_.§2!R§());
                              _loc6_ = this.§9X§.§#@§(_loc4_);
                              §§push((_loc8_ = b2Math.§2C§(param2,_loc6_)).x);
                              if(!_loc13_)
                              {
                                 §§push(_loc7_.x);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       §§push(_loc10_.x);
                                       if(_loc12_ || this)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc13_)
                                          {
                                             addr226:
                                             §§push(_loc8_.y);
                                             if(!_loc13_)
                                             {
                                                §§push(_loc7_.y);
                                                if(!_loc13_)
                                                {
                                                   addr257:
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc13_ && _loc3_))
                                                   {
                                                      addr252:
                                                      §§push(_loc10_.y);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc12_)
                                                   {
                                                      addr260:
                                                      §§push(Number(§§pop()));
                                                      if(_loc13_ && this)
                                                      {
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   addr270:
                                                   return §§pop();
                                                   §§push(_loc9_ = §§pop());
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(_loc13_)
                                                {
                                                }
                                                §§goto(addr257);
                                             }
                                             §§goto(addr252);
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr257);
                                    }
                                    §§goto(addr260);
                                 }
                                 §§goto(addr257);
                              }
                              §§goto(addr226);
                           case 2:
                              _loc10_ = b2Math.§?"1§(param2.R,this.§<!j§);
                              _loc8_ = b2Math.§2C§(param2,this.m_localPoint);
                              _loc3_ = b2Math.§%o§(param1.R,_loc10_.§2!R§());
                              _loc5_ = this.§!"6§.§#@§(_loc3_);
                              §§push((_loc7_ = b2Math.§2C§(param1,_loc5_)).x);
                              if(!_loc13_)
                              {
                                 §§push(_loc8_.x);
                                 if(!(_loc13_ && this))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc12_)
                                    {
                                       §§push(_loc10_.x);
                                       if(_loc12_ || _loc3_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc13_ && this))
                                          {
                                             §§push(_loc7_.y);
                                             if(!(_loc13_ && param2))
                                             {
                                                §§push(_loc8_.y);
                                                if(_loc12_ || param2)
                                                {
                                                   addr388:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc12_)
                                                   {
                                                      addr361:
                                                      §§push(_loc10_.y);
                                                   }
                                                   _loc9_ = §§pop();
                                                   if(_loc13_ && param2)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr396);
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(_loc12_ || param2)
                                                {
                                                   addr371:
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc13_ && param1))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc13_ && this)
                                                      {
                                                      }
                                                      §§goto(addr396);
                                                   }
                                                   §§push(§§pop());
                                                }
                                             }
                                             §§goto(addr388);
                                          }
                                          break;
                                       }
                                       §§goto(addr361);
                                    }
                                    addr396:
                                    return §§pop();
                                 }
                                 §§goto(addr371);
                              }
                              break;
                           default:
                              b2Settings.b2Assert(false);
                        }
                        return 0;
                        addr490:
                     }
                     else
                     {
                        §§push(§;1§);
                        if(!(_loc13_ && this))
                        {
                           §§push(_loc11_);
                           if(!(_loc13_ && _loc3_))
                           {
                              addr465:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc12_)
                                 {
                                    addr468:
                                    §§push(1);
                                    if(_loc12_)
                                    {
                                       §§goto(addr471);
                                    }
                                    else
                                    {
                                       §§goto(addr485);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr477);
                                 }
                                 §§goto(addr490);
                              }
                              else
                              {
                                 §§push(§#[§);
                                 if(_loc12_)
                                 {
                                    §§push(_loc11_);
                                 }
                                 §§goto(addr485);
                              }
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr477);
                           }
                           else
                           {
                              §§push(3);
                           }
                           §§goto(addr490);
                        }
                     }
                     §§goto(addr471);
                  }
                  §§goto(addr465);
               }
               §§goto(addr485);
            }
            §§goto(addr468);
         }
         §§goto(addr490);
      }
   }
}
