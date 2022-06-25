package §8w§
{
   import §3!m§.b2Settings;
   import §;%§.b2Mat22;
   import §;%§.b2Math;
   import §;%§.b2Transform;
   import §;%§.b2Vec2;
   
   class b2SeparationFunction
   {
      
      public static const §+!j§:int = 1;
      
      public static const §>!r§:int = 2;
      
      public static const §9!D§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §+!j§ = 1;
            while(true)
            {
               §>!r§ = 2;
               while(_loc2_ || _loc2_)
               {
                  §9!D§ = 4;
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
      
      public var §#6§:b2DistanceProxy;
      
      public var §;!=§:b2DistanceProxy;
      
      public var §"_§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §<!^§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.m_localPoint = new b2Vec2();
            do
            {
               this.§<!^§ = new b2Vec2();
               do
               {
                  super();
               }
               while(_loc2_);
               
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function §'K§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc35_:Boolean = true;
         var _loc36_:Boolean = false;
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
         var _loc18_:Number = NaN;
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
         if(_loc35_ || param3)
         {
            this.§#6§ = param2;
            if(_loc35_ || this)
            {
               addr102:
               this.§;!=§ = param4;
            }
            var _loc6_:int = param1.count;
            if(_loc35_)
            {
               §§push(b2Settings);
               if(!_loc36_)
               {
                  §§push(0);
                  if(_loc35_)
                  {
                     §§push(_loc6_);
                     if(_loc35_)
                     {
                        §§push(§§pop() < §§pop());
                        if(!(_loc36_ && param3))
                        {
                           if(§§pop())
                           {
                              if(_loc35_)
                              {
                                 §§pop();
                                 addr135:
                                 §§push(_loc6_ < 3);
                              }
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        if(!(_loc36_ && param1))
                        {
                           addr144:
                           if(_loc6_ == 1)
                           {
                              if(_loc35_ || param3)
                              {
                                 this.§"_§ = §+!j§;
                                 if(!_loc36_)
                                 {
                                    §§push(this.§#6§);
                                    if(_loc35_ || param1)
                                    {
                                       §§push(§§pop().§1!9§(param1.indexA[0]));
                                       if(_loc35_)
                                       {
                                          _loc7_ = §§pop();
                                          _loc10_ = this.§;!=§.§1!9§(param1.indexB[0]);
                                          _loc20_ = _loc7_;
                                          _loc19_ = param3.R;
                                          if(!(_loc36_ && param2))
                                          {
                                             §§push(param3.position);
                                             if(_loc35_ || this)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc35_)
                                                {
                                                   §§push(_loc19_.col1);
                                                   if(_loc35_ || this)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc36_ && param2))
                                                      {
                                                         §§push(_loc20_.x);
                                                         if(_loc35_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc35_)
                                                            {
                                                               §§push(_loc19_.col2);
                                                               if(!(_loc36_ && param3))
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc36_)
                                                                  {
                                                                     §§push(_loc20_.y);
                                                                     if(!_loc36_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc36_ && param2))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc35_ || param1)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc35_ || param2)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc35_ || param2)
                                                                                 {
                                                                                    _loc13_ = §§pop();
                                                                                    if(!_loc36_)
                                                                                    {
                                                                                       addr289:
                                                                                       §§push(param3.position.y);
                                                                                       if(_loc35_ || param2)
                                                                                       {
                                                                                          addr297:
                                                                                          §§push(_loc19_.col1.y);
                                                                                          if(!(_loc36_ && param1))
                                                                                          {
                                                                                             §§push(_loc20_.x);
                                                                                             if(!(_loc36_ && param2))
                                                                                             {
                                                                                                addr316:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc35_ || param3)
                                                                                                {
                                                                                                }
                                                                                                addr338:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc36_ && param1))
                                                                                                {
                                                                                                   addr347:
                                                                                                   _loc14_ = §§pop();
                                                                                                   _loc20_ = _loc10_;
                                                                                                   _loc19_ = param5.R;
                                                                                                   if(_loc35_ || param3)
                                                                                                   {
                                                                                                      §§push(param5.position);
                                                                                                      loop92:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(_loc35_)
                                                                                                         {
                                                                                                            §§push(_loc19_.col1);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(!(_loc36_ && param3))
                                                                                                               {
                                                                                                                  §§push(_loc20_.x);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     addr556:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc19_.col2);
                                                                                                                        addr558:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           addr559:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc20_.y);
                                                                                                                              addr561:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 addr562:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr555:
                                                                                                               }
                                                                                                               addr563:
                                                                                                               addr453:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc35_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(_loc19_.col1);
                                                                                                               if(_loc36_ && this)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!(_loc36_ && param1))
                                                                                                               {
                                                                                                                  if(!(_loc36_ && param1))
                                                                                                                  {
                                                                                                                     if(!(_loc36_ && param1))
                                                                                                                     {
                                                                                                                        §§push(_loc20_.x);
                                                                                                                        if(!_loc36_)
                                                                                                                        {
                                                                                                                           if(!_loc36_)
                                                                                                                           {
                                                                                                                              if(_loc35_)
                                                                                                                              {
                                                                                                                                 if(_loc35_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc35_ || param3)
                                                                                                                                    {
                                                                                                                                       addr502:
                                                                                                                                       §§push(_loc19_.col2);
                                                                                                                                       if(!(_loc36_ && param2))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          if(_loc35_ || param2)
                                                                                                                                          {
                                                                                                                                             §§push(_loc20_.y);
                                                                                                                                             if(!_loc36_)
                                                                                                                                             {
                                                                                                                                                addr524:
                                                                                                                                                §§push(§§pop() + (§§pop() + §§pop() * §§pop()));
                                                                                                                                                if(_loc35_)
                                                                                                                                                {
                                                                                                                                                   addr528:
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                if(!(_loc36_ && param2))
                                                                                                                                                {
                                                                                                                                                   _loc16_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§<!^§);
                                                                                                                                                      loop104:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         addr424:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                            addr425:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               addr426:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  addr427:
                                                                                                                                                                  while(_loc35_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§<!^§);
                                                                                                                                                                        continue loop104;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop92;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      if(_loc36_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      §§push(this.§<!^§);
                                                                                                                                                      if(!(_loc36_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr373);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr386);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr561);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                continue loop92;
                                                                                                                                             }
                                                                                                                                             addr567:
                                                                                                                                          }
                                                                                                                                          §§goto(addr524);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr558);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr524);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr555);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr559);
                                                                                                                           }
                                                                                                                           §§goto(addr562);
                                                                                                                        }
                                                                                                                        §§goto(addr524);
                                                                                                                     }
                                                                                                                     §§goto(addr556);
                                                                                                                  }
                                                                                                                  §§goto(addr563);
                                                                                                               }
                                                                                                               §§goto(addr502);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr567);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr381);
                                                                                                }
                                                                                                §§goto(addr347);
                                                                                             }
                                                                                             addr334:
                                                                                             §§goto(addr338);
                                                                                             §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                          }
                                                                                          §§push(_loc19_.col2.y);
                                                                                          if(_loc36_ && this)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr334);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                 }
                                                                                 §§goto(addr297);
                                                                              }
                                                                              §§goto(addr347);
                                                                           }
                                                                           §§goto(addr338);
                                                                        }
                                                                        §§goto(addr316);
                                                                     }
                                                                  }
                                                                  §§goto(addr334);
                                                               }
                                                               §§goto(addr297);
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                         §§goto(addr334);
                                                      }
                                                      §§goto(addr316);
                                                   }
                                                   §§goto(addr297);
                                                }
                                                §§goto(addr347);
                                             }
                                          }
                                          §§goto(addr289);
                                       }
                                       else
                                       {
                                          addr1828:
                                          _loc8_ = §§pop();
                                          _loc9_ = this.§#6§.§1!9§(param1.indexA[1]);
                                          _loc11_ = this.§;!=§.§1!9§(param1.indexB[0]);
                                          _loc12_ = this.§;!=§.§1!9§(param1.indexB[1]);
                                          _loc23_ = b2Math.§#!<§(param3,_loc7_);
                                          _loc24_ = b2Math.§&!Q§(param3.R,b2Math.§9!<§(_loc9_,_loc8_));
                                          _loc25_ = b2Math.§#!<§(param5,_loc10_);
                                          _loc26_ = b2Math.§&!Q§(param5.R,b2Math.§9!<§(_loc12_,_loc11_));
                                          if(!_loc36_)
                                          {
                                             §§push(_loc24_.x);
                                             if(_loc35_ || param3)
                                             {
                                                §§push(_loc24_.x);
                                                if(!_loc36_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc35_)
                                                   {
                                                      addr1907:
                                                      §§push(_loc24_.y);
                                                      if(_loc35_ || param3)
                                                      {
                                                         §§push(_loc24_.y);
                                                         if(_loc35_ || param2)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc35_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc35_ || param2)
                                                               {
                                                                  addr1936:
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc35_ || this)
                                                                  {
                                                                     addr1944:
                                                                     _loc27_ = §§pop();
                                                                     if(_loc35_ || param3)
                                                                     {
                                                                        addr1952:
                                                                        §§push(_loc26_.x);
                                                                        if(!_loc36_)
                                                                        {
                                                                           §§push(_loc26_.x);
                                                                           if(_loc35_ || this)
                                                                           {
                                                                              addr1965:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc35_ || this)
                                                                              {
                                                                                 §§push(_loc26_.y);
                                                                                 if(!_loc36_)
                                                                                 {
                                                                                    addr1980:
                                                                                    addr1977:
                                                                                    addr1979:
                                                                                    §§push(§§pop() + §§pop() * _loc26_.y);
                                                                                    if(!_loc35_)
                                                                                    {
                                                                                    }
                                                                                    addr1984:
                                                                                    _loc28_ = §§pop();
                                                                                    _loc29_ = b2Math.§9!<§(_loc26_,_loc24_);
                                                                                    if(_loc35_ || param2)
                                                                                    {
                                                                                       §§push(_loc24_.x);
                                                                                       loop10:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc29_.x);
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             loop12:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc24_.y);
                                                                                                loop13:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc29_.y);
                                                                                                   loop14:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      loop15:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         loop16:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop17:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc30_ = §§pop();
                                                                                                               loop18:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc26_.x);
                                                                                                                  loop19:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc29_.x);
                                                                                                                     loop20:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc35_)
                                                                                                                        {
                                                                                                                           §§push(_loc26_.y);
                                                                                                                           loop21:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc29_.y);
                                                                                                                              addr2391:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 addr2392:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              loop50:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc35_ || param1))
                                                                                                                                 {
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 loop51:
                                                                                                                                 while(!_loc36_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop36:
                                                                                                                                    while(!_loc36_)
                                                                                                                                    {
                                                                                                                                       _loc33_ = §§pop();
                                                                                                                                       loop37:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          loop38:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc21_ = §§pop();
                                                                                                                                                loop40:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc36_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc35_ || param1))
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc33_);
                                                                                                                                                      loop41:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc35_ || param2)
                                                                                                                                                         {
                                                                                                                                                            continue loop19;
                                                                                                                                                         }
                                                                                                                                                         addr2294:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc28_);
                                                                                                                                                            if(!_loc36_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc36_ && param3)
                                                                                                                                                               {
                                                                                                                                                                  continue loop36;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc32_);
                                                                                                                                                            }
                                                                                                                                                            addr2306:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc35_)
                                                                                                                                                               {
                                                                                                                                                                  addr2308:
                                                                                                                                                                  §§push(_loc32_);
                                                                                                                                                                  if(_loc35_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     continue loop50;
                                                                                                                                                                  }
                                                                                                                                                                  addr2367:
                                                                                                                                                                  while(_loc35_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        break loop36;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2308);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop14;
                                                                                                                                                               }
                                                                                                                                                               continue loop11;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2391);
                                                                                                                                                            continue loop41;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop19;
                                                                                                                                                      addr2192:
                                                                                                                                                   }
                                                                                                                                                   addr2395:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc24_.x);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc26_.x);
                                                                                                                                                         if(_loc35_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            while(!(_loc36_ && param1))
                                                                                                                                                            {
                                                                                                                                                               continue loop10;
                                                                                                                                                            }
                                                                                                                                                            continue loop16;
                                                                                                                                                            addr2342:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2375);
                                                                                                                                                         addr2264:
                                                                                                                                                         if(!(_loc35_ || param3))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         _loc21_ = §§pop();
                                                                                                                                                         loop55:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            loop44:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc32_);
                                                                                                                                                               if(_loc35_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc36_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc35_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        if(!(_loc36_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                           {
                                                                                                                                                                              while(_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop44;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop13;
                                                                                                                                                                              addr2207:
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc36_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop50;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc36_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc31_);
                                                                                                                                                                              if(!_loc36_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(!(_loc36_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc28_);
                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2113:
                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc35_ || param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop20;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc36_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop51;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc36_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop17;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                if(!(_loc36_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr2139:
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(_loc35_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr2147:
                                                                                                                                                                                                      if(!(_loc35_ || this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(_loc35_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc26_.y);
                                                                                                                                                                                                            §§goto(addr2147);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop15;
                                                                                                                                                                                                         addr2358:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc36_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc34_ = §§pop();
                                                                                                                                                                                                         if(!_loc36_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr2164:
                                                                                                                                                                                                            if(!_loc36_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc36_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr2169:
                                                                                                                                                                                                                  if(§§pop() < 0)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop45:
                                                                                                                                                                                                                     while(!(_loc36_ && param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                        while(!_loc36_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           loop47:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc34_ = §§pop();
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc35_ || param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(!_loc36_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop37;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                                                                    addr2210:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(b2Math);
                                                                                                                                                                                                                                 §§push(_loc32_);
                                                                                                                                                                                                                                 if(_loc35_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc30_);
                                                                                                                                                                                                                                    if(!_loc36_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                       if(!(_loc36_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc27_);
                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr2024:
                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop().§]!M§(§§pop(),§§pop(),1));
                                                                                                                                                                                                                                          if(!_loc36_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop47;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr2393:
                                                                                                                                                                                                                                          addr2048:
                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc36_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc21_ = §§pop();
                                                                                                                                                                                                                                                if(!_loc36_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc36_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break loop44;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop44;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop55;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop45;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr2192);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             break loop51;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2024);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr2261:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 addr2262:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc36_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr2264);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr2342);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop36;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr2294);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr2378:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop12;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop38;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2181);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2392);
                                                                                                                                                                                                      §§goto(addr2367);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2169);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2178);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2139);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2375);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2306);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2169);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2113);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2139);
                                                                                                                                                                           §§goto(addr2210);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2113);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc32_ = §§pop();
                                                                                                                                                                        §§goto(addr2378);
                                                                                                                                                                     }
                                                                                                                                                                     addr2377:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2262);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2164);
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc7_ = new b2Vec2());
                                                                                                                                                            §§push(_loc8_.x);
                                                                                                                                                            if(!_loc36_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                               if(!(_loc36_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc9_.x);
                                                                                                                                                                  if(!_loc36_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - _loc8_.x);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            if(_loc35_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               §§push(_loc8_.y);
                                                                                                                                                               if(!(_loc36_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                  if(!(_loc36_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc9_.y);
                                                                                                                                                                     if(!_loc36_)
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
                                                                                                                                                            if(_loc35_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                               if(!_loc36_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc12_.x);
                                                                                                                                                                  if(_loc35_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - _loc11_.x);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            if(!_loc36_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               §§push(_loc11_.y);
                                                                                                                                                               if(!_loc36_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                  if(_loc35_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc12_.y);
                                                                                                                                                                     if(!(_loc36_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - _loc11_.y);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                               addr2637:
                                                                                                                                                               §§push(_loc21_ == 0);
                                                                                                                                                               if(!(_loc36_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr2600:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     if(_loc35_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        if(!(_loc36_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() == 1);
                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                           {
                                                                                                                                                                              addr2565:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc36_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc35_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr2637);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr2581:
                                                                                                                                                                                    this.§"_§ = §9!D§;
                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§<!^§ = b2Math.§+?§(b2Math.§9!<§(_loc12_,_loc11_),1);
                                                                                                                                                                                       if(!(_loc36_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr2515:
                                                                                                                                                                                          §§push(this.§<!^§);
                                                                                                                                                                                          if(!(_loc36_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().Normalize();
                                                                                                                                                                                             addr3163:
                                                                                                                                                                                             if(!(_loc36_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                this.m_localPoint = _loc10_;
                                                                                                                                                                                                if(!(_loc36_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr2515);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(this.§<!^§);
                                                                                                                                                                                                   if(_loc35_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc20_ = §§pop();
                                                                                                                                                                                                      §§push((_loc19_ = param5.R).col1);
                                                                                                                                                                                                      if(_loc35_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                         if(!_loc36_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc20_.x);
                                                                                                                                                                                                            if(!_loc36_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!_loc36_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc19_.col2);
                                                                                                                                                                                                                  if(!(_loc36_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                                                                     if(!_loc36_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc20_.y);
                                                                                                                                                                                                                        if(_loc35_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(!_loc36_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              if(_loc35_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 if(!(_loc36_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr2712:
                                                                                                                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr2717:
                                                                                                                                                                                                                                       §§push(_loc19_.col1.y);
                                                                                                                                                                                                                                       if(!(_loc36_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc20_.x);
                                                                                                                                                                                                                                          if(!_loc36_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr2729:
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(!(_loc36_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr2739:
                                                                                                                                                                                                                                                §§push(_loc19_.col2.y);
                                                                                                                                                                                                                                                if(_loc35_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr2750:
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                                                                                                                                                                                   if(_loc35_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr2759:
                                                                                                                                                                                                                                                      _loc18_ = §§pop();
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr2759);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr2750);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2759);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2750);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2759);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    _loc20_ = this.m_localPoint;
                                                                                                                                                                                                                                    _loc19_ = param5.R;
                                                                                                                                                                                                                                    if(!_loc36_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(param5.position);
                                                                                                                                                                                                                                       if(!(_loc36_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                                                                          if(_loc35_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc19_.col1);
                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                                                                if(!(_loc36_ && param3))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc20_.x);
                                                                                                                                                                                                                                                   if(!_loc36_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(_loc35_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc19_.col2);
                                                                                                                                                                                                                                                         if(_loc35_ || param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                                                                            if(_loc35_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc20_.y);
                                                                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(!_loc36_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        if(!_loc36_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr2846:
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc15_ = §§pop();
                                                                                                                                                                                                                                                                              if(!(_loc36_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr2864:
                                                                                                                                                                                                                                                                                 §§push(param5.position.y);
                                                                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr2867:
                                                                                                                                                                                                                                                                                    §§push(_loc19_.col1.y);
                                                                                                                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr2872:
                                                                                                                                                                                                                                                                                       §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                       if(!_loc36_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr2876:
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr2884:
                                                                                                                                                                                                                                                                                             addr2886:
                                                                                                                                                                                                                                                                                             §§push(_loc19_.col2.y);
                                                                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr2893:
                                                                                                                                                                                                                                                                                             §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr2897:
                                                                                                                                                                                                                                                                                                _loc16_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                addr2898:
                                                                                                                                                                                                                                                                                                _loc20_ = _loc7_;
                                                                                                                                                                                                                                                                                                _loc19_ = param3.R;
                                                                                                                                                                                                                                                                                                if(!(_loc36_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr3128:
                                                                                                                                                                                                                                                                                                   §§push(param3.position.x);
                                                                                                                                                                                                                                                                                                   §§push(_loc19_.col1.x);
                                                                                                                                                                                                                                                                                                   §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                                   if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr3141:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      §§push(_loc19_.col2.x * _loc20_.y);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   _loc13_ = Number(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr3151:
                                                                                                                                                                                                                                                                                                §§push(param3.position);
                                                                                                                                                                                                                                                                                                if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr3065:
                                                                                                                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                   §§push(_loc19_.col1);
                                                                                                                                                                                                                                                                                                   if(!(_loc36_ && param3))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr3075:
                                                                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                      §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                                      if(!(_loc36_ && param2))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc36_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr3087:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            §§push(_loc19_.col2);
                                                                                                                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                               if(!(_loc36_ && param3))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr3099:
                                                                                                                                                                                                                                                                                                                  if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc20_.y);
                                                                                                                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr3112:
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                        if(_loc35_ || param3)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr3121:
                                                                                                                                                                                                                                                                                                                           _loc14_ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                                           addr3122:
                                                                                                                                                                                                                                                                                                                           addr3120:
                                                                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr2963:
                                                                                                                                                                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                              if(!_loc36_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc36_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                       if(!(_loc36_ && param2))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr3002:
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                                                   if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc36_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr3015:
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc36_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr3032:
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc36_ && param2))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr3031:
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc36_ && this))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr3040:
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                        if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr3050:
                                                                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc36_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 addr3053:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            this.§<!^§.§1!V§();
                                                                                                                                                                                                                                                                                                                                                                                                            addr2961:
                                                                                                                                                                                                                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr2963);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr3669);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3122);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr3053);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr2961);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr3002);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr3015);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr3032);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr3040);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr3050);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr3128);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr3120);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr3112);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr3031);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr3128);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3121);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr3040);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr3087);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr3040);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr3141);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr3075);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr3031);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr3128);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr3065);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr3050);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr3151);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr3128);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr3141);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr3128);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr3112);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr3141);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr3099);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr3128);
                                                                                                                                                                                                                                                                                                addr2896:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr2897);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr2893);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr2891:
                                                                                                                                                                                                                                                                                       §§goto(addr2893);
                                                                                                                                                                                                                                                                                       §§push(§§pop() * _loc20_.y);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr2884);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr2897);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2898);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr2896);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr2867);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr2884);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr2891);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr2884);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr2886);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr2872);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr2876);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr2872);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2867);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2846);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr2864);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr2759);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2729);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2750);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2739);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2712);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2729);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2759);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2717);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr3179:
                                                                                                                                                                                                      _loc20_ = §§pop();
                                                                                                                                                                                                      §§push((_loc19_ = param3.R).col1);
                                                                                                                                                                                                      if(!_loc36_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc20_.x);
                                                                                                                                                                                                            if(!(_loc36_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc19_.col2);
                                                                                                                                                                                                                  if(!_loc36_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                                                                     if(!_loc36_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc20_.y);
                                                                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(!_loc36_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr3218:
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              if(!_loc36_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 if(!(_loc36_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                                                                                                                    if(!_loc36_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr3234:
                                                                                                                                                                                                                                       §§push(_loc19_.col1.y);
                                                                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc20_.x);
                                                                                                                                                                                                                                          if(!(_loc36_ && param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(_loc35_ || param2)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr3254:
                                                                                                                                                                                                                                                §§push(_loc19_.col2.y);
                                                                                                                                                                                                                                                if(!_loc36_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr3262:
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr3266:
                                                                                                                                                                                                                                                      _loc18_ = §§pop();
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr3266);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr3262);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr3266);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr3262);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr3254);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    _loc20_ = this.m_localPoint;
                                                                                                                                                                                                                                    _loc19_ = param3.R;
                                                                                                                                                                                                                                    if(!(_loc36_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(param3.position);
                                                                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc19_.col1);
                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                                                                if(!(_loc36_ && param3))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc20_.x);
                                                                                                                                                                                                                                                   if(!_loc36_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc19_.col2);
                                                                                                                                                                                                                                                         if(!_loc36_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                                                                            if(!_loc36_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr3315:
                                                                                                                                                                                                                                                               §§push(_loc20_.y);
                                                                                                                                                                                                                                                               if(!_loc36_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(_loc35_ || param2)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr3327:
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        if(!(_loc36_ && param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           if(!(_loc36_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr3346:
                                                                                                                                                                                                                                                                              _loc13_ = §§pop();
                                                                                                                                                                                                                                                                              if(!_loc36_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr3351:
                                                                                                                                                                                                                                                                                 §§push(param3.position.y);
                                                                                                                                                                                                                                                                                 if(!_loc36_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr3356:
                                                                                                                                                                                                                                                                                    §§push(_loc19_.col1.y);
                                                                                                                                                                                                                                                                                    if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr3364:
                                                                                                                                                                                                                                                                                       §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                       if(!_loc36_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr3385:
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr3378:
                                                                                                                                                                                                                                                                                             §§push(_loc19_.col2.y);
                                                                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr3381:
                                                                                                                                                                                                                                                                                                §§push(§§pop() * _loc20_.y);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr3389:
                                                                                                                                                                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                             _loc20_ = _loc10_;
                                                                                                                                                                                                                                                                                             _loc19_ = param5.R;
                                                                                                                                                                                                                                                                                             if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr3662:
                                                                                                                                                                                                                                                                                                addr3656:
                                                                                                                                                                                                                                                                                                addr3663:
                                                                                                                                                                                                                                                                                                addr3650:
                                                                                                                                                                                                                                                                                                addr3667:
                                                                                                                                                                                                                                                                                                addr3661:
                                                                                                                                                                                                                                                                                                addr3659:
                                                                                                                                                                                                                                                                                                addr3658:
                                                                                                                                                                                                                                                                                                addr3653:
                                                                                                                                                                                                                                                                                                addr3655:
                                                                                                                                                                                                                                                                                                addr3652:
                                                                                                                                                                                                                                                                                                addr3649:
                                                                                                                                                                                                                                                                                                §§push(param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y));
                                                                                                                                                                                                                                                                                                if(!_loc36_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                addr3668:
                                                                                                                                                                                                                                                                                                §§push(param5.position);
                                                                                                                                                                                                                                                                                                if(!(_loc36_ && param2))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr3579:
                                                                                                                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                   §§push(_loc19_.col1);
                                                                                                                                                                                                                                                                                                   if(!_loc36_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr3586:
                                                                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                      §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                                      if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr3594:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc19_.col2);
                                                                                                                                                                                                                                                                                                            if(!(_loc36_ && param2))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                               if(!(_loc36_ && param3))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc36_ && param3))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc20_.y);
                                                                                                                                                                                                                                                                                                                     if(!_loc36_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr3643:
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop() + (§§pop() + §§pop() * §§pop())));
                                                                                                                                                                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                                           addr3453:
                                                                                                                                                                                                                                                                                                                           addr3646:
                                                                                                                                                                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc36_ && param3))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                    if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr3480:
                                                                                                                                                                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                                       if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc36_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                             if(!_loc36_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr3493:
                                                                                                                                                                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr3501:
                                                                                                                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc36_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                         if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc36_ && param3))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr3528:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr3536:
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc36_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr3539:
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                        if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr3547:
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                           if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc36_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr3557:
                                                                                                                                                                                                                                                                                                                                                                                 _loc22_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                 addr3558:
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc35_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc36_ && this))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc36_ && this))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc36_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            this.§<!^§.§1!V§();
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc35_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr3451:
                                                                                                                                                                                                                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr3453);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr3669);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3558);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr3669);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr3528);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr3539);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr3643);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr3547);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr3557);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr3668);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr3646);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr3579);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr3643);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr3662);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr3656);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr3586);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr3643);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr3536);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr3663);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr3594);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr3528);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr3557);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr3586);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr3539);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr3493);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr3501);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr3650);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr3480);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr3667);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr3661);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr3659);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr3643);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr3658);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr3653);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr3655);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr3652);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr3649);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr3451);
                                                                                                                                                                                                                                                                                             addr3388:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr3389);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr3385);
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr3385);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr3389);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr3388);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr3346);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr3364);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr3381);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr3327);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr3378);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr3385);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr3315);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr3364);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr3356);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr3389);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr3351);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr3389);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr3254);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr3266);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr3262);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr3254);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr3266);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr3218);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr3266);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr3234);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr3174:
                                                                                                                                                                                                this.m_localPoint = _loc7_;
                                                                                                                                                                                                §§push(this.§<!^§);
                                                                                                                                                                                             }
                                                                                                                                                                                             this.§<!^§ = b2Math.§+?§(b2Math.§9!<§(_loc9_,_loc8_),1);
                                                                                                                                                                                             if(_loc36_)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr3174);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr3179);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr3174);
                                                                                                                                                                                       addr2586:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr3163);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2586);
                                                                                                                                                                              }
                                                                                                                                                                              this.§"_§ = §>!r§;
                                                                                                                                                                              if(_loc35_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr3163);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr3174);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr2600);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2637);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr3174);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2565);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2600);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2581);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop18;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr2377);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc31_ = §§pop();
                                                                                                                                    §§goto(addr2395);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr2393);
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
                                                                                    §§goto(addr2219);
                                                                                 }
                                                                                 §§goto(addr1980);
                                                                              }
                                                                           }
                                                                           §§goto(addr1977);
                                                                        }
                                                                        §§goto(addr1984);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  §§goto(addr1980);
                                                               }
                                                               §§goto(addr1944);
                                                            }
                                                            §§goto(addr1980);
                                                         }
                                                         §§goto(addr1979);
                                                      }
                                                      §§goto(addr1980);
                                                   }
                                                   §§goto(addr1936);
                                                }
                                                §§goto(addr1965);
                                             }
                                             §§goto(addr1907);
                                          }
                                          §§goto(addr1952);
                                       }
                                    }
                                    else
                                    {
                                       addr1813:
                                       §§push(§§pop().§1!9§(param1.indexA[0]));
                                    }
                                 }
                                 else
                                 {
                                    addr581:
                                    this.§"_§ = §>!r§;
                                    if(_loc35_)
                                    {
                                       addr586:
                                       §§push(this.§#6§);
                                       if(_loc35_ || param3)
                                       {
                                          §§push(§§pop().§1!9§(param1.indexA[0]));
                                          if(_loc35_)
                                          {
                                             _loc8_ = §§pop();
                                             _loc9_ = this.§#6§.§1!9§(param1.indexA[1]);
                                             _loc10_ = this.§;!=§.§1!9§(param1.indexB[0]);
                                             if(_loc35_ || param3)
                                             {
                                                §§push(this.m_localPoint);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(0.5);
                                                   addr704:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_.x);
                                                      if(!_loc36_)
                                                      {
                                                         addr710:
                                                         §§push(_loc9_.x);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         addr710:
                                                      }
                                                      addr711:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr712:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr700);
                                          }
                                          else
                                          {
                                             §§goto(addr1828);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr1813);
                                       }
                                    }
                                    else
                                    {
                                       addr1201:
                                       this.§"_§ = §9!D§;
                                       §§push(this.§;!=§.§1!9§(param1.indexB[0]));
                                       if(_loc35_)
                                       {
                                          _loc11_ = §§pop();
                                          _loc12_ = this.§;!=§.§1!9§(param1.indexB[1]);
                                          _loc7_ = this.§#6§.§1!9§(param1.indexA[0]);
                                          if(_loc35_ || param1)
                                          {
                                             §§push(this.m_localPoint);
                                             loop56:
                                             while(true)
                                             {
                                                §§push(0.5);
                                                addr1327:
                                                while(true)
                                                {
                                                   §§push(_loc11_.x);
                                                   addr1329:
                                                   while(true)
                                                   {
                                                      §§push(_loc12_.x);
                                                      addr1331:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr1332:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr1333:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               continue loop56;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr1249);
                                       }
                                       else
                                       {
                                          §§goto(addr1828);
                                       }
                                    }
                                 }
                                 §§goto(addr1828);
                              }
                              §§goto(addr586);
                           }
                           else if(param1.indexB[0] == param1.indexB[1])
                           {
                              if(!_loc36_)
                              {
                                 §§goto(addr581);
                              }
                              §§goto(addr586);
                           }
                           else
                           {
                              if(param1.indexA[0] == param1.indexA[0])
                              {
                                 if(_loc36_)
                                 {
                                 }
                                 §§goto(addr1201);
                              }
                              else
                              {
                                 §§goto(addr1813);
                                 §§push(this.§#6§);
                              }
                              §§goto(addr1828);
                           }
                           §§goto(addr1813);
                        }
                        §§goto(addr586);
                     }
                  }
               }
               §§goto(addr135);
            }
            §§goto(addr144);
         }
         §§goto(addr102);
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
         §§push(this.§"_§);
         if(_loc12_)
         {
            var _loc11_:* = §§pop();
            if(_loc12_ || param2)
            {
               §§push(§+!j§);
               if(_loc12_)
               {
                  §§push(_loc11_);
                  if(_loc12_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc13_)
                        {
                           §§push(0);
                           if(_loc13_)
                           {
                              addr468:
                           }
                        }
                        else
                        {
                           addr479:
                           §§push(2);
                           if(!_loc13_)
                           {
                              addr482:
                           }
                        }
                        addr488:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = b2Math.§[Z§(param1.R,this.§<!^§);
                              _loc4_ = b2Math.§[Z§(param2.R,this.§<!^§.§&!+§());
                              _loc5_ = this.§#6§.§<!,§(_loc3_);
                              _loc6_ = this.§;!=§.§<!,§(_loc4_);
                              _loc7_ = b2Math.§#!<§(param1,_loc5_);
                              §§push((_loc8_ = b2Math.§#!<§(param2,_loc6_)).x);
                              if(_loc12_ || param1)
                              {
                                 §§push(_loc7_.x);
                                 if(!(_loc13_ && this))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc13_)
                                    {
                                       addr103:
                                       §§push(this.§<!^§.x);
                                       if(_loc12_)
                                       {
                                          §§goto(addr108);
                                       }
                                       §§goto(addr130);
                                    }
                                    §§goto(addr111);
                                 }
                                 addr108:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc13_)
                                 {
                                    addr111:
                                    §§push(_loc8_.y);
                                    if(_loc12_)
                                    {
                                       §§push(_loc7_.y);
                                       if(_loc12_ || this)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc12_)
                                          {
                                             addr130:
                                             §§push(§§pop() * this.§<!^§.y);
                                             if(_loc12_ || param1)
                                             {
                                                addr138:
                                                §§push(§§pop() + §§pop());
                                                if(!_loc12_)
                                                {
                                                }
                                                §§goto(addr151);
                                             }
                                          }
                                          _loc9_ = §§pop();
                                          §§goto(addr151);
                                       }
                                       §§goto(addr130);
                                    }
                                    §§goto(addr138);
                                 }
                                 addr151:
                                 §§push(Number(§§pop()));
                                 if(!(_loc13_ && _loc3_))
                                 {
                                    return §§pop();
                                 }
                              }
                              §§goto(addr103);
                           case 1:
                              _loc10_ = b2Math.§&!Q§(param1.R,this.§<!^§);
                              _loc7_ = b2Math.§#!<§(param1,this.m_localPoint);
                              _loc4_ = b2Math.§[Z§(param2.R,_loc10_.§&!+§());
                              _loc6_ = this.§;!=§.§<!,§(_loc4_);
                              §§push((_loc8_ = b2Math.§#!<§(param2,_loc6_)).x);
                              if(!(_loc13_ && this))
                              {
                                 §§push(_loc7_.x);
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc12_ || param2)
                                    {
                                       §§push(_loc10_.x);
                                       if(!(_loc13_ && param2))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc13_)
                                          {
                                             addr221:
                                             §§push(_loc8_.y);
                                             if(_loc12_ || param2)
                                             {
                                                addr240:
                                                §§push(_loc7_.y);
                                                if(_loc12_ || _loc3_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc13_ && this))
                                                   {
                                                      addr259:
                                                      §§push(§§pop() * _loc10_.y);
                                                      if(_loc12_ || this)
                                                      {
                                                         §§goto(addr267);
                                                      }
                                                   }
                                                   §§goto(addr279);
                                                }
                                                §§goto(addr259);
                                             }
                                             §§goto(addr267);
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr240);
                                    }
                                    §§goto(addr275);
                                 }
                                 addr267:
                                 §§push(§§pop() + §§pop());
                                 if(_loc12_ || param2)
                                 {
                                    addr275:
                                    §§push(Number(§§pop()));
                                    if(!_loc13_)
                                    {
                                       addr279:
                                       return _loc9_ = §§pop();
                                    }
                                 }
                              }
                              §§goto(addr221);
                           case 2:
                              _loc10_ = b2Math.§&!Q§(param2.R,this.§<!^§);
                              _loc8_ = b2Math.§#!<§(param2,this.m_localPoint);
                              _loc3_ = b2Math.§[Z§(param1.R,_loc10_.§&!+§());
                              _loc5_ = this.§#6§.§<!,§(_loc3_);
                              §§push((_loc7_ = b2Math.§#!<§(param1,_loc5_)).x);
                              if(_loc12_ || this)
                              {
                                 §§push(_loc8_.x);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc12_)
                                    {
                                       §§push(_loc10_.x);
                                       if(!(_loc13_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc12_)
                                          {
                                             §§push(_loc7_.y);
                                             if(!(_loc13_ && this))
                                             {
                                                §§push(_loc8_.y);
                                                if(_loc12_)
                                                {
                                                   §§goto(addr371);
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(_loc13_)
                                                {
                                                }
                                                §§goto(addr383);
                                             }
                                             addr371:
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc13_ && param2))
                                             {
                                                addr366:
                                                §§push(_loc10_.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc13_ && _loc3_))
                                             {
                                                addr379:
                                                §§push(Number(§§pop()));
                                                if(!_loc13_)
                                                {
                                                   addr383:
                                                   §§push(_loc9_ = §§pop());
                                                   if(!_loc12_)
                                                   {
                                                      break;
                                                   }
                                                }
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr383);
                                       }
                                       §§goto(addr366);
                                    }
                                 }
                                 §§goto(addr383);
                              }
                              §§goto(addr379);
                           default:
                              b2Settings.b2Assert(false);
                        }
                        return 0;
                        addr487:
                     }
                     else
                     {
                        §§push(§>!r§);
                        if(_loc12_ || _loc3_)
                        {
                           §§push(_loc11_);
                           if(_loc12_ || this)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc12_ || this)
                                 {
                                    §§push(1);
                                    if(!_loc13_)
                                    {
                                       §§goto(addr468);
                                    }
                                    else
                                    {
                                       addr478:
                                       if(§§pop() === _loc11_)
                                       {
                                          §§goto(addr479);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                    §§goto(addr487);
                                 }
                                 §§goto(addr479);
                              }
                              else
                              {
                                 §§push(§9!D§);
                                 if(_loc13_ && this)
                                 {
                                 }
                                 §§goto(addr482);
                              }
                           }
                        }
                        §§goto(addr478);
                     }
                     §§goto(addr479);
                  }
                  §§goto(addr478);
               }
               §§goto(addr482);
            }
            §§goto(addr479);
         }
         §§goto(addr488);
      }
   }
}
