package §>!Z§
{
   import §&H§.b2Mat22;
   import §&H§.b2Math;
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §@!3§.b2Settings;
   
   class b2SeparationFunction
   {
      
      public static const §^x§:int = 1;
      
      public static const §-!-§:int = 2;
      
      public static const §3!J§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^x§ = 1;
            while(true)
            {
               §-!-§ = 2;
               §§goto(addr46);
            }
         }
         addr46:
         while(true)
         {
            §3!J§ = 4;
            if(_loc1_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §&!_§:b2DistanceProxy;
      
      public var §2!+§:b2DistanceProxy;
      
      public var §3r§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §try§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_localPoint = new b2Vec2();
            do
            {
               this.§try§ = new b2Vec2();
               do
               {
                  super();
               }
               while(_loc2_ && this);
               
            }
            while(!_loc1_);
            
         }
      }
      
      public function §`!D§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         if(_loc36_ || param2)
         {
            this.§&!_§ = param2;
            if(_loc36_ || param3)
            {
               this.§2!+§ = param4;
            }
         }
         var _loc6_:int = param1.count;
         if(_loc36_)
         {
            §§push(b2Settings);
            if(!_loc35_)
            {
               §§push(0);
               if(!_loc35_)
               {
                  §§push(_loc6_);
                  if(!_loc35_)
                  {
                     §§push(§§pop() < §§pop());
                     if(!(_loc35_ && param3))
                     {
                        if(§§pop())
                        {
                           if(_loc36_)
                           {
                              §§pop();
                              addr136:
                              §§push(_loc6_ < 3);
                           }
                        }
                     }
                     §§pop().b2Assert(§§pop());
                     if(_loc36_)
                     {
                        addr140:
                        if(_loc6_ == 1)
                        {
                           if(_loc36_)
                           {
                              this.§3r§ = §^x§;
                              if(!_loc35_)
                              {
                                 addr150:
                                 §§push(this.§&!_§);
                                 if(_loc36_ || this)
                                 {
                                    §§push(§§pop().§2l§(param1.indexA[0]));
                                    if(_loc36_ || param2)
                                    {
                                       _loc7_ = §§pop();
                                       _loc10_ = this.§2!+§.§2l§(param1.indexB[0]);
                                       _loc20_ = _loc7_;
                                       _loc19_ = param3.R;
                                       if(_loc36_ || param3)
                                       {
                                          §§push(param3.position);
                                          if(_loc36_ || param3)
                                          {
                                             §§push(§§pop().x);
                                             if(!(_loc35_ && this))
                                             {
                                                §§push(_loc19_.col1);
                                                if(!_loc35_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc36_)
                                                   {
                                                      §§push(_loc20_.x);
                                                      if(_loc36_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc36_)
                                                         {
                                                            §§push(_loc19_.col2);
                                                            if(!_loc35_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!(_loc35_ && this))
                                                               {
                                                                  §§push(_loc20_.y);
                                                                  if(!_loc35_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc35_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc35_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc35_ && param1))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc36_)
                                                                              {
                                                                                 _loc13_ = §§pop();
                                                                                 if(!_loc35_)
                                                                                 {
                                                                                    addr265:
                                                                                    §§push(param3.position.y);
                                                                                    if(_loc36_)
                                                                                    {
                                                                                       addr268:
                                                                                       §§push(_loc19_.col1.y);
                                                                                       if(!_loc35_)
                                                                                       {
                                                                                          addr273:
                                                                                          §§push(_loc20_.x);
                                                                                          if(!_loc35_)
                                                                                          {
                                                                                             addr277:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc35_)
                                                                                             {
                                                                                             }
                                                                                             addr294:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc35_ && this))
                                                                                             {
                                                                                                addr303:
                                                                                                _loc14_ = Number(§§pop());
                                                                                                _loc20_ = _loc10_;
                                                                                                _loc19_ = param5.R;
                                                                                                if(_loc36_)
                                                                                                {
                                                                                                   §§push(param5.position);
                                                                                                   loop88:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr477:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc19_.col1);
                                                                                                         addr479:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc36_ || this)
                                                                                                            {
                                                                                                               §§push(_loc20_.x);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc36_)
                                                                                                                  {
                                                                                                                     addr492:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc19_.col2);
                                                                                                                        addr494:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                           {
                                                                                                                              §§push(_loc20_.y);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                              }
                                                                                                                              addr504:
                                                                                                                           }
                                                                                                                           addr505:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr492:
                                                                                                                  }
                                                                                                                  addr506:
                                                                                                                  addr446:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr507:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr508:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc15_ = §§pop();
                                                                                                                           continue loop88;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(_loc35_ && param3)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc35_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc35_ && this))
                                                                                                                     {
                                                                                                                        if(_loc36_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr508);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr472:
                                                                                                                     _loc16_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§try§);
                                                                                                                        loop97:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc15_);
                                                                                                                           addr375:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc13_);
                                                                                                                              addr376:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 addr377:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    addr378:
                                                                                                                                    while(!_loc35_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          do
                                                                                                                                          {
                                                                                                                                             §§push(this.§try§);
                                                                                                                                             continue loop97;
                                                                                                                                          }
                                                                                                                                          while(false);
                                                                                                                                          
                                                                                                                                          §§goto(addr3695);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop88;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(_loc35_ && this)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr334);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr506);
                                                                                                                  }
                                                                                                                  §§goto(addr508);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr492);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr380);
                                                                                                addr302:
                                                                                             }
                                                                                             §§goto(addr303);
                                                                                          }
                                                                                          addr293:
                                                                                          §§goto(addr294);
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§push(_loc19_.col2.y);
                                                                                       if(_loc36_ || param3)
                                                                                       {
                                                                                          addr292:
                                                                                          §§goto(addr293);
                                                                                          §§push(§§pop() * _loc20_.y);
                                                                                       }
                                                                                       §§goto(addr293);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr303);
                                                                              }
                                                                              §§goto(addr268);
                                                                           }
                                                                           §§goto(addr302);
                                                                        }
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         §§goto(addr294);
                                                      }
                                                      §§goto(addr277);
                                                   }
                                                   §§goto(addr273);
                                                }
                                             }
                                             §§goto(addr268);
                                          }
                                       }
                                       §§goto(addr265);
                                    }
                                    else
                                    {
                                       addr548:
                                       _loc8_ = §§pop();
                                       _loc9_ = this.§&!_§.§2l§(param1.indexA[1]);
                                       _loc10_ = this.§2!+§.§2l§(param1.indexB[0]);
                                       if(!_loc35_)
                                       {
                                          §§push(this.m_localPoint);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(0.5);
                                             if(!(_loc35_ && param2))
                                             {
                                                §§push(_loc8_.x);
                                                if(_loc36_)
                                                {
                                                   §§push(_loc9_.x);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr620:
                                                      §§push(_loc9_.y);
                                                      if(_loc35_ && param3)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() * (§§pop() + §§pop()));
                                                      if(_loc36_)
                                                      {
                                                         §§pop().y = §§pop();
                                                         loop5:
                                                         while(true)
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               this.§try§ = b2Math.§66§(b2Math.§%M§(_loc9_,_loc8_),1);
                                                               while(true)
                                                               {
                                                                  §§push(this.§try§);
                                                                  if(_loc35_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§pop().Normalize();
                                                                  if(_loc36_ || param3)
                                                                  {
                                                                     if(_loc36_)
                                                                     {
                                                                        if(_loc35_)
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        if(true)
                                                                        {
                                                                           §§push(this.§try§);
                                                                           break;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               _loc20_ = §§pop();
                                                               §§push((_loc19_ = param3.R).col1);
                                                               if(!(_loc35_ && param1))
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc36_)
                                                                  {
                                                                     §§push(_loc20_.x);
                                                                     if(!(_loc35_ && this))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc35_)
                                                                        {
                                                                           addr687:
                                                                           §§push(_loc19_.col2);
                                                                           if(!(_loc35_ && param3))
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc36_ || param1)
                                                                              {
                                                                                 §§push(_loc20_.y);
                                                                                 if(_loc36_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc35_ && this))
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc36_ || param2)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc35_ && param1))
                                                                                          {
                                                                                             _loc17_ = §§pop();
                                                                                             if(!(_loc35_ && this))
                                                                                             {
                                                                                                addr742:
                                                                                                §§push(_loc19_.col1.y);
                                                                                                if(_loc36_)
                                                                                                {
                                                                                                   addr745:
                                                                                                   §§push(_loc20_.x);
                                                                                                   if(_loc36_)
                                                                                                   {
                                                                                                      addr749:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc35_)
                                                                                                      {
                                                                                                         addr752:
                                                                                                         §§push(_loc19_.col2.y);
                                                                                                         if(!_loc35_)
                                                                                                         {
                                                                                                            addr757:
                                                                                                            §§push(§§pop() * _loc20_.y);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc36_)
                                                                                                         {
                                                                                                            addr763:
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      _loc18_ = §§pop();
                                                                                                      addr765:
                                                                                                      _loc20_ = this.m_localPoint;
                                                                                                      _loc19_ = param3.R;
                                                                                                      if(_loc36_ || param1)
                                                                                                      {
                                                                                                         §§push(param3.position);
                                                                                                         if(_loc36_ || param3)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(!_loc35_)
                                                                                                            {
                                                                                                               §§push(_loc19_.col1);
                                                                                                               if(_loc36_ || param3)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(_loc36_)
                                                                                                                  {
                                                                                                                     §§push(_loc20_.x);
                                                                                                                     if(!_loc35_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!(_loc35_ && param3))
                                                                                                                        {
                                                                                                                           addr816:
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
                                                                                                                                    if(!_loc35_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc36_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc36_ || param3)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(_loc36_ || param3)
                                                                                                                                             {
                                                                                                                                                addr854:
                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                if(!(_loc35_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr864:
                                                                                                                                                   §§push(param3.position.y);
                                                                                                                                                   if(_loc36_ || param2)
                                                                                                                                                   {
                                                                                                                                                      addr872:
                                                                                                                                                      §§push(_loc19_.col1.y);
                                                                                                                                                      if(!(_loc35_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr882:
                                                                                                                                                         §§push(_loc20_.x);
                                                                                                                                                         if(!_loc35_)
                                                                                                                                                         {
                                                                                                                                                            addr886:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc36_ || param2)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr903:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc36_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr911:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                            _loc20_ = _loc10_;
                                                                                                                                                            _loc19_ = param5.R;
                                                                                                                                                            if(!_loc35_)
                                                                                                                                                            {
                                                                                                                                                               addr1168:
                                                                                                                                                               _loc15_ = Number(param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y));
                                                                                                                                                               addr1067:
                                                                                                                                                               addr1169:
                                                                                                                                                               addr1156:
                                                                                                                                                               addr1159:
                                                                                                                                                               addr1153:
                                                                                                                                                               addr1166:
                                                                                                                                                               addr1158:
                                                                                                                                                               addr1164:
                                                                                                                                                               addr1161:
                                                                                                                                                               addr1162:
                                                                                                                                                               addr1165:
                                                                                                                                                               addr1155:
                                                                                                                                                               addr1167:
                                                                                                                                                               §§push(param5.position);
                                                                                                                                                               if(_loc36_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  addr1078:
                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                  if(!(_loc35_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc19_.col1);
                                                                                                                                                                     if(_loc36_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1090:
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        §§push(_loc20_.x);
                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc35_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1104:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 §§push(_loc19_.col2);
                                                                                                                                                                                 if(_loc36_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1114:
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    §§push(_loc20_.y);
                                                                                                                                                                                    if(_loc36_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1124:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc36_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1132:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!(_loc35_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1140:
                                                                                                                                                                                             §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                             if(_loc36_ || param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc16_ = §§pop();
                                                                                                                                                                                                addr1149:
                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                if(_loc36_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc36_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc35_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                         if(!(_loc35_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            if(_loc36_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc36_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                                                                  if(!(_loc35_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc36_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc36_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc36_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr979:
                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                              if(!(_loc35_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc36_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc14_);
                                                                                                                                                                                                                                       if(_loc36_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1048);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc36_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc36_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(_loc36_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1015:
                                                                                                                                                                                                                                                if(_loc36_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1040:
                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                            if(_loc36_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1048);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1168);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1040);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1156);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1048);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1114);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1124);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1104);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1132);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1015);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1048);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1159);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1090);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1048);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1078);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr979);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1048:
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         if(_loc36_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         _loc21_ = §§pop();
                                                                                                                                                                                                         if(§§pop() < 0)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§try§.§6!B§();
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc36_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc36_ || param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1065:
                                                                                                                                                                                                                  if(false)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1067);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1170);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1169);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1149);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1170:
                                                                                                                                                                                                         §§goto(addr3695);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1140);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1040);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1153);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1166);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1158);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1164);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1161);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1162);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1165);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1124);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1155);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1167);
                                                                                                                                                               }
                                                                                                                                                               addr1152:
                                                                                                                                                               §§goto(addr1152);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1065);
                                                                                                                                                         }
                                                                                                                                                         addr902:
                                                                                                                                                         §§goto(addr903);
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc19_.col2.y);
                                                                                                                                                      if(!_loc35_)
                                                                                                                                                      {
                                                                                                                                                         addr901:
                                                                                                                                                         §§goto(addr902);
                                                                                                                                                         §§push(§§pop() * _loc20_.y);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr902);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr903);
                                                                                                                                             }
                                                                                                                                             §§goto(addr911);
                                                                                                                                          }
                                                                                                                                          §§goto(addr872);
                                                                                                                                       }
                                                                                                                                       §§goto(addr882);
                                                                                                                                    }
                                                                                                                                    §§goto(addr886);
                                                                                                                                 }
                                                                                                                                 §§goto(addr901);
                                                                                                                              }
                                                                                                                              §§goto(addr882);
                                                                                                                           }
                                                                                                                           §§goto(addr872);
                                                                                                                        }
                                                                                                                        §§goto(addr886);
                                                                                                                     }
                                                                                                                     §§goto(addr901);
                                                                                                                  }
                                                                                                                  §§goto(addr816);
                                                                                                               }
                                                                                                               §§goto(addr872);
                                                                                                            }
                                                                                                            §§goto(addr854);
                                                                                                         }
                                                                                                         §§goto(addr864);
                                                                                                      }
                                                                                                      §§goto(addr886);
                                                                                                   }
                                                                                                   §§goto(addr757);
                                                                                                }
                                                                                                §§goto(addr752);
                                                                                             }
                                                                                             §§goto(addr765);
                                                                                          }
                                                                                          §§goto(addr745);
                                                                                       }
                                                                                       §§goto(addr763);
                                                                                    }
                                                                                    §§goto(addr749);
                                                                                 }
                                                                                 §§goto(addr757);
                                                                              }
                                                                              §§goto(addr749);
                                                                           }
                                                                           §§goto(addr752);
                                                                        }
                                                                        §§goto(addr745);
                                                                     }
                                                                     §§goto(addr749);
                                                                  }
                                                                  §§goto(addr687);
                                                               }
                                                               §§goto(addr742);
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr653:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop0;
                                                         }
                                                         addr653:
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                }
                                                addr652:
                                             }
                                             §§goto(addr653);
                                          }
                                          addr637:
                                       }
                                       while(true)
                                       {
                                          §§push(this.m_localPoint);
                                          if(_loc36_)
                                          {
                                             §§push(0.5);
                                             if(_loc36_)
                                             {
                                                §§push(_loc8_.y);
                                                if(!_loc35_)
                                                {
                                                   if(_loc36_ || param3)
                                                   {
                                                      §§goto(addr620);
                                                   }
                                                   §§goto(addr652);
                                                }
                                             }
                                             §§goto(addr630);
                                          }
                                          else
                                          {
                                             §§goto(addr637);
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr1824:
                                    _loc8_ = §§pop().§2l§(param1.indexA[0]);
                                    _loc9_ = this.§&!_§.§2l§(param1.indexA[1]);
                                    _loc11_ = this.§2!+§.§2l§(param1.indexB[0]);
                                    _loc12_ = this.§2!+§.§2l§(param1.indexB[1]);
                                    _loc23_ = b2Math.§%!r§(param3,_loc7_);
                                    _loc24_ = b2Math.§[!%§(param3.R,b2Math.§%M§(_loc9_,_loc8_));
                                    _loc25_ = b2Math.§%!r§(param5,_loc10_);
                                    _loc26_ = b2Math.§[!%§(param5.R,b2Math.§%M§(_loc12_,_loc11_));
                                    if(!(_loc35_ && param2))
                                    {
                                       §§push(_loc24_.x);
                                       if(_loc36_)
                                       {
                                          §§push(_loc24_.x);
                                          if(!_loc35_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc35_)
                                             {
                                                addr1913:
                                                §§push(_loc24_.y);
                                                if(_loc36_ || param3)
                                                {
                                                   §§push(_loc24_.y);
                                                   if(_loc36_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc35_)
                                                      {
                                                         addr1929:
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc35_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc36_)
                                                            {
                                                               _loc27_ = §§pop();
                                                               if(!(_loc35_ && param1))
                                                               {
                                                                  addr1943:
                                                                  §§push(_loc26_.x);
                                                                  if(!(_loc35_ && param2))
                                                                  {
                                                                     addr1952:
                                                                     §§push(_loc26_.x);
                                                                     if(!(_loc35_ && param3))
                                                                     {
                                                                        addr1984:
                                                                        addr1985:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc35_ && param1))
                                                                        {
                                                                           addr1969:
                                                                           §§push(_loc26_.y);
                                                                           if(!(_loc35_ && param1))
                                                                           {
                                                                              addr1978:
                                                                              §§push(§§pop() * _loc26_.y);
                                                                           }
                                                                        }
                                                                        _loc28_ = §§pop();
                                                                        _loc29_ = b2Math.§%M§(_loc26_,_loc24_);
                                                                        if(_loc36_)
                                                                        {
                                                                           §§push(_loc24_.x);
                                                                           if(_loc36_ || param2)
                                                                           {
                                                                              §§push(_loc29_.x);
                                                                              if(_loc36_ || param1)
                                                                              {
                                                                                 addr2437:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc24_.y);
                                                                                    addr2439:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc29_.y);
                                                                                       addr2441:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr2437:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc30_ = §§pop();
                                                                                       loop11:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc26_.x);
                                                                                          if(_loc36_)
                                                                                          {
                                                                                             §§push(_loc29_.x);
                                                                                             if(_loc36_ || param3)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc36_)
                                                                                                {
                                                                                                   addr2379:
                                                                                                   §§push(_loc26_.y);
                                                                                                   loop30:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc36_ || param2)
                                                                                                      {
                                                                                                         §§push(_loc29_.y);
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc36_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               loop29:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc35_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc36_ || this)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr2437);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr2439);
                                                                                                                     addr2401:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc31_ = §§pop();
                                                                                                                     while(_loc36_ || param2)
                                                                                                                     {
                                                                                                                        §§push(_loc24_.x);
                                                                                                                        if(!_loc35_)
                                                                                                                        {
                                                                                                                           if(!(_loc36_ || param2))
                                                                                                                           {
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                           if(_loc35_)
                                                                                                                           {
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           §§push(_loc26_.x);
                                                                                                                           loop15:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr2346:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc24_.y);
                                                                                                                                 addr2348:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc26_.y);
                                                                                                                                    loop18:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc35_ && this)
                                                                                                                                       {
                                                                                                                                          continue loop31;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          addr2289:
                                                                                                                                          while(!(_loc35_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc32_);
                                                                                                                                                if(!(_loc35_ && param3))
                                                                                                                                                {
                                                                                                                                                   if(!_loc35_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc36_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc32_);
                                                                                                                                                         if(_loc36_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            continue loop15;
                                                                                                                                                         }
                                                                                                                                                         continue loop18;
                                                                                                                                                      }
                                                                                                                                                      continue loop30;
                                                                                                                                                   }
                                                                                                                                                   continue loop29;
                                                                                                                                                }
                                                                                                                                                continue loop15;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr2360);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr2398:
                                                                                                            }
                                                                                                            §§goto(addr2441);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr2439);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr2401);
                                                                                             }
                                                                                             §§goto(addr2398);
                                                                                          }
                                                                                          §§goto(addr2379);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr2437);
                                                                        }
                                                                        §§goto(addr2328);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc35_)
                                                                     {
                                                                        §§goto(addr1984);
                                                                     }
                                                                     §§goto(addr1985);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr1984);
                                                         }
                                                         §§goto(addr1952);
                                                      }
                                                   }
                                                   §§goto(addr1978);
                                                }
                                                §§goto(addr1929);
                                             }
                                             §§goto(addr1969);
                                          }
                                          §§goto(addr1929);
                                       }
                                       §§goto(addr1913);
                                    }
                                    §§goto(addr1943);
                                 }
                                 §§goto(addr3695);
                              }
                              else
                              {
                                 addr1185:
                                 §§push(this.§2!+§.§2l§(param1.indexB[0]));
                                 if(_loc36_ || param3)
                                 {
                                    _loc11_ = §§pop();
                                    _loc12_ = this.§2!+§.§2l§(param1.indexB[1]);
                                    _loc7_ = this.§&!_§.§2l§(param1.indexA[0]);
                                    if(!(_loc35_ && param3))
                                    {
                                       §§push(this.m_localPoint);
                                       loop55:
                                       while(true)
                                       {
                                          §§push(0.5);
                                          addr1313:
                                          while(true)
                                          {
                                             §§push(_loc11_.x);
                                             addr1315:
                                             while(true)
                                             {
                                                §§push(_loc12_.x);
                                                addr1317:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr1318:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr1319:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         continue loop55;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr1259);
                                 }
                                 else
                                 {
                                    §§goto(addr1824);
                                 }
                              }
                              §§goto(addr1824);
                           }
                           §§goto(addr150);
                        }
                        else if(param1.indexB[0] == param1.indexB[1])
                        {
                           if(!_loc35_)
                           {
                              this.§3r§ = §-!-§;
                              if(_loc36_ || param2)
                              {
                                 addr532:
                                 §§push(this.§&!_§);
                                 if(_loc36_ || param2)
                                 {
                                    §§push(§§pop().§2l§(param1.indexA[0]));
                                    if(!_loc35_)
                                    {
                                       §§goto(addr548);
                                    }
                                    else
                                    {
                                       §§goto(addr1824);
                                    }
                                    return;
                                 }
                                 §§goto(addr1824);
                              }
                              else
                              {
                                 §§goto(addr1185);
                              }
                              §§goto(addr1824);
                           }
                           §§goto(addr532);
                        }
                        else
                        {
                           if(param1.indexA[0] == param1.indexA[0])
                           {
                              if(!_loc35_)
                              {
                                 this.§3r§ = §3!J§;
                              }
                              §§goto(addr1185);
                           }
                           else
                           {
                              §§goto(addr1824);
                              §§push(this.§&!_§);
                           }
                           §§goto(addr1824);
                        }
                        §§goto(addr1824);
                     }
                     §§goto(addr532);
                  }
               }
            }
            §§goto(addr136);
         }
         §§goto(addr140);
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
         §§push(this.§3r§);
         if(!_loc13_)
         {
            var _loc11_:* = §§pop();
            if(!(_loc13_ && param1))
            {
               §§push(§^x§);
               if(_loc12_ || this)
               {
                  §§push(_loc11_);
                  if(_loc12_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc12_)
                        {
                           addr420:
                           §§push(0);
                           if(_loc13_)
                           {
                              addr465:
                           }
                        }
                        else
                        {
                           addr448:
                           §§push(1);
                           if(!_loc12_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(§-!-§);
                        if(!_loc13_)
                        {
                           §§push(_loc11_);
                           if(_loc12_)
                           {
                              addr430:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc13_ && this))
                                 {
                                    §§goto(addr448);
                                 }
                                 else
                                 {
                                    addr462:
                                    §§push(2);
                                    if(!_loc13_)
                                    {
                                       §§goto(addr465);
                                    }
                                    addr470:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc3_ = b2Math.§0!&§(param1.R,this.§try§);
                                          _loc4_ = b2Math.§0!&§(param2.R,this.§try§.§=,§());
                                          _loc5_ = this.§&!_§.§7#§(_loc3_);
                                          _loc6_ = this.§2!+§.§7#§(_loc4_);
                                          _loc7_ = b2Math.§%!r§(param1,_loc5_);
                                          §§push((_loc8_ = b2Math.§%!r§(param2,_loc6_)).x);
                                          if(_loc12_ || param2)
                                          {
                                             §§push(_loc7_.x);
                                             if(!_loc13_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc12_ || param2)
                                                {
                                                   §§push(this.§try§.x);
                                                   if(_loc12_)
                                                   {
                                                      addr108:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc12_ || _loc3_)
                                                      {
                                                         §§push(_loc8_.y);
                                                         if(!_loc13_)
                                                         {
                                                            §§push(_loc7_.y);
                                                            if(!(_loc13_ && _loc3_))
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc12_ || this)
                                                               {
                                                                  addr140:
                                                                  §§push(§§pop() * this.§try§.y);
                                                                  if(_loc12_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc12_ || this)
                                                                     {
                                                                        §§goto(addr161);
                                                                     }
                                                                     §§goto(addr159);
                                                                  }
                                                               }
                                                               _loc9_ = §§pop();
                                                               §§goto(addr161);
                                                            }
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr140);
                                                }
                                                §§goto(addr161);
                                             }
                                             §§goto(addr108);
                                          }
                                          addr161:
                                          §§push(Number(§§pop()));
                                          if(_loc12_)
                                          {
                                             addr159:
                                             return §§pop();
                                          }
                                       case 1:
                                          _loc10_ = b2Math.§[!%§(param1.R,this.§try§);
                                          _loc7_ = b2Math.§%!r§(param1,this.m_localPoint);
                                          _loc4_ = b2Math.§0!&§(param2.R,_loc10_.§=,§());
                                          _loc6_ = this.§2!+§.§7#§(_loc4_);
                                          §§push((_loc8_ = b2Math.§%!r§(param2,_loc6_)).x);
                                          if(_loc12_ || param2)
                                          {
                                             §§push(_loc7_.x);
                                             if(!_loc13_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc13_ && param2))
                                                {
                                                   §§push(_loc10_.x);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc12_)
                                                      {
                                                         addr236:
                                                         §§push(_loc8_.y);
                                                         if(_loc12_ || param1)
                                                         {
                                                            §§push(_loc7_.y);
                                                            if(_loc12_ || _loc3_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc12_)
                                                               {
                                                                  addr259:
                                                                  §§push(§§pop() * _loc10_.y);
                                                                  if(_loc12_ || param2)
                                                                  {
                                                                     addr267:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc12_ || param2)
                                                                     {
                                                                     }
                                                                     §§goto(addr285);
                                                                  }
                                                               }
                                                               _loc9_ = §§pop();
                                                               §§goto(addr285);
                                                            }
                                                            §§goto(addr259);
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                   §§goto(addr267);
                                                }
                                                §§goto(addr236);
                                             }
                                             §§goto(addr259);
                                          }
                                          addr285:
                                          §§push(Number(§§pop()));
                                          if(_loc12_ || _loc3_)
                                          {
                                             return §§pop();
                                          }
                                       case 2:
                                          _loc10_ = b2Math.§[!%§(param2.R,this.§try§);
                                          _loc8_ = b2Math.§%!r§(param2,this.m_localPoint);
                                          _loc3_ = b2Math.§0!&§(param1.R,_loc10_.§=,§());
                                          _loc5_ = this.§&!_§.§7#§(_loc3_);
                                          §§push((_loc7_ = b2Math.§%!r§(param1,_loc5_)).x);
                                          if(_loc12_)
                                          {
                                             §§push(_loc8_.x);
                                             if(_loc12_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc12_)
                                                {
                                                   §§push(_loc10_.x);
                                                   if(_loc12_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc12_)
                                                      {
                                                         §§push(_loc7_.y);
                                                         if(_loc12_ || param1)
                                                         {
                                                            addr354:
                                                            §§push(_loc8_.y);
                                                            if(!_loc13_)
                                                            {
                                                               addr376:
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc13_ && param1))
                                                               {
                                                                  addr366:
                                                                  §§push(_loc10_.y);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc12_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc12_)
                                                                  {
                                                                     addr382:
                                                                     §§push(_loc9_ = §§pop());
                                                                     if(!_loc12_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr386);
                                                                  }
                                                                  §§goto(addr386);
                                                               }
                                                               §§goto(addr382);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc12_ || param1)
                                                            {
                                                               §§goto(addr376);
                                                            }
                                                            §§goto(addr382);
                                                         }
                                                         §§goto(addr376);
                                                      }
                                                      §§goto(addr386);
                                                   }
                                                   §§goto(addr366);
                                                }
                                                addr386:
                                                return §§pop();
                                             }
                                             §§goto(addr354);
                                          }
                                          §§goto(addr382);
                                       default:
                                          b2Settings.b2Assert(false);
                                    }
                                    return 0;
                                    addr470:
                                 }
                              }
                              else
                              {
                                 §§push(§3!J§);
                                 if(!(_loc13_ && param1))
                                 {
                                    addr460:
                                    §§push(_loc11_);
                                 }
                              }
                              §§goto(addr470);
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr462);
                           }
                           else
                           {
                              §§goto(addr462);
                              §§push(3);
                           }
                           §§goto(addr462);
                        }
                        §§goto(addr460);
                     }
                     §§goto(addr462);
                  }
                  §§goto(addr430);
               }
               §§goto(addr465);
            }
            §§goto(addr420);
         }
         §§goto(addr462);
      }
   }
}
