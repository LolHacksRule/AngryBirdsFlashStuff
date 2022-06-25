package §'s§
{
   import §&L§.b2Mat22;
   import §&L§.b2Math;
   import §&L§.b2Transform;
   import §&L§.b2Vec2;
   import §+!,§.b2Settings;
   
   class b2SeparationFunction
   {
      
      public static const §@=§:int = 1;
      
      public static const §,!0§:int = 2;
      
      public static const §#,§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2SeparationFunction))
         {
            §@=§ = 1;
            while(true)
            {
               §,!0§ = 2;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            §#,§ = 4;
            if(!(_loc1_ && b2SeparationFunction))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §`!+§:b2DistanceProxy;
      
      public var §[!Q§:b2DistanceProxy;
      
      public var §32§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §[N§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.m_localPoint = new b2Vec2();
         }
         do
         {
            this.§[N§ = new b2Vec2();
            do
            {
               super();
            }
            while(!_loc1_);
            
         }
         while(!_loc1_);
         
      }
      
      public function §;o§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         var _loc28_:Number = NaN;
         var _loc29_:b2Vec2 = null;
         var _loc30_:* = NaN;
         var _loc31_:* = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         if(!_loc36_)
         {
            this.§`!+§ = param2;
            if(!_loc36_)
            {
               this.§[!Q§ = param4;
            }
         }
         var _loc6_:int = param1.count;
         if(_loc35_ || param2)
         {
            §§push(b2Settings);
            if(!_loc36_)
            {
               §§push(0);
               if(_loc35_ || param2)
               {
                  §§push(_loc6_);
                  if(_loc35_ || param2)
                  {
                     §§push(§§pop() < §§pop());
                     if(!(_loc36_ && this))
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc35_ || this)
                        {
                           §§push(§§pop());
                           if(!(_loc36_ && this))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              if(!_loc36_)
                              {
                                 addr154:
                                 §§pop();
                                 §§push(_loc6_ < 3);
                                 if(_loc35_)
                                 {
                                    addr160:
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              §§goto(addr160);
                           }
                           §§pop().b2Assert(§§pop());
                           if(_loc35_)
                           {
                              if(_loc6_ == 1)
                              {
                                 if(_loc35_)
                                 {
                                    this.§32§ = §@=§;
                                    if(_loc35_)
                                    {
                                       addr176:
                                       §§push(this.§`!+§);
                                       if(!(_loc36_ && param3))
                                       {
                                          §§push(§§pop().§6!'§(param1.indexA[0]));
                                          if(_loc35_)
                                          {
                                             _loc7_ = §§pop();
                                             _loc10_ = this.§[!Q§.§6!'§(param1.indexB[0]);
                                             _loc20_ = _loc7_;
                                             _loc19_ = param3.R;
                                             if(!_loc36_)
                                             {
                                                §§push(param3.position);
                                                if(_loc35_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc35_)
                                                   {
                                                      §§push(_loc19_.col1);
                                                      if(_loc35_ || this)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc36_)
                                                         {
                                                            §§push(_loc20_.x);
                                                            if(!(_loc36_ && param3))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc35_ || param2)
                                                               {
                                                                  §§push(_loc19_.col2);
                                                                  if(!(_loc36_ && param3))
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(!(_loc36_ && param3))
                                                                     {
                                                                        §§push(_loc20_.y);
                                                                        if(!_loc36_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc35_ || param1)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc36_)
                                                                              {
                                                                                 addr280:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc36_)
                                                                                 {
                                                                                    addr283:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc35_ || param1)
                                                                                    {
                                                                                       _loc13_ = §§pop();
                                                                                       if(_loc35_)
                                                                                       {
                                                                                          addr296:
                                                                                          §§push(param3.position.y);
                                                                                          if(!_loc36_)
                                                                                          {
                                                                                             addr299:
                                                                                             §§push(_loc19_.col1.y);
                                                                                             if(_loc35_ || param1)
                                                                                             {
                                                                                                §§push(_loc20_.x);
                                                                                                if(!_loc36_)
                                                                                                {
                                                                                                   addr313:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc36_ && param2))
                                                                                                   {
                                                                                                      addr321:
                                                                                                      addr323:
                                                                                                      §§push(_loc19_.col2.y);
                                                                                                      if(!_loc35_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr330:
                                                                                                      addr329:
                                                                                                      §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                      if(_loc35_)
                                                                                                      {
                                                                                                         addr333:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      _loc14_ = §§pop();
                                                                                                      _loc20_ = _loc10_;
                                                                                                      _loc19_ = param5.R;
                                                                                                      if(_loc35_ || param2)
                                                                                                      {
                                                                                                         §§push(param5.position);
                                                                                                         loop95:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            loop96:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc19_.col1);
                                                                                                               addr520:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(_loc35_)
                                                                                                                  {
                                                                                                                     §§push(_loc20_.x);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!(_loc36_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc19_.col2);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              addr536:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc20_.y);
                                                                                                                                 addr538:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    addr539:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr535:
                                                                                                                        }
                                                                                                                        addr496:
                                                                                                                        if(_loc36_ && param1)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                        loop107:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           loop108:
                                                                                                                           while(!(_loc36_ && param1))
                                                                                                                           {
                                                                                                                              _loc16_ = §§pop();
                                                                                                                              loop109:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§[N§);
                                                                                                                                 loop110:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc15_);
                                                                                                                                    if(_loc35_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          addr391:
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          if(!(_loc36_ && param2))
                                                                                                                                          {
                                                                                                                                             addr400:
                                                                                                                                             §§pop().y = §§pop() - §§pop();
                                                                                                                                             for(; !_loc36_; §§pop(),if(!(_loc35_ || param3))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             },if(_loc35_ || param3)
                                                                                                                                             {
                                                                                                                                                if(!_loc35_)
                                                                                                                                                {
                                                                                                                                                   continue loop109;
                                                                                                                                                }
                                                                                                                                                if(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr3723);
                                                                                                                                                }
                                                                                                                                                §§goto(addr381);
                                                                                                                                             },§§goto(addr413))
                                                                                                                                             {
                                                                                                                                                §§push(this.§[N§);
                                                                                                                                                if(_loc35_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().Normalize());
                                                                                                                                                   if(_loc35_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc36_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc36_)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         continue loop96;
                                                                                                                                                      }
                                                                                                                                                      continue loop107;
                                                                                                                                                   }
                                                                                                                                                   continue loop108;
                                                                                                                                                }
                                                                                                                                                addr412:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc36_)
                                                                                                                                                   {
                                                                                                                                                      continue loop110;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                   if(!_loc36_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc35_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr391);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr400);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   addr413:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr381:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr384);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr384:
                                                                                                                                             }
                                                                                                                                             continue loop95;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr412);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr541:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr542:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc15_ = §§pop();
                                                                                                                                 continue loop95;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr540:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr541);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr514);
                                                                                                   }
                                                                                                   §§goto(addr330);
                                                                                                }
                                                                                                addr328:
                                                                                                §§goto(addr329);
                                                                                                §§push(§§pop() * _loc20_.y);
                                                                                             }
                                                                                             §§goto(addr321);
                                                                                          }
                                                                                          §§goto(addr333);
                                                                                       }
                                                                                       §§goto(addr321);
                                                                                    }
                                                                                    §§goto(addr299);
                                                                                 }
                                                                                 §§goto(addr333);
                                                                              }
                                                                              §§goto(addr321);
                                                                           }
                                                                           §§goto(addr313);
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                     §§goto(addr313);
                                                                  }
                                                                  §§goto(addr323);
                                                               }
                                                            }
                                                            §§goto(addr321);
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr283);
                                                }
                                             }
                                             §§goto(addr296);
                                          }
                                          else
                                          {
                                             addr588:
                                             _loc8_ = §§pop();
                                             _loc9_ = this.§`!+§.§6!'§(param1.indexA[1]);
                                             _loc10_ = this.§[!Q§.§6!'§(param1.indexB[0]);
                                             if(!_loc36_)
                                             {
                                                §§push(this.m_localPoint);
                                                loop117:
                                                while(true)
                                                {
                                                   §§push(0.5);
                                                   addr698:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_.x);
                                                      if(!_loc36_)
                                                      {
                                                         §§push(_loc9_.x);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr675:
                                                            §§push(_loc9_.y);
                                                            if(!(_loc35_ || param3))
                                                            {
                                                               continue;
                                                            }
                                                            §§push(§§pop() * (§§pop() + §§pop()));
                                                            if(_loc35_ || this)
                                                            {
                                                               §§pop().y = §§pop();
                                                               loop123:
                                                               while(true)
                                                               {
                                                                  loop124:
                                                                  while(true)
                                                                  {
                                                                     this.§[N§ = b2Math.§#!%§(b2Math.§;v§(_loc9_,_loc8_),1);
                                                                     while(true)
                                                                     {
                                                                        if(_loc35_)
                                                                        {
                                                                           if(_loc35_)
                                                                           {
                                                                              §§push(this.§[N§);
                                                                              if(_loc36_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§pop().Normalize();
                                                                              if(!_loc36_)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(this.§[N§);
                                                                                    break;
                                                                                 }
                                                                                 continue loop124;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop117;
                                                                        }
                                                                        continue loop123;
                                                                     }
                                                                     _loc20_ = §§pop();
                                                                     _loc19_ = param3.R;
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
                                                                                       if(!(_loc36_ && param1))
                                                                                       {
                                                                                          §§push(_loc20_.y);
                                                                                          if(!(_loc36_ && param2))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc36_ && param1))
                                                                                             {
                                                                                                addr766:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc36_ && this))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc35_)
                                                                                                   {
                                                                                                      addr777:
                                                                                                      _loc17_ = §§pop();
                                                                                                      if(!(_loc36_ && param2))
                                                                                                      {
                                                                                                         addr787:
                                                                                                         §§push(_loc19_.col1.y);
                                                                                                         if(_loc35_)
                                                                                                         {
                                                                                                            addr790:
                                                                                                            §§push(_loc20_.x);
                                                                                                            if(!(_loc36_ && param3))
                                                                                                            {
                                                                                                               addr824:
                                                                                                               addr799:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc36_ && this))
                                                                                                               {
                                                                                                                  addr807:
                                                                                                                  §§push(_loc19_.col2.y);
                                                                                                                  if(_loc35_ || this)
                                                                                                                  {
                                                                                                                     addr819:
                                                                                                                     §§push(§§pop() * _loc20_.y);
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc18_ = §§pop();
                                                                                                               _loc20_ = this.m_localPoint;
                                                                                                               _loc19_ = param3.R;
                                                                                                               if(!(_loc36_ && param2))
                                                                                                               {
                                                                                                                  §§push(param3.position);
                                                                                                                  if(_loc35_ || param3)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     if(_loc35_ || param1)
                                                                                                                     {
                                                                                                                        §§push(_loc19_.col1);
                                                                                                                        if(!_loc36_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(_loc35_ || this)
                                                                                                                           {
                                                                                                                              §§push(_loc20_.x);
                                                                                                                              if(!(_loc36_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc35_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(_loc19_.col2);
                                                                                                                                    if(!(_loc36_ && param3))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(!(_loc36_ && param3))
                                                                                                                                       {
                                                                                                                                          §§push(_loc20_.y);
                                                                                                                                          if(_loc35_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc35_)
                                                                                                                                             {
                                                                                                                                                addr915:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc35_)
                                                                                                                                                {
                                                                                                                                                   addr918:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc35_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(_loc35_ || param3)
                                                                                                                                                      {
                                                                                                                                                         addr929:
                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                         if(!(_loc36_ && param2))
                                                                                                                                                         {
                                                                                                                                                            addr939:
                                                                                                                                                            §§push(param3.position.y);
                                                                                                                                                            if(!(_loc36_ && param3))
                                                                                                                                                            {
                                                                                                                                                               addr947:
                                                                                                                                                               §§push(_loc19_.col1.y);
                                                                                                                                                               if(_loc35_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc20_.x);
                                                                                                                                                                  if(_loc35_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     addr978:
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!(_loc36_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr969:
                                                                                                                                                                        §§push(_loc19_.col2.y);
                                                                                                                                                                        if(!_loc36_)
                                                                                                                                                                        {
                                                                                                                                                                           addr976:
                                                                                                                                                                           §§push(§§pop() * _loc20_.y);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc35_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        addr987:
                                                                                                                                                                        _loc14_ = Number(§§pop());
                                                                                                                                                                        _loc20_ = _loc10_;
                                                                                                                                                                        _loc19_ = param5.R;
                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1195:
                                                                                                                                                                           §§push(param5.position.x);
                                                                                                                                                                           §§push(_loc19_.col1.x);
                                                                                                                                                                           if(_loc35_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc20_.x);
                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1224:
                                                                                                                                                                                 addr1225:
                                                                                                                                                                                 addr1226:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!(_loc36_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1219:
                                                                                                                                                                                    §§push(_loc19_.col2.x);
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc15_ = Number(§§pop() + §§pop());
                                                                                                                                                                                 addr1227:
                                                                                                                                                                                 §§push(param5.position);
                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1141:
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    if(!_loc36_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc36_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc19_.col1);
                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1155:
                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                             §§push(_loc20_.x);
                                                                                                                                                                                             if(!(_loc36_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1167:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   §§push(_loc19_.col2);
                                                                                                                                                                                                   if(!(_loc36_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1177:
                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                      §§push(_loc20_.y);
                                                                                                                                                                                                      if(!(_loc36_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1190:
                                                                                                                                                                                                         _loc16_ = Number(§§pop() + (§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                                         addr1061:
                                                                                                                                                                                                         addr1191:
                                                                                                                                                                                                         addr1187:
                                                                                                                                                                                                         addr1189:
                                                                                                                                                                                                         addr1188:
                                                                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                                                                         if(_loc35_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1073:
                                                                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                                                                               if(!_loc36_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc36_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                                                                        if(!(_loc36_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc36_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!_loc36_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1093:
                                                                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                                                                 if(_loc35_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1101:
                                                                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                                                                    if(!_loc36_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc36_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc36_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1125:
                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                if(!(_loc36_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1124:
                                                                                                                                                                                                                                                   §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!_loc36_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1128:
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   if(!_loc36_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1131:
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      if(!_loc36_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc21_ = §§pop();
                                                                                                                                                                                                                                                         addr1134:
                                                                                                                                                                                                                                                         §§push(_loc21_);
                                                                                                                                                                                                                                                         if(_loc35_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                                                                               if(_loc35_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc35_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc35_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc36_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.§[N§.§%`§();
                                                                                                                                                                                                                                                                                    addr1052:
                                                                                                                                                                                                                                                                                    if(!(_loc36_ && param2))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1059:
                                                                                                                                                                                                                                                                                       if(false)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1061);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1228);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1191);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1227);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1134);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1052);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1228:
                                                                                                                                                                                                                                                                        §§goto(addr3723);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1167);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1073);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1125);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1128);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1131);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1195);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1190);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1155);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1223:
                                                                                                                                                                                                                                             §§goto(addr1224);
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1177);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1187);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1124);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1128);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1224);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1101);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1189);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1093);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1188);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1141);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1128);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1222:
                                                                                                                                                                                                      §§goto(addr1223);
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1219);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1220:
                                                                                                                                                                                                §§goto(addr1222);
                                                                                                                                                                                                §§push(_loc20_.y);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1190);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1195);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1225);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1226);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1195);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1220);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1224);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1059);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr987);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr978);
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr978);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr987);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr947);
                                                                                                                                                }
                                                                                                                                                §§goto(addr969);
                                                                                                                                             }
                                                                                                                                             §§goto(addr978);
                                                                                                                                          }
                                                                                                                                          §§goto(addr976);
                                                                                                                                       }
                                                                                                                                       §§goto(addr915);
                                                                                                                                    }
                                                                                                                                    §§goto(addr969);
                                                                                                                                 }
                                                                                                                                 §§goto(addr978);
                                                                                                                              }
                                                                                                                              §§goto(addr976);
                                                                                                                           }
                                                                                                                           §§goto(addr918);
                                                                                                                        }
                                                                                                                        §§goto(addr947);
                                                                                                                     }
                                                                                                                     §§goto(addr929);
                                                                                                                  }
                                                                                                                  §§goto(addr939);
                                                                                                               }
                                                                                                               §§goto(addr987);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc35_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr824);
                                                                                                   }
                                                                                                   §§goto(addr790);
                                                                                                }
                                                                                                §§goto(addr807);
                                                                                             }
                                                                                             §§goto(addr799);
                                                                                          }
                                                                                          §§goto(addr819);
                                                                                       }
                                                                                       §§goto(addr766);
                                                                                    }
                                                                                    §§goto(addr807);
                                                                                 }
                                                                                 §§goto(addr777);
                                                                              }
                                                                              §§goto(addr824);
                                                                           }
                                                                           §§goto(addr807);
                                                                        }
                                                                     }
                                                                     §§goto(addr787);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  continue loop117;
                                                               }
                                                               addr706:
                                                            }
                                                         }
                                                      }
                                                      addr705:
                                                      while(true)
                                                      {
                                                         §§goto(addr706);
                                                      }
                                                   }
                                                }
                                                addr697:
                                             }
                                             while(true)
                                             {
                                                §§push(this.m_localPoint);
                                                if(!(_loc36_ && param2))
                                                {
                                                   §§push(0.5);
                                                   if(!_loc36_)
                                                   {
                                                      if(!(_loc36_ && this))
                                                      {
                                                         §§push(_loc8_.y);
                                                         if(_loc35_ || this)
                                                         {
                                                            if(!(_loc36_ && param2))
                                                            {
                                                               §§goto(addr675);
                                                            }
                                                            §§goto(addr705);
                                                         }
                                                         §§goto(addr685);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr698);
                                                      }
                                                   }
                                                   §§goto(addr685);
                                                }
                                                else
                                                {
                                                   §§goto(addr697);
                                                }
                                             }
                                          }
                                          §§goto(addr3723);
                                       }
                                       else
                                       {
                                          addr576:
                                          §§push(§§pop().§6!'§(param1.indexA[0]));
                                          if(_loc35_ || param3)
                                          {
                                             §§goto(addr588);
                                          }
                                          else
                                          {
                                             addr1861:
                                             _loc8_ = §§pop();
                                             _loc9_ = this.§`!+§.§6!'§(param1.indexA[1]);
                                             _loc11_ = this.§[!Q§.§6!'§(param1.indexB[0]);
                                             _loc12_ = this.§[!Q§.§6!'§(param1.indexB[1]);
                                             _loc23_ = b2Math.§?!L§(param3,_loc7_);
                                             _loc24_ = b2Math.§2!b§(param3.R,b2Math.§;v§(_loc9_,_loc8_));
                                             _loc25_ = b2Math.§?!L§(param5,_loc10_);
                                             _loc26_ = b2Math.§2!b§(param5.R,b2Math.§;v§(_loc12_,_loc11_));
                                             if(!(_loc36_ && this))
                                             {
                                                §§push(_loc24_.x);
                                                if(_loc35_)
                                                {
                                                   §§push(_loc24_.x);
                                                   if(_loc35_ || this)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc36_)
                                                      {
                                                         §§push(_loc24_.y);
                                                         if(_loc35_)
                                                         {
                                                            addr1955:
                                                            §§push(_loc24_.y);
                                                            if(_loc35_ || this)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc36_ && param3))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc36_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc36_)
                                                                     {
                                                                        _loc27_ = §§pop();
                                                                        if(!_loc36_)
                                                                        {
                                                                           §§push(_loc26_.x);
                                                                           if(!(_loc36_ && param1))
                                                                           {
                                                                              addr1990:
                                                                              §§push(_loc26_.x);
                                                                              if(!(_loc36_ && param2))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc36_)
                                                                                 {
                                                                                    addr2002:
                                                                                    §§push(_loc26_.y);
                                                                                    if(!_loc35_)
                                                                                    {
                                                                                    }
                                                                                    addr2009:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc36_ && param2))
                                                                                    {
                                                                                       addr2018:
                                                                                       _loc28_ = §§pop();
                                                                                       _loc29_ = b2Math.§;v§(_loc26_,_loc24_);
                                                                                       if(!(_loc36_ && param2))
                                                                                       {
                                                                                          §§push(_loc24_.x);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc29_.x);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc24_.y);
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
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc30_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc26_.x);
                                                                                                                     if(!_loc36_)
                                                                                                                     {
                                                                                                                        §§push(_loc29_.x);
                                                                                                                        loop50:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc35_ || param1)
                                                                                                                           {
                                                                                                                              §§push(_loc26_.y);
                                                                                                                              while(_loc35_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc29_.y);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    addr2429:
                                                                                                                                    while(!(_loc36_ && param3))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop44;
                                                                                                                                    addr2374:
                                                                                                                                    while(_loc35_ || param3)
                                                                                                                                    {
                                                                                                                                       if(!(_loc36_ && param3))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          continue loop50;
                                                                                                                                       }
                                                                                                                                       continue loop45;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop46;
                                                                                                                              addr2419:
                                                                                                                           }
                                                                                                                           addr2438:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc31_ = §§pop();
                                                                                                                              addr2439:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc24_.x);
                                                                                                                                 addr2367:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc26_.x);
                                                                                                                                    addr2369:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr2370:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc24_.y);
                                                                                                                                          addr2372:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr2374);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr2437);
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
                                                                                       §§goto(addr2243);
                                                                                       addr2017:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr2018);
                                                                              }
                                                                              addr2008:
                                                                              §§goto(addr2009);
                                                                              §§push(§§pop() * _loc26_.y);
                                                                           }
                                                                           §§goto(addr2002);
                                                                        }
                                                                        §§goto(addr2018);
                                                                     }
                                                                     §§goto(addr2017);
                                                                  }
                                                                  §§goto(addr2018);
                                                               }
                                                               §§goto(addr2002);
                                                            }
                                                            §§goto(addr2008);
                                                         }
                                                         §§goto(addr2002);
                                                      }
                                                      §§goto(addr1990);
                                                   }
                                                   §§goto(addr1955);
                                                }
                                                §§goto(addr2002);
                                             }
                                             §§goto(addr2018);
                                          }
                                       }
                                       §§goto(addr588);
                                    }
                                    else
                                    {
                                       §§goto(addr1245);
                                    }
                                 }
                                 else
                                 {
                                    addr561:
                                    this.§32§ = §,!0§;
                                    if(_loc35_ || param1)
                                    {
                                       addr572:
                                       §§push(this.§`!+§);
                                       if(!_loc36_)
                                       {
                                          §§goto(addr576);
                                       }
                                       else
                                       {
                                          addr1856:
                                          §§push(§§pop().§6!'§(param1.indexA[0]));
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr1245);
                                    }
                                    §§goto(addr1861);
                                 }
                                 §§goto(addr1245);
                              }
                              else if(param1.indexB[0] == param1.indexB[1])
                              {
                                 if(_loc35_ || this)
                                 {
                                    §§goto(addr561);
                                 }
                                 §§goto(addr1245);
                              }
                              else
                              {
                                 if(param1.indexA[0] == param1.indexA[0])
                                 {
                                    if(!(_loc36_ && param3))
                                    {
                                       §§goto(addr1245);
                                    }
                                    addr1245:
                                    this.§32§ = §#,§;
                                    §§push(this.§[!Q§.§6!'§(param1.indexB[0]));
                                    if(!_loc36_)
                                    {
                                       _loc11_ = §§pop();
                                       _loc12_ = this.§[!Q§.§6!'§(param1.indexB[1]);
                                       _loc7_ = this.§`!+§.§6!'§(param1.indexA[0]);
                                       if(!(_loc36_ && param1))
                                       {
                                          §§push(this.m_localPoint);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(0.5);
                                             loop1:
                                             while(true)
                                             {
                                                §§push(_loc11_.x);
                                                if(!_loc36_)
                                                {
                                                   §§push(_loc12_.x);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr1331:
                                                      §§push(_loc12_.y);
                                                      if(_loc36_ && param2)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc35_)
                                                      {
                                                         addr1344:
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc36_)
                                                         {
                                                            if(_loc36_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§pop().y = §§pop();
                                                            while(true)
                                                            {
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  this.§[N§ = b2Math.§#!%§(b2Math.§;v§(_loc12_,_loc11_),1);
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     if(_loc35_)
                                                                     {
                                                                        §§push(this.§[N§);
                                                                        if(!_loc36_)
                                                                        {
                                                                           §§pop().Normalize();
                                                                           if(_loc36_ && param3)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc36_)
                                                                           {
                                                                              break loop7;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 §§push(this.§[N§);
                                                                                 break loop8;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  _loc20_ = §§pop();
                                                                  _loc19_ = param5.R;
                                                                  if(_loc35_)
                                                                  {
                                                                     §§push(_loc19_.col1);
                                                                     if(_loc35_ || param3)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!(_loc36_ && this))
                                                                        {
                                                                           §§push(_loc20_.x);
                                                                           if(!_loc36_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc35_ || this)
                                                                              {
                                                                                 §§push(_loc19_.col2);
                                                                                 if(!(_loc36_ && param1))
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc35_)
                                                                                    {
                                                                                       addr1414:
                                                                                       §§push(_loc20_.y);
                                                                                       if(_loc35_ || param3)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc36_ && param3))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc35_)
                                                                                             {
                                                                                                addr1434:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc36_ && param3))
                                                                                                {
                                                                                                   _loc17_ = §§pop();
                                                                                                   if(!_loc36_)
                                                                                                   {
                                                                                                      addr1447:
                                                                                                      §§push(_loc19_.col1.y);
                                                                                                      if(!(_loc36_ && this))
                                                                                                      {
                                                                                                         addr1455:
                                                                                                         §§push(_loc20_.x);
                                                                                                         if(!(_loc36_ && param1))
                                                                                                         {
                                                                                                            addr1464:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc36_ && param2)
                                                                                                            {
                                                                                                            }
                                                                                                            addr1494:
                                                                                                            _loc18_ = Number(§§pop());
                                                                                                            _loc20_ = this.m_localPoint;
                                                                                                            _loc19_ = param5.R;
                                                                                                            if(_loc35_)
                                                                                                            {
                                                                                                               §§push(param5.position);
                                                                                                               if(_loc35_)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(!(_loc36_ && param1))
                                                                                                                  {
                                                                                                                     §§push(_loc19_.col1);
                                                                                                                     if(!_loc36_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        if(!_loc36_)
                                                                                                                        {
                                                                                                                           §§push(_loc20_.x);
                                                                                                                           if(_loc35_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc36_ && this))
                                                                                                                              {
                                                                                                                                 §§push(_loc19_.col2);
                                                                                                                                 if(_loc35_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(_loc35_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc20_.y);
                                                                                                                                       if(!(_loc36_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc36_)
                                                                                                                                          {
                                                                                                                                             addr1555:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc36_)
                                                                                                                                             {
                                                                                                                                                addr1558:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc35_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(_loc35_)
                                                                                                                                                   {
                                                                                                                                                      addr1564:
                                                                                                                                                      _loc15_ = §§pop();
                                                                                                                                                      if(!_loc36_)
                                                                                                                                                      {
                                                                                                                                                         addr1569:
                                                                                                                                                         §§push(param5.position.y);
                                                                                                                                                         if(_loc35_)
                                                                                                                                                         {
                                                                                                                                                            addr1574:
                                                                                                                                                            §§push(_loc19_.col1.y);
                                                                                                                                                            if(_loc35_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc20_.x);
                                                                                                                                                               if(!(_loc36_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  addr1591:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc36_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1594:
                                                                                                                                                                     addr1596:
                                                                                                                                                                     §§push(_loc19_.col2.y);
                                                                                                                                                                     if(_loc36_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     addr1603:
                                                                                                                                                                     §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1607:
                                                                                                                                                                        _loc16_ = Number(§§pop());
                                                                                                                                                                        _loc20_ = _loc7_;
                                                                                                                                                                        _loc19_ = param3.R;
                                                                                                                                                                        if(!(_loc36_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param3.position);
                                                                                                                                                                           loop10:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                              loop11:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc19_.col1);
                                                                                                                                                                                 loop12:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc20_.x);
                                                                                                                                                                                       if(!_loc36_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc19_.col2);
                                                                                                                                                                                             addr1834:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1723:
                                                                                                                                                                                             if(!(_loc35_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                             if(!(_loc36_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1738:
                                                                                                                                                                                                if(!(_loc36_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                            addr1751:
                                                                                                                                                                                                            loop34:
                                                                                                                                                                                                            while(_loc35_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               loop35:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc36_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                        addr1787:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     loop36:
                                                                                                                                                                                                                     while(!(_loc36_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        loop37:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc21_ = §§pop();
                                                                                                                                                                                                                           loop38:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc35_ || this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop10;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                                                                              if(_loc36_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop37;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc36_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc35_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc14_ = §§pop();
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop31:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                                                                          if(_loc36_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop37;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop11;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop37;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop35;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(!(_loc35_ || param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop37;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc14_);
                                                                                                                                                                                                                                                if(_loc36_ && this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop35;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1723);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1653:
                                                                                                                                                                                                                                             if(!(_loc35_ || param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!_loc36_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc36_ && this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop38;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.§[N§.§%`§();
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc36_ && this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break loop31;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop31;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr3723);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc19_.col2);
                                                                                                                                                                                                                                                   if(_loc36_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc20_.y);
                                                                                                                                                                                                                                                      if(!_loc36_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         break loop34;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                      §§goto(addr1738);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      addr1838:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1839);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1834);
                                                                                                                                                                                                                                                addr1797:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1837);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1817:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                                                                                                                 continue loop10;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop36;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc19_.col1);
                                                                                                                                                                                                                        if(!_loc36_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                                                                           break loop35;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                        §§goto(addr1764);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1764:
                                                                                                                                                                                                                     continue loop12;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1808:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(!(_loc36_ && param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1817);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc20_.x);
                                                                                                                                                                                                                  addr1794:
                                                                                                                                                                                                                  while(_loc35_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1797);
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1838);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1808);
                                                                                                                                                                                                               §§goto(addr1751);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc35_ || param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1653);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1835);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1794);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1802);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1751);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1835);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1839);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1672);
                                                                                                                                                                        addr1606:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1607);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1603);
                                                                                                                                                               }
                                                                                                                                                               addr1601:
                                                                                                                                                               §§goto(addr1603);
                                                                                                                                                               §§push(§§pop() * _loc20_.y);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1594);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1607);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1606);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1564);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1594);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1591);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1601);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1594);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1596);
                                                                                                                              }
                                                                                                                              §§goto(addr1594);
                                                                                                                           }
                                                                                                                           §§goto(addr1555);
                                                                                                                        }
                                                                                                                        §§goto(addr1558);
                                                                                                                     }
                                                                                                                     §§goto(addr1574);
                                                                                                                  }
                                                                                                                  §§goto(addr1564);
                                                                                                               }
                                                                                                               §§goto(addr1569);
                                                                                                            }
                                                                                                            §§goto(addr1607);
                                                                                                            addr1493:
                                                                                                         }
                                                                                                         addr1485:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc35_ || param3)
                                                                                                         {
                                                                                                            §§goto(addr1493);
                                                                                                         }
                                                                                                         §§goto(addr1494);
                                                                                                      }
                                                                                                      addr1474:
                                                                                                      §§push(_loc19_.col2.y);
                                                                                                      if(!(_loc36_ && param3))
                                                                                                      {
                                                                                                         addr1484:
                                                                                                         §§goto(addr1485);
                                                                                                         §§push(§§pop() * _loc20_.y);
                                                                                                      }
                                                                                                      §§goto(addr1485);
                                                                                                   }
                                                                                                   §§goto(addr1494);
                                                                                                }
                                                                                                §§goto(addr1455);
                                                                                             }
                                                                                             §§goto(addr1494);
                                                                                          }
                                                                                          §§goto(addr1464);
                                                                                       }
                                                                                       §§goto(addr1484);
                                                                                    }
                                                                                    §§goto(addr1455);
                                                                                 }
                                                                                 §§goto(addr1474);
                                                                              }
                                                                              §§goto(addr1434);
                                                                           }
                                                                           §§goto(addr1414);
                                                                        }
                                                                        §§goto(addr1464);
                                                                     }
                                                                     §§goto(addr1447);
                                                                  }
                                                                  §§goto(addr1464);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr1360:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         addr1360:
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                §§goto(addr1360);
                                             }
                                          }
                                       }
                                       §§goto(addr1302);
                                    }
                                    else
                                    {
                                       §§goto(addr1861);
                                    }
                                    return;
                                 }
                                 §§goto(addr1856);
                                 §§push(this.§`!+§);
                                 §§goto(addr1861);
                              }
                              §§goto(addr1856);
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr160);
                  }
               }
            }
            §§goto(addr154);
         }
         §§goto(addr572);
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
         §§push(this.§32§);
         if(_loc13_)
         {
            var _loc11_:* = §§pop();
            if(!_loc12_)
            {
               §§push(§@=§);
               if(!_loc12_)
               {
                  §§push(_loc11_);
                  if(_loc13_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc13_ || _loc3_)
                        {
                           §§push(0);
                           if(!_loc13_)
                           {
                           }
                        }
                        else
                        {
                           addr516:
                           §§push(3);
                           if(!_loc12_)
                           {
                              addr519:
                           }
                        }
                     }
                     else
                     {
                        §§push(§,!0§);
                        if(_loc13_ || this)
                        {
                           §§push(_loc11_);
                           if(_loc13_ || this)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc13_ || this)
                                 {
                                    §§push(1);
                                    if(!_loc12_)
                                    {
                                       addr521:
                                       loop8:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc3_ = b2Math.§?a§(param1.R,this.§[N§);
                                             _loc4_ = b2Math.§?a§(param2.R,this.§[N§.§[3§());
                                             _loc5_ = this.§`!+§.§-!K§(_loc3_);
                                             _loc6_ = this.§[!Q§.§-!K§(_loc4_);
                                             _loc7_ = b2Math.§?!L§(param1,_loc5_);
                                             _loc8_ = b2Math.§?!L§(param2,_loc6_);
                                             if(!(_loc12_ && param2))
                                             {
                                                §§push(_loc8_.x);
                                                if(_loc13_ || param1)
                                                {
                                                   §§push(_loc7_.x);
                                                   if(!(_loc12_ && param2))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc13_)
                                                      {
                                                         §§push(this.§[N§.x);
                                                         if(!_loc12_)
                                                         {
                                                            §§goto(addr120);
                                                         }
                                                         §§goto(addr132);
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                   addr120:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc12_ && param1))
                                                   {
                                                      addr128:
                                                      §§push(_loc8_.y);
                                                      if(_loc13_)
                                                      {
                                                         addr132:
                                                         §§push(_loc7_.y);
                                                         if(!(_loc12_ && param2))
                                                         {
                                                            §§goto(addr153);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      addr153:
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc12_ && param1))
                                                      {
                                                         §§push(this.§[N§.y);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc13_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc12_ && _loc3_))
                                                         {
                                                            addr164:
                                                            _loc9_ = §§pop();
                                                            if(_loc13_)
                                                            {
                                                               §§goto(addr168);
                                                            }
                                                            else
                                                            {
                                                               addr169:
                                                               _loc10_ = b2Math.§2!b§(param1.R,this.§[N§);
                                                               _loc7_ = b2Math.§?!L§(param1,this.m_localPoint);
                                                               _loc4_ = b2Math.§?a§(param2.R,_loc10_.§[3§());
                                                               _loc6_ = this.§[!Q§.§-!K§(_loc4_);
                                                               _loc8_ = b2Math.§?!L§(param2,_loc6_);
                                                               if(_loc13_)
                                                               {
                                                                  §§push(_loc8_.x);
                                                                  if(!(_loc12_ && param1))
                                                                  {
                                                                     §§push(_loc7_.x);
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!_loc12_)
                                                                        {
                                                                           §§push(_loc10_.x);
                                                                           if(_loc13_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc12_ && param2))
                                                                              {
                                                                                 §§push(_loc8_.y);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    addr258:
                                                                                    §§push(_loc7_.y);
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc13_ || _loc3_)
                                                                                       {
                                                                                          addr272:
                                                                                          §§push(§§pop() * _loc10_.y);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          §§goto(addr276);
                                                                                       }
                                                                                       §§goto(addr279);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr272);
                                                                              }
                                                                              §§goto(addr279);
                                                                           }
                                                                           §§goto(addr258);
                                                                        }
                                                                        addr276:
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc12_)
                                                                        {
                                                                           addr279:
                                                                           _loc9_ = §§pop();
                                                                           if(_loc12_ && param1)
                                                                           {
                                                                              addr289:
                                                                              _loc10_ = b2Math.§2!b§(param2.R,this.§[N§);
                                                                              _loc8_ = b2Math.§?!L§(param2,this.m_localPoint);
                                                                              _loc3_ = b2Math.§?a§(param1.R,_loc10_.§[3§());
                                                                              _loc5_ = this.§`!+§.§-!K§(_loc3_);
                                                                              _loc7_ = b2Math.§?!L§(param1,_loc5_);
                                                                              if(!_loc12_)
                                                                              {
                                                                                 §§push(_loc7_.x);
                                                                                 if(_loc13_ || _loc3_)
                                                                                 {
                                                                                    §§push(_loc8_.x);
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          §§push(_loc10_.x);
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_.y);
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.y);
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!(_loc12_ && param2))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc10_.y);
                                                                                                               addr414:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                               }
                                                                                                            }
                                                                                                            addr412:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               addr419:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc9_ = §§pop();
                                                                                                                  break loop8;
                                                                                                               }
                                                                                                               addr419:
                                                                                                            }
                                                                                                            §§goto(addr419);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr414);
                                                                                                   }
                                                                                                   addr400:
                                                                                                }
                                                                                                §§goto(addr412);
                                                                                             }
                                                                                             addr396:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr419);
                                                                                    }
                                                                                    §§goto(addr400);
                                                                                 }
                                                                                 §§goto(addr419);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                        §§goto(addr288);
                                                                     }
                                                                     §§goto(addr272);
                                                                  }
                                                                  addr288:
                                                                  return _loc9_;
                                                               }
                                                               §§goto(addr289);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr168);
                                                }
                                                §§goto(addr164);
                                             }
                                             addr168:
                                             return _loc9_;
                                          case 1:
                                             §§goto(addr169);
                                          case 2:
                                             §§goto(addr289);
                                          default:
                                             b2Settings.b2Assert(false);
                                             §§push(0);
                                             if(!(_loc12_ && param1))
                                             {
                                                return §§pop();
                                             }
                                             while(true)
                                             {
                                                if(!_loc12_)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr396);
                                                }
                                                §§goto(addr419);
                                                break loop8;
                                             }
                                             return §§pop();
                                       }
                                       continue loop7;
                                       addr521:
                                    }
                                    §§goto(addr521);
                                 }
                                 else
                                 {
                                    §§goto(addr516);
                                 }
                              }
                              else
                              {
                                 §§push(§#,§);
                                 if(!(_loc12_ && param1))
                                 {
                                    addr497:
                                    if(§§pop() === _loc11_)
                                    {
                                       if(_loc13_ || param1)
                                       {
                                          addr505:
                                          §§push(2);
                                          if(_loc13_ || this)
                                          {
                                             addr513:
                                             §§goto(addr521);
                                          }
                                          else
                                          {
                                             §§goto(addr519);
                                          }
                                       }
                                    }
                                    else if(true)
                                    {
                                       §§goto(addr521);
                                       §§push(3);
                                    }
                                    §§goto(addr521);
                                 }
                                 §§goto(addr519);
                              }
                              §§goto(addr519);
                           }
                           §§goto(addr497);
                        }
                        §§goto(addr513);
                     }
                     §§goto(addr521);
                  }
                  §§goto(addr497);
               }
               §§goto(addr519);
            }
            §§goto(addr505);
         }
         §§goto(addr521);
      }
   }
}
