package §72§
{
   import §7!u§.b2Settings;
   import §>H§.b2Mat22;
   import §>H§.b2Math;
   import §>H§.b2Transform;
   import §>H§.b2Vec2;
   
   class b2SeparationFunction
   {
      
      public static const §?!c§:int = 1;
      
      public static const §+!M§:int = 2;
      
      public static const §6!X§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?!c§ = 1;
            while(true)
            {
               §+!M§ = 2;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §6!X§ = 4;
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      public var §&!4§:b2DistanceProxy;
      
      public var §9+§:b2DistanceProxy;
      
      public var §+!?§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §]]§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.§]]§ = new b2Vec2();
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     super();
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §%%§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:b2Mat22 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:* = NaN;
         var _loc22_:Number = NaN;
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
            this.§&!4§ = param2;
            if(!_loc36_)
            {
               addr97:
               this.§9+§ = param4;
            }
            var _loc6_:int = param1.count;
            if(!(_loc36_ && param2))
            {
               §§push(b2Settings);
               if(!(_loc36_ && param2))
               {
                  §§push(0);
                  if(_loc35_)
                  {
                     §§push(_loc6_);
                     if(_loc35_ || this)
                     {
                        §§push(§§pop() < §§pop());
                        if(_loc35_)
                        {
                           if(§§pop())
                           {
                              if(_loc35_)
                              {
                                 addr137:
                                 §§pop();
                                 §§push(_loc6_ < 3);
                              }
                           }
                           §§pop().b2Assert(§§pop());
                           if(_loc35_)
                           {
                              if(_loc6_ == 1)
                              {
                                 if(!_loc36_)
                                 {
                                    addr149:
                                    this.§+!?§ = §?!c§;
                                    if(!_loc36_)
                                    {
                                       §§push(this.§&!4§);
                                       if(!_loc36_)
                                       {
                                          §§push(§§pop().§^>§(param1.indexA[0]));
                                          if(_loc35_)
                                          {
                                             _loc7_ = §§pop();
                                             _loc10_ = this.§9+§.§^>§(param1.indexB[0]);
                                             _loc20_ = _loc7_;
                                             _loc19_ = param3.R;
                                             if(!(_loc36_ && this))
                                             {
                                                §§push(param3.position);
                                                if(!(_loc36_ && param3))
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc36_ && param1))
                                                   {
                                                      §§push(_loc19_.col1);
                                                      if(_loc35_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc36_)
                                                         {
                                                            §§push(_loc20_.x);
                                                            if(_loc35_ || this)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc35_ || param2)
                                                               {
                                                                  addr231:
                                                                  §§push(_loc19_.col2);
                                                                  if(!_loc36_)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(!_loc36_)
                                                                     {
                                                                        §§push(_loc20_.y);
                                                                        if(!_loc36_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc35_ || this)
                                                                           {
                                                                              addr250:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc36_ && param1))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!_loc36_)
                                                                                    {
                                                                                       addr264:
                                                                                       _loc13_ = §§pop();
                                                                                       if(!(_loc36_ && param2))
                                                                                       {
                                                                                          addr274:
                                                                                          §§push(param3.position.y);
                                                                                          if(_loc35_ || param3)
                                                                                          {
                                                                                             addr284:
                                                                                             §§push(_loc19_.col1.y);
                                                                                             if(!(_loc36_ && this))
                                                                                             {
                                                                                                addr292:
                                                                                                §§push(_loc20_.x);
                                                                                                if(_loc35_ || param2)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc35_)
                                                                                                   {
                                                                                                      addr306:
                                                                                                      §§push(_loc19_.col2.y);
                                                                                                      if(_loc36_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr313:
                                                                                                      §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                      if(!(_loc36_ && param1))
                                                                                                      {
                                                                                                         addr322:
                                                                                                         _loc14_ = Number(§§pop());
                                                                                                         _loc20_ = _loc10_;
                                                                                                         _loc19_ = param5.R;
                                                                                                         if(_loc35_ || param1)
                                                                                                         {
                                                                                                            §§push(param5.position);
                                                                                                            loop161:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               addr530:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc19_.col1);
                                                                                                                  addr532:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     addr533:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc20_.x);
                                                                                                                        if(!_loc36_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc19_.col2);
                                                                                                                              addr540:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 addr541:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc20_.y);
                                                                                                                                    addr543:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr538:
                                                                                                                        }
                                                                                                                        addr544:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr545:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              addr546:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr547:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                    continue loop161;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr529:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param5.position);
                                                                                                            if(_loc35_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc35_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc19_.col1);
                                                                                                                  if(!_loc36_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(_loc35_)
                                                                                                                     {
                                                                                                                        §§push(_loc20_.x);
                                                                                                                        if(!_loc36_)
                                                                                                                        {
                                                                                                                           if(_loc35_ || param3)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc36_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc35_ || param1)
                                                                                                                                 {
                                                                                                                                    if(_loc35_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc19_.col2);
                                                                                                                                       if(_loc35_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          if(_loc35_ || param1)
                                                                                                                                          {
                                                                                                                                             addr480:
                                                                                                                                             §§push(_loc20_.y);
                                                                                                                                             if(_loc35_ || param2)
                                                                                                                                             {
                                                                                                                                                addr490:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc36_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr498:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc35_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc35_ || this)
                                                                                                                                                      {
                                                                                                                                                         addr508:
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      if(_loc35_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc35_ || param3)
                                                                                                                                                         {
                                                                                                                                                            if(_loc35_ || param3)
                                                                                                                                                            {
                                                                                                                                                               _loc16_ = §§pop();
                                                                                                                                                               loop174:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§]]§);
                                                                                                                                                                  addr396:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                     addr397:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                        addr398:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           addr399:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              continue loop174;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr530);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr546);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr547);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr533);
                                                                                                                                                }
                                                                                                                                                §§goto(addr541);
                                                                                                                                             }
                                                                                                                                             §§goto(addr543);
                                                                                                                                          }
                                                                                                                                          §§goto(addr490);
                                                                                                                                       }
                                                                                                                                       §§goto(addr540);
                                                                                                                                    }
                                                                                                                                    §§goto(addr538);
                                                                                                                                 }
                                                                                                                                 §§goto(addr545);
                                                                                                                              }
                                                                                                                              §§goto(addr498);
                                                                                                                           }
                                                                                                                           §§goto(addr544);
                                                                                                                        }
                                                                                                                        §§goto(addr480);
                                                                                                                     }
                                                                                                                     §§goto(addr498);
                                                                                                                  }
                                                                                                                  §§goto(addr532);
                                                                                                               }
                                                                                                               §§goto(addr508);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr529);
                                                                                                            }
                                                                                                         }
                                                                                                         addr321:
                                                                                                      }
                                                                                                      §§goto(addr322);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr313);
                                                                                                §§push(§§pop() * _loc20_.y);
                                                                                             }
                                                                                             §§goto(addr313);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr322);
                                                                                    }
                                                                                    §§goto(addr321);
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              §§goto(addr292);
                                                                           }
                                                                           §§goto(addr313);
                                                                        }
                                                                        §§goto(addr292);
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                               }
                                                               §§goto(addr306);
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr284);
                                                   }
                                                   §§goto(addr264);
                                                }
                                                §§goto(addr274);
                                             }
                                             §§goto(addr322);
                                          }
                                          else
                                          {
                                             addr1238:
                                             _loc11_ = §§pop();
                                             _loc12_ = this.§9+§.§^>§(param1.indexB[1]);
                                             _loc7_ = this.§&!4§.§^>§(param1.indexA[0]);
                                             if(_loc35_ || this)
                                             {
                                                §§push(this.m_localPoint);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(0.5);
                                                   if(_loc35_)
                                                   {
                                                      §§push(_loc11_.x);
                                                      if(!(_loc36_ && param2))
                                                      {
                                                         §§push(_loc12_.x);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr1323:
                                                            §§push(_loc12_.y);
                                                            if(_loc36_ && param2)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc36_)
                                                            {
                                                               addr1336:
                                                               §§pop().y = §§pop() * §§pop();
                                                               loop5:
                                                               for(; !_loc36_; if(_loc36_ && param1)
                                                               {
                                                                  continue;
                                                               },if(false)
                                                               {
                                                                  §§goto(addr1288);
                                                               },§§goto(addr1362),§§push(this.§]]§))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§]]§ = b2Math.§^!P§(b2Math.§54§(_loc12_,_loc11_),1);
                                                                     addr1298:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§]]§);
                                                                        if(!(_loc35_ || this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§pop().Normalize();
                                                                        if(_loc35_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                     addr1362:
                                                                     _loc20_ = §§pop();
                                                                     §§push((_loc19_ = param5.R).col1);
                                                                     if(!(_loc36_ && param1))
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc35_ || this)
                                                                        {
                                                                           §§push(_loc20_.x);
                                                                           if(_loc35_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc35_ || this)
                                                                              {
                                                                                 §§push(_loc19_.col2);
                                                                                 if(!_loc36_)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!(_loc36_ && param3))
                                                                                    {
                                                                                       addr1409:
                                                                                       §§push(_loc20_.y);
                                                                                       if(_loc35_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc36_ && param2))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc35_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc36_ && param1))
                                                                                                {
                                                                                                   _loc17_ = §§pop();
                                                                                                   if(!_loc36_)
                                                                                                   {
                                                                                                      addr1437:
                                                                                                      §§push(_loc19_.col1.y);
                                                                                                      if(_loc35_ || this)
                                                                                                      {
                                                                                                         §§push(_loc20_.x);
                                                                                                         if(_loc35_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc35_)
                                                                                                            {
                                                                                                               addr1454:
                                                                                                               §§push(_loc19_.col2.y);
                                                                                                               if(_loc35_ || this)
                                                                                                               {
                                                                                                                  addr1462:
                                                                                                                  §§push(§§pop() * _loc20_.y);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc36_ && this)
                                                                                                               {
                                                                                                               }
                                                                                                               addr1474:
                                                                                                               _loc18_ = §§pop();
                                                                                                               _loc20_ = this.m_localPoint;
                                                                                                               _loc19_ = param5.R;
                                                                                                               if(_loc35_)
                                                                                                               {
                                                                                                                  §§push(param5.position);
                                                                                                                  if(_loc35_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     if(!(_loc36_ && this))
                                                                                                                     {
                                                                                                                        §§push(_loc19_.col1);
                                                                                                                        if(_loc35_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(!(_loc36_ && this))
                                                                                                                           {
                                                                                                                              §§push(_loc20_.x);
                                                                                                                              if(_loc35_ || param3)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc36_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc19_.col2);
                                                                                                                                    if(!(_loc36_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(_loc35_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc20_.y);
                                                                                                                                          if(_loc35_ || param2)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc35_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc35_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!_loc36_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(_loc35_ || param1)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr1607:
                                                                                                                                                      _loc16_ = §§pop();
                                                                                                                                                      _loc20_ = _loc7_;
                                                                                                                                                      _loc19_ = param3.R;
                                                                                                                                                      if(_loc35_)
                                                                                                                                                      {
                                                                                                                                                         §§push(param3.position);
                                                                                                                                                         loop8:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            loop9:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc19_.col1);
                                                                                                                                                               loop10:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  loop11:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc20_.x);
                                                                                                                                                                     loop12:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        loop13:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc19_.col2);
                                                                                                                                                                           loop14:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                              loop15:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc20_.y);
                                                                                                                                                                                 loop16:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    loop17:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       loop18:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          loop19:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             loop20:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                                                                loop21:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop22:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param3.position);
                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                      loop23:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc19_.col1);
                                                                                                                                                                                                         if(_loc36_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                         loop24:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc20_.x);
                                                                                                                                                                                                            if(!(_loc36_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc36_ && param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc19_.col2);
                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                     while(_loc35_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc20_.y);
                                                                                                                                                                                                                        if(!_loc36_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1799:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           while(!(_loc36_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop12;
                                                                                                                                                                                                                           addr1799:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop16;
                                                                                                                                                                                                                        addr1696:
                                                                                                                                                                                                                        if(!(_loc35_ || param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc35_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1711:
                                                                                                                                                                                                                           if(!(_loc35_ || this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop11;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(!_loc36_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1721:
                                                                                                                                                                                                                              if(_loc36_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop20;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc36_ && param3)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop9;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              if(!(_loc36_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1738:
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 if(!_loc36_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1741:
                                                                                                                                                                                                                                    if(_loc36_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop24;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    _loc21_ = §§pop();
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1745:
                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop13;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc36_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.§]]§.§2[§();
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc36_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop29:
                                                                                                                                                                                                                                       while(_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1622:
                                                                                                                                                                                                                                                if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop23;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                      if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1642:
                                                                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc35_ || param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1660:
                                                                                                                                                                                                                                                                  if(!(_loc36_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc36_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop19;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                                                                                                                     if(_loc35_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                                                                        if(_loc35_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                              if(!(_loc36_ && param3))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1695:
                                                                                                                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1711);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1799);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1696);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1695);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc14_ = §§pop();
                                                                                                                                                                                                                                                                     continue loop29;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1811:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1721);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(!_loc36_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1811);
                                                                                                                                                                                                                                                                  §§goto(addr1622);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop18;
                                                                                                                                                                                                                                                            addr1807:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1711);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1660);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1741);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1810);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1642);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr3709);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(false)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop22;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1835);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1745);
                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1738);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop15;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop14;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1807);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1799);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop17;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop10;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop8;
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
                                                                                                                                                      §§goto(addr1814);
                                                                                                                                                   }
                                                                                                                                                   _loc15_ = §§pop();
                                                                                                                                                   if(!_loc36_)
                                                                                                                                                   {
                                                                                                                                                      addr1564:
                                                                                                                                                      addr1562:
                                                                                                                                                      §§push(param5.position.y);
                                                                                                                                                      if(_loc35_)
                                                                                                                                                      {
                                                                                                                                                         addr1569:
                                                                                                                                                         §§push(_loc19_.col1.y);
                                                                                                                                                         if(_loc35_ || param2)
                                                                                                                                                         {
                                                                                                                                                            addr1577:
                                                                                                                                                            §§push(_loc20_.x);
                                                                                                                                                            if(!_loc36_)
                                                                                                                                                            {
                                                                                                                                                               addr1581:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc35_)
                                                                                                                                                               {
                                                                                                                                                                  addr1584:
                                                                                                                                                                  §§push(_loc19_.col2.y);
                                                                                                                                                                  if(_loc35_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr1597:
                                                                                                                                                                     §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1597);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc36_ && param3)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1607);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1597);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1584);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1607);
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1607);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1584);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1597);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1581);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1584);
                                                                                                                              }
                                                                                                                              §§goto(addr1597);
                                                                                                                           }
                                                                                                                           §§goto(addr1577);
                                                                                                                        }
                                                                                                                        §§goto(addr1569);
                                                                                                                     }
                                                                                                                     §§goto(addr1607);
                                                                                                                  }
                                                                                                                  §§goto(addr1564);
                                                                                                               }
                                                                                                               §§goto(addr1562);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1462);
                                                                                                      }
                                                                                                      §§goto(addr1474);
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1474);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1462);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1454);
                                                                           }
                                                                           §§goto(addr1409);
                                                                        }
                                                                        §§goto(addr1454);
                                                                     }
                                                                     §§goto(addr1437);
                                                                  }
                                                               }
                                                               continue loop0;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr1358:
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  continue loop0;
                                                               }
                                                            }
                                                            addr1357:
                                                         }
                                                      }
                                                      §§goto(addr1357);
                                                   }
                                                   §§goto(addr1358);
                                                }
                                             }
                                             §§goto(addr1298);
                                          }
                                       }
                                       else
                                       {
                                          addr1853:
                                          _loc8_ = §§pop().§^>§(param1.indexA[0]);
                                          _loc9_ = this.§&!4§.§^>§(param1.indexA[1]);
                                          _loc11_ = this.§9+§.§^>§(param1.indexB[0]);
                                          _loc12_ = this.§9+§.§^>§(param1.indexB[1]);
                                          _loc23_ = b2Math.§'!6§(param3,_loc7_);
                                          _loc24_ = b2Math.§'q§(param3.R,b2Math.§54§(_loc9_,_loc8_));
                                          _loc25_ = b2Math.§'!6§(param5,_loc10_);
                                          _loc26_ = b2Math.§'q§(param5.R,b2Math.§54§(_loc12_,_loc11_));
                                          if(!(_loc36_ && param3))
                                          {
                                             §§push(_loc24_.x);
                                             if(_loc35_)
                                             {
                                                §§push(_loc24_.x);
                                                if(!(_loc36_ && param2))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc36_ && param3))
                                                   {
                                                      §§push(_loc24_.y);
                                                      if(!_loc36_)
                                                      {
                                                         addr1946:
                                                         §§push(_loc24_.y);
                                                         if(_loc35_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc36_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc35_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc35_ || param3)
                                                                  {
                                                                     addr1964:
                                                                     _loc27_ = §§pop();
                                                                     if(!_loc36_)
                                                                     {
                                                                        addr1967:
                                                                        §§push(_loc26_.x);
                                                                        if(!(_loc36_ && param2))
                                                                        {
                                                                           addr1976:
                                                                           §§push(_loc26_.x);
                                                                           if(_loc35_ || this)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc36_ && this))
                                                                              {
                                                                                 addr1993:
                                                                                 §§push(_loc26_.y);
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    addr2000:
                                                                                    §§push(§§pop() + §§pop() * _loc26_.y);
                                                                                    if(!(_loc36_ && param3))
                                                                                    {
                                                                                       addr2008:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr2000);
                                                                              }
                                                                              _loc28_ = §§pop();
                                                                           }
                                                                           §§goto(addr2000);
                                                                        }
                                                                        §§goto(addr2008);
                                                                     }
                                                                     _loc29_ = b2Math.§54§(_loc26_,_loc24_);
                                                                     if(!(_loc36_ && param3))
                                                                     {
                                                                        §§push(_loc24_.x);
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc29_.x);
                                                                           loop33:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              loop34:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc24_.y);
                                                                                 loop35:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc29_.y);
                                                                                    loop36:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          loop38:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                _loc30_ = §§pop();
                                                                                                loop40:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc26_.x);
                                                                                                   loop41:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc29_.x);
                                                                                                      loop42:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         loop43:
                                                                                                         while(_loc35_ || param3)
                                                                                                         {
                                                                                                            if(!(_loc35_ || this))
                                                                                                            {
                                                                                                               continue loop34;
                                                                                                            }
                                                                                                            §§push(_loc26_.y);
                                                                                                            loop44:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc29_.y);
                                                                                                               loop45:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  loop46:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     loop47:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop48:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc31_ = §§pop();
                                                                                                                           loop49:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc24_.x);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc26_.x);
                                                                                                                                 addr2387:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    addr2388:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc24_.y);
                                                                                                                                       addr2390:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc26_.y);
                                                                                                                                          addr2392:
                                                                                                                                          while(!_loc36_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             continue loop44;
                                                                                                                                          }
                                                                                                                                          continue loop36;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 loop65:
                                                                                                                                 while(_loc35_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop66:
                                                                                                                                    for(; _loc35_ || param1; if(!(_loc35_ || this))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    },§§goto(addr2071),§§push(Number(§§pop())))
                                                                                                                                    {
                                                                                                                                       if(_loc35_)
                                                                                                                                       {
                                                                                                                                          _loc21_ = §§pop();
                                                                                                                                          loop67:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc33_);
                                                                                                                                             loop68:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                loop69:
                                                                                                                                                while(_loc35_ || param2)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                   {
                                                                                                                                                      loop70:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(b2Math);
                                                                                                                                                         §§push(_loc32_);
                                                                                                                                                         if(!_loc36_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc31_);
                                                                                                                                                            if(_loc35_ || param3)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc36_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc30_);
                                                                                                                                                                  if(!(_loc36_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * _loc28_);
                                                                                                                                                                     if(_loc35_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(!_loc36_)
                                                                                                                                                                        {
                                                                                                                                                                           addr2301:
                                                                                                                                                                           §§push(_loc33_);
                                                                                                                                                                           if(_loc36_ && this)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           addr2311:
                                                                                                                                                                           §§push(§§pop().§]#§(§§pop(),§§pop(),1));
                                                                                                                                                                           loop71:
                                                                                                                                                                           for(; _loc35_; if(!(_loc35_ || param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           },§§goto(addr2087))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc36_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop48;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              loop72:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc21_ = §§pop();
                                                                                                                                                                                 loop73:
                                                                                                                                                                                 while(_loc35_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc32_);
                                                                                                                                                                                       if(_loc35_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc21_);
                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             continue loop68;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr2164:
                                                                                                                                                                                          loop81:
                                                                                                                                                                                          while(!_loc36_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc35_ || param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc35_ || this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop46;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(!(_loc36_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr2188:
                                                                                                                                                                                                   loop83:
                                                                                                                                                                                                   while(!(_loc36_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc36_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop41;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc28_);
                                                                                                                                                                                                      if(!_loc36_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                         if(!(_loc36_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc36_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop72;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop84:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc36_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop47;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            if(!_loc36_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc35_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc34_ = §§pop();
                                                                                                                                                                                                                     if(_loc35_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                           addr2232:
                                                                                                                                                                                                                           addr2455:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop69;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc36_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop44;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                 addr2238:
                                                                                                                                                                                                                                 addr2104:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc35_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc36_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop70;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop73;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(_loc7_ = new b2Vec2());
                                                                                                                                                                                                                           §§push(_loc8_.x);
                                                                                                                                                                                                                           if(_loc35_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc9_.x);
                                                                                                                                                                                                                                 if(!(_loc36_ && param2))
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
                                                                                                                                                                                                                              if(!_loc36_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc9_.y);
                                                                                                                                                                                                                                    if(!(_loc36_ && param2))
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
                                                                                                                                                                                                                           if(_loc35_ || param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                                                                              if(_loc35_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc12_.x);
                                                                                                                                                                                                                                 if(_loc35_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() - _loc11_.x);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                           if(!(_loc36_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc10_);
                                                                                                                                                                                                                              §§push(_loc11_.y);
                                                                                                                                                                                                                              if(!_loc36_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                                                                 if(_loc35_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc12_.y);
                                                                                                                                                                                                                                    if(!_loc36_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - _loc11_.y);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                              loop87:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                                                                 loop88:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() == 0);
                                                                                                                                                                                                                                    addr2650:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                             continue loop88;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr2652:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   this.§+!?§ = §6!X§;
                                                                                                                                                                                                                                                   addr2645:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      this.§]]§ = b2Math.§^!P§(b2Math.§54§(_loc12_,_loc11_),1);
                                                                                                                                                                                                                                                      if(_loc36_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.§]]§ = b2Math.§^!P§(b2Math.§54§(_loc9_,_loc8_),1);
                                                                                                                                                                                                                                                         if(!_loc36_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this.m_localPoint = _loc7_;
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr3163:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop87;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr2642:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.§+!?§ = §+!M§;
                                                                                                                                                                                                                                                if(_loc35_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr3163);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr2640:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr3177);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr2231:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     loop79:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc34_ = §§pop();
                                                                                                                                                                                                                        loop80:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc36_ && this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(!_loc36_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                 break loop71;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop58:
                                                                                                                                                                                                                              while(!_loc36_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc27_);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc28_);
                                                                                                                                                                                                                                    addr2087:
                                                                                                                                                                                                                                    if(!(_loc35_ || param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr2094:
                                                                                                                                                                                                                                    if(!(_loc36_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc21_ = §§pop();
                                                                                                                                                                                                                                       if(_loc36_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop80;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2104);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          addr2406:
                                                                                                                                                                                                                                          while(!_loc36_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc32_ = §§pop();
                                                                                                                                                                                                                                             continue loop58;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop43;
                                                                                                                                                                                                                                          §§goto(addr2094);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr2405:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop49;
                                                                                                                                                                                                                              addr2379:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc36_ && param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop40;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(b2Math);
                                                                                                                                                                                                                           §§push(_loc32_);
                                                                                                                                                                                                                           if(_loc35_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc30_);
                                                                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc27_);
                                                                                                                                                                                                                                    if(!(_loc36_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr2049:
                                                                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop().§]#§(§§pop(),§§pop(),1));
                                                                                                                                                                                                                                    if(_loc36_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr2071:
                                                                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr2073:
                                                                                                                                                                                                                                          if(_loc35_ || param3)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop71;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop68;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop84;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!(_loc35_ || this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop79;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop66;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr2238);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2049);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop84;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2232);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(!_loc36_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     break loop83;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop35;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr2216:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2232);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2216);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc32_);
                                                                                                                                                                                                      if(_loc36_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop81;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc32_);
                                                                                                                                                                                                      if(_loc36_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         break loop81;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop45;
                                                                                                                                                                                                      §§goto(addr2188);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr2188:
                                                                                                                                                                                                   §§goto(addr2392);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2231);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr2387);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(!_loc36_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc36_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                if(!(_loc36_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc36_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      break loop66;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr2388);
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop66;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop42;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2390);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2188);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop67;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop65;
                                                                                                                                                                        }
                                                                                                                                                                        addr2310:
                                                                                                                                                                        §§goto(addr2311);
                                                                                                                                                                        §§push(0);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2311);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2310);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2311);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2301);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2127);
                                                                                                                                                }
                                                                                                                                                continue loop33;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr2406);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc33_ = §§pop();
                                                                                                                                       §§goto(addr2379);
                                                                                                                                       §§goto(addr2332);
                                                                                                                                    }
                                                                                                                                    addr2332:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop38;
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
                                                                           if(!(_loc35_ || this))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(_loc31_);
                                                                           if(_loc35_)
                                                                           {
                                                                              §§goto(addr2164);
                                                                           }
                                                                           §§goto(addr2232);
                                                                        }
                                                                     }
                                                                     §§goto(addr2125);
                                                                  }
                                                                  §§goto(addr1976);
                                                               }
                                                               §§goto(addr1993);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr2000);
                                                   }
                                                   §§goto(addr2008);
                                                }
                                                §§goto(addr1946);
                                             }
                                             §§goto(addr1964);
                                          }
                                          §§goto(addr1967);
                                       }
                                       §§goto(addr3709);
                                    }
                                    else
                                    {
                                       addr566:
                                       this.§+!?§ = §+!M§;
                                       if(_loc35_ || param3)
                                       {
                                          §§push(this.§&!4§);
                                          if(!(_loc36_ && param3))
                                          {
                                             §§push(§§pop().§^>§(param1.indexA[0]));
                                             if(_loc35_ || param1)
                                             {
                                                _loc8_ = §§pop();
                                                _loc9_ = this.§&!4§.§^>§(param1.indexA[1]);
                                                _loc10_ = this.§9+§.§^>§(param1.indexB[0]);
                                                if(!_loc36_)
                                                {
                                                   §§push(this.m_localPoint);
                                                   loop128:
                                                   while(true)
                                                   {
                                                      §§push(0.5);
                                                      if(_loc35_ || this)
                                                      {
                                                         §§push(_loc8_.x);
                                                         if(_loc35_ || param1)
                                                         {
                                                            §§push(_loc9_.x);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            addr725:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         addr726:
                                                      }
                                                      addr727:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         continue loop128;
                                                      }
                                                   }
                                                }
                                                §§goto(addr638);
                                             }
                                             else
                                             {
                                                §§goto(addr1853);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr1853);
                                          }
                                       }
                                       else
                                       {
                                          addr1226:
                                          this.§+!?§ = §6!X§;
                                          addr1229:
                                          §§push(this.§9+§.§^>§(param1.indexB[0]));
                                          if(_loc35_)
                                          {
                                             §§goto(addr1238);
                                          }
                                          else
                                          {
                                             §§goto(addr1853);
                                          }
                                       }
                                    }
                                    §§goto(addr1853);
                                 }
                                 §§goto(addr566);
                              }
                              else if(param1.indexB[0] == param1.indexB[1])
                              {
                                 if(_loc35_ || param1)
                                 {
                                    §§goto(addr566);
                                 }
                                 §§goto(addr1229);
                              }
                              else
                              {
                                 if(param1.indexA[0] == param1.indexA[0])
                                 {
                                    if(!_loc35_)
                                    {
                                    }
                                    §§goto(addr1226);
                                 }
                                 else
                                 {
                                    §§goto(addr1853);
                                    §§push(this.§&!4§);
                                 }
                                 §§goto(addr1853);
                              }
                              §§goto(addr1853);
                           }
                           §§goto(addr149);
                        }
                     }
                  }
               }
               §§goto(addr137);
            }
            §§goto(addr149);
         }
         §§goto(addr97);
      }
      
      public function Evaluate(param1:b2Transform, param2:b2Transform) : Number
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc10_:b2Vec2 = null;
         §§push(this.§+!?§);
         if(!(_loc12_ && _loc3_))
         {
            var _loc11_:* = §§pop();
            if(_loc13_)
            {
               §§push(§?!c§);
               if(_loc13_ || param1)
               {
                  §§push(_loc11_);
                  if(_loc13_ || param2)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc13_ || param2)
                        {
                           addr403:
                           §§push(0);
                           if(!(_loc13_ || param1))
                           {
                              addr420:
                              §§push(_loc11_);
                              if(!(_loc12_ && _loc3_))
                              {
                                 addr428:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc12_)
                                    {
                                       §§push(1);
                                       if(_loc13_)
                                       {
                                          addr468:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc3_ = b2Math.§;%§(param1.R,this.§]]§);
                                                _loc4_ = b2Math.§;%§(param2.R,this.§]]§.§@H§());
                                                _loc5_ = this.§&!4§.§ X§(_loc3_);
                                                _loc6_ = this.§9+§.§ X§(_loc4_);
                                                _loc7_ = b2Math.§'!6§(param1,_loc5_);
                                                §§push((_loc8_ = b2Math.§'!6§(param2,_loc6_)).x);
                                                if(_loc13_)
                                                {
                                                   §§push(_loc7_.x);
                                                   if(!(_loc12_ && this))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc12_)
                                                      {
                                                         §§push(this.§]]§.x);
                                                         if(!_loc12_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc13_ || param1)
                                                            {
                                                               §§push(_loc8_.y);
                                                               if(_loc13_)
                                                               {
                                                                  §§push(_loc7_.y);
                                                                  if(_loc13_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc13_ || this)
                                                                     {
                                                                        addr131:
                                                                        §§push(§§pop() * this.§]]§.y);
                                                                        if(!_loc12_)
                                                                        {
                                                                           addr134:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc12_)
                                                                           {
                                                                              addr137:
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc12_ && this)
                                                                              {
                                                                              }
                                                                              §§goto(addr147);
                                                                           }
                                                                           §§push(§§pop());
                                                                        }
                                                                     }
                                                                     _loc9_ = §§pop();
                                                                     addr147:
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr131);
                                                               }
                                                            }
                                                            §§goto(addr137);
                                                         }
                                                         §§goto(addr131);
                                                      }
                                                      §§goto(addr137);
                                                   }
                                                   §§goto(addr134);
                                                }
                                                §§goto(addr137);
                                             case 1:
                                                _loc10_ = b2Math.§'q§(param1.R,this.§]]§);
                                                _loc7_ = b2Math.§'!6§(param1,this.m_localPoint);
                                                _loc4_ = b2Math.§;%§(param2.R,_loc10_.§@H§());
                                                _loc6_ = this.§9+§.§ X§(_loc4_);
                                                §§push((_loc8_ = b2Math.§'!6§(param2,_loc6_)).x);
                                                if(_loc13_)
                                                {
                                                   §§push(_loc7_.x);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc13_ || this)
                                                      {
                                                         §§push(_loc10_.x);
                                                         if(_loc13_ || param2)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc13_)
                                                            {
                                                               §§push(_loc8_.y);
                                                               if(!(_loc12_ && _loc3_))
                                                               {
                                                                  §§push(_loc7_.y);
                                                                  if(_loc13_)
                                                                  {
                                                                     §§goto(addr243);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc12_)
                                                                  {
                                                                     addr243:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc13_)
                                                                     {
                                                                        addr238:
                                                                        §§push(_loc10_.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc13_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc13_ || param1)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                               §§goto(addr243);
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         §§goto(addr238);
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                   §§goto(addr243);
                                                }
                                                addr256:
                                                return §§pop();
                                             case 2:
                                                _loc10_ = b2Math.§'q§(param2.R,this.§]]§);
                                                _loc8_ = b2Math.§'!6§(param2,this.m_localPoint);
                                                _loc3_ = b2Math.§;%§(param1.R,_loc10_.§@H§());
                                                _loc5_ = this.§&!4§.§ X§(_loc3_);
                                                §§push((_loc7_ = b2Math.§'!6§(param1,_loc5_)).x);
                                                if(!_loc12_)
                                                {
                                                   §§push(_loc8_.x);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc12_)
                                                      {
                                                         §§push(_loc10_.x);
                                                         if(!_loc12_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc13_ || param1)
                                                            {
                                                               §§push(_loc7_.y);
                                                               if(_loc13_ || _loc3_)
                                                               {
                                                                  addr325:
                                                                  §§push(_loc8_.y);
                                                                  if(!_loc12_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc13_ || _loc3_)
                                                                     {
                                                                        addr339:
                                                                        §§push(§§pop() * _loc10_.y);
                                                                        if(_loc13_)
                                                                        {
                                                                           §§goto(addr342);
                                                                        }
                                                                     }
                                                                     §§goto(addr354);
                                                                  }
                                                                  §§goto(addr339);
                                                               }
                                                               addr342:
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc13_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc13_ || param2)
                                                                  {
                                                                     addr354:
                                                                     §§push(_loc9_ = §§pop());
                                                                     if(!_loc13_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                               }
                                                               return §§pop();
                                                            }
                                                            §§goto(addr354);
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr354);
                                                   }
                                                   §§goto(addr339);
                                                }
                                                §§goto(addr354);
                                             default:
                                                b2Settings.b2Assert(false);
                                          }
                                          return 0;
                                          addr468:
                                          addr444:
                                       }
                                    }
                                    else
                                    {
                                       addr455:
                                       §§push(2);
                                       if(_loc12_ && param1)
                                       {
                                       }
                                    }
                                    §§goto(addr468);
                                 }
                                 else
                                 {
                                    §§push(§6!X§);
                                    if(_loc13_ || this)
                                    {
                                       addr454:
                                       if(§§pop() === _loc11_)
                                       {
                                          §§goto(addr455);
                                       }
                                       else
                                       {
                                          §§goto(addr468);
                                          §§push(3);
                                       }
                                       §§goto(addr468);
                                    }
                                 }
                                 §§goto(addr468);
                              }
                              §§goto(addr454);
                           }
                           else
                           {
                              addr411:
                           }
                           §§goto(addr468);
                        }
                        §§goto(addr455);
                     }
                     else
                     {
                        §§push(§+!M§);
                        if(!(_loc12_ && param1))
                        {
                           §§goto(addr420);
                        }
                     }
                     §§goto(addr444);
                  }
                  §§goto(addr428);
               }
               §§goto(addr411);
            }
            §§goto(addr403);
         }
         §§goto(addr468);
      }
   }
}
