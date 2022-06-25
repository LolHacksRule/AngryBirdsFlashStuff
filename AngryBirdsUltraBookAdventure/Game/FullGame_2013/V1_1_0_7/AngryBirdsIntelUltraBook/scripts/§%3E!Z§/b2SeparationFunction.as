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
         if(!(_loc2_ && _loc1_))
         {
            §^x§ = 1;
         }
         do
         {
            §-!-§ = 2;
            do
            {
               §3!J§ = 4;
            }
            while(!(_loc1_ || b2SeparationFunction));
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public var §&!_§:b2DistanceProxy;
      
      public var §2!+§:b2DistanceProxy;
      
      public var §3r§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §try§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.m_localPoint = new b2Vec2();
         }
         while(true)
         {
            this.§try§ = new b2Vec2();
            while(_loc2_ || _loc2_)
            {
               super();
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §`!D§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         var _loc32_:* = NaN;
         var _loc33_:* = NaN;
         var _loc34_:* = NaN;
         if(!(_loc36_ && param2))
         {
            this.§&!_§ = param2;
            if(!(_loc36_ && this))
            {
               this.§2!+§ = param4;
            }
         }
         var _loc6_:int = param1.count;
         if(_loc35_ || param2)
         {
            §§push(b2Settings);
            if(_loc35_)
            {
               §§push(0);
               if(_loc35_ || param2)
               {
                  §§push(_loc6_);
                  if(!(_loc36_ && param2))
                  {
                     §§push(§§pop() < §§pop());
                     if(_loc35_)
                     {
                        if(§§pop())
                        {
                           if(_loc35_ || param2)
                           {
                              §§pop();
                              addr150:
                              §§push(_loc6_ < 3);
                           }
                        }
                     }
                     §§pop().b2Assert(§§pop());
                     if(_loc35_)
                     {
                        if(_loc6_ == 1)
                        {
                           if(_loc35_ || param1)
                           {
                              this.§3r§ = §^x§;
                              if(!(_loc36_ && param2))
                              {
                                 addr174:
                                 §§push(this.§&!_§);
                                 if(_loc35_)
                                 {
                                    §§push(§§pop().§2l§(param1.indexA[0]));
                                    if(_loc35_ || this)
                                    {
                                       _loc7_ = §§pop();
                                       _loc10_ = this.§2!+§.§2l§(param1.indexB[0]);
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
                                                if(!(_loc36_ && param3))
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc35_)
                                                   {
                                                      §§push(_loc20_.x);
                                                      if(_loc35_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc35_)
                                                         {
                                                            §§push(_loc19_.col2);
                                                            if(!_loc36_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!(_loc36_ && this))
                                                               {
                                                                  addr248:
                                                                  §§push(_loc20_.y);
                                                                  if(!(_loc36_ && this))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc35_ || param3)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc36_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc36_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc35_ || this)
                                                                              {
                                                                              }
                                                                              addr287:
                                                                              §§push(_loc19_.col1.y);
                                                                              if(_loc35_)
                                                                              {
                                                                                 addr292:
                                                                                 §§push(_loc20_.x);
                                                                                 if(!_loc36_)
                                                                                 {
                                                                                    addr296:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc35_ || this)
                                                                                    {
                                                                                       addr304:
                                                                                       §§push(_loc19_.col2.y);
                                                                                       if(!(_loc36_ && param1))
                                                                                       {
                                                                                          addr317:
                                                                                          §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                       }
                                                                                       §§goto(addr317);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc35_)
                                                                                    {
                                                                                       addr321:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    _loc14_ = §§pop();
                                                                                    addr323:
                                                                                    _loc20_ = _loc10_;
                                                                                    _loc19_ = param5.R;
                                                                                    if(_loc35_ || this)
                                                                                    {
                                                                                       §§push(param5.position);
                                                                                       loop69:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!_loc36_)
                                                                                          {
                                                                                             §§push(_loc19_.col1);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr498:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc20_.x);
                                                                                                   addr500:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr501:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc19_.col2);
                                                                                                         addr503:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr504:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc20_.y);
                                                                                                               addr506:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr507:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr508:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc35_ || param3)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
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
                                                                                             addr497:
                                                                                          }
                                                                                          addr517:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc15_ = §§pop();
                                                                                             continue loop69;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr356);
                                                                                 }
                                                                                 §§goto(addr317);
                                                                              }
                                                                              §§goto(addr304);
                                                                           }
                                                                           _loc13_ = §§pop();
                                                                           if(_loc35_)
                                                                           {
                                                                              addr284:
                                                                              §§push(param3.position.y);
                                                                              if(_loc35_)
                                                                              {
                                                                                 §§goto(addr287);
                                                                              }
                                                                              §§goto(addr321);
                                                                           }
                                                                           §§goto(addr323);
                                                                        }
                                                                        §§goto(addr304);
                                                                     }
                                                                     §§goto(addr296);
                                                                  }
                                                               }
                                                               §§goto(addr317);
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr292);
                                                }
                                             }
                                             §§goto(addr287);
                                          }
                                          §§goto(addr284);
                                       }
                                       §§goto(addr296);
                                    }
                                    else
                                    {
                                       addr562:
                                       _loc8_ = §§pop();
                                       _loc9_ = this.§&!_§.§2l§(param1.indexA[1]);
                                       _loc10_ = this.§2!+§.§2l§(param1.indexB[0]);
                                       if(_loc35_)
                                       {
                                          §§push(this.m_localPoint);
                                          loop60:
                                          while(true)
                                          {
                                             §§push(0.5);
                                             addr679:
                                             while(true)
                                             {
                                                §§push(_loc8_.x);
                                                if(_loc35_ || param1)
                                                {
                                                   §§push(_loc9_.x);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr656:
                                                      §§push(_loc9_.y);
                                                      if(_loc35_ || this)
                                                      {
                                                         addr667:
                                                         §§pop().y = §§pop() * (§§pop() + §§pop());
                                                         addr666:
                                                         loop66:
                                                         while(_loc35_ || param3)
                                                         {
                                                            loop67:
                                                            while(true)
                                                            {
                                                               this.§try§ = b2Math.§66§(b2Math.§%M§(_loc9_,_loc8_),1);
                                                               while(true)
                                                               {
                                                                  if(_loc35_)
                                                                  {
                                                                     §§push(this.§try§);
                                                                     if(!(_loc35_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§pop().Normalize();
                                                                     if(_loc35_ || param1)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           §§push(this.§try§);
                                                                           break;
                                                                        }
                                                                        continue loop67;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop66;
                                                               }
                                                               _loc20_ = §§pop();
                                                               §§push((_loc19_ = param3.R).col1);
                                                               if(!(_loc36_ && param1))
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
                                                                           if(!(_loc36_ && param3))
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(!(_loc36_ && this))
                                                                              {
                                                                                 §§push(_loc20_.y);
                                                                                 if(!_loc36_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc35_ || param1)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc35_ || param3)
                                                                                       {
                                                                                          addr763:
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc36_ && param1)
                                                                                          {
                                                                                          }
                                                                                          addr789:
                                                                                          §§push(_loc20_.x);
                                                                                          if(!(_loc36_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc35_ || param1)
                                                                                             {
                                                                                                addr806:
                                                                                                §§push(_loc19_.col2.y);
                                                                                                if(_loc35_)
                                                                                                {
                                                                                                   addr814:
                                                                                                   §§push(§§pop() + §§pop() * _loc20_.y);
                                                                                                   if(!(_loc36_ && param3))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr814);
                                                                                             }
                                                                                             _loc18_ = §§pop();
                                                                                             addr824:
                                                                                             _loc20_ = this.m_localPoint;
                                                                                             _loc19_ = param3.R;
                                                                                             if(!(_loc36_ && param3))
                                                                                             {
                                                                                                §§push(param3.position);
                                                                                                if(!(_loc36_ && param2))
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(_loc35_)
                                                                                                   {
                                                                                                      §§push(_loc19_.col1);
                                                                                                      if(!_loc36_)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(!_loc36_)
                                                                                                         {
                                                                                                            §§push(_loc20_.x);
                                                                                                            if(!(_loc36_ && param3))
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc35_)
                                                                                                               {
                                                                                                                  §§push(_loc19_.col2);
                                                                                                                  if(!_loc36_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     if(_loc35_ || param3)
                                                                                                                     {
                                                                                                                        §§push(_loc20_.y);
                                                                                                                        if(_loc35_ || param3)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc35_ || this)
                                                                                                                           {
                                                                                                                              addr899:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!(_loc36_ && param3))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!_loc36_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(_loc35_)
                                                                                                                                    {
                                                                                                                                       _loc13_ = §§pop();
                                                                                                                                       if(_loc35_ || this)
                                                                                                                                       {
                                                                                                                                          addr923:
                                                                                                                                          §§push(param3.position.y);
                                                                                                                                          if(_loc35_)
                                                                                                                                          {
                                                                                                                                             addr926:
                                                                                                                                             §§push(_loc19_.col1.y);
                                                                                                                                             if(!_loc36_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc20_.x);
                                                                                                                                                if(_loc35_ || param3)
                                                                                                                                                {
                                                                                                                                                   addr940:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc35_)
                                                                                                                                                   {
                                                                                                                                                      addr945:
                                                                                                                                                      §§push(_loc19_.col2.y);
                                                                                                                                                      if(_loc36_ && param1)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr957:
                                                                                                                                                      §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                      if(_loc35_)
                                                                                                                                                      {
                                                                                                                                                         addr961:
                                                                                                                                                         _loc14_ = Number(§§pop());
                                                                                                                                                         _loc20_ = _loc10_;
                                                                                                                                                         _loc19_ = param5.R;
                                                                                                                                                         if(!_loc36_)
                                                                                                                                                         {
                                                                                                                                                            addr1192:
                                                                                                                                                            _loc15_ = Number(param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y));
                                                                                                                                                            addr1090:
                                                                                                                                                            addr1191:
                                                                                                                                                            addr1190:
                                                                                                                                                            addr1183:
                                                                                                                                                            addr1180:
                                                                                                                                                            addr1193:
                                                                                                                                                            addr1177:
                                                                                                                                                            addr1186:
                                                                                                                                                            addr1189:
                                                                                                                                                            addr1188:
                                                                                                                                                            addr1182:
                                                                                                                                                            addr1185:
                                                                                                                                                            addr1179:
                                                                                                                                                            §§push(param5.position);
                                                                                                                                                            if(!_loc36_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                               if(!_loc36_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc19_.col1);
                                                                                                                                                                  if(_loc35_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                     if(_loc35_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc20_.x);
                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1120:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           §§push(_loc19_.col2);
                                                                                                                                                                           if(!_loc36_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                              if(!_loc36_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc35_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc20_.y);
                                                                                                                                                                                    if(_loc35_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1144:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc35_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1156:
                                                                                                                                                                                             §§push(Number(§§pop() + (§§pop() + §§pop())));
                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc36_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc16_ = §§pop();
                                                                                                                                                                                                   addr1166:
                                                                                                                                                                                                   if(_loc35_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc35_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               if(_loc35_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr997:
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(!(_loc36_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc36_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                                                                           if(!_loc36_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc36_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                                                                 if(!_loc36_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc36_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                       if(!(_loc36_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc36_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1040:
                                                                                                                                                                                                                                                §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                if(!_loc36_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(!_loc36_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               if(!(_loc36_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                  if(_loc35_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1073:
                                                                                                                                                                                                                                                                     _loc21_ = §§pop();
                                                                                                                                                                                                                                                                     addr1075:
                                                                                                                                                                                                                                                                     if(§§pop() < 0)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc36_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1085:
                                                                                                                                                                                                                                                                              this.§try§.§6!B§();
                                                                                                                                                                                                                                                                              addr1088:
                                                                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr1090);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr3749);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1166);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1088);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1075);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1191);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1156);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1075);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1156);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1073);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1190);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1120);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1073);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1144);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1040);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1183);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1156);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1073);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1180);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr997);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1073);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1193);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1177);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1192);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1186);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1189);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1188);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1182);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1144);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1185);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1144);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1156);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1179);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1156);
                                                                                                                                                            }
                                                                                                                                                            addr1176:
                                                                                                                                                            §§goto(addr1176);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1085);
                                                                                                                                                         addr960:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr961);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr957);
                                                                                                                                                }
                                                                                                                                                addr955:
                                                                                                                                                §§goto(addr957);
                                                                                                                                                §§push(§§pop() * _loc20_.y);
                                                                                                                                             }
                                                                                                                                             §§goto(addr957);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr961);
                                                                                                                                    }
                                                                                                                                    §§goto(addr926);
                                                                                                                                 }
                                                                                                                                 §§goto(addr961);
                                                                                                                              }
                                                                                                                              §§goto(addr957);
                                                                                                                           }
                                                                                                                           §§goto(addr940);
                                                                                                                        }
                                                                                                                        §§goto(addr955);
                                                                                                                     }
                                                                                                                     §§goto(addr899);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr945);
                                                                                                      }
                                                                                                      §§goto(addr926);
                                                                                                   }
                                                                                                   §§goto(addr960);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr923);
                                                                                          }
                                                                                          §§goto(addr814);
                                                                                       }
                                                                                       _loc17_ = §§pop();
                                                                                       if(_loc35_ || param3)
                                                                                       {
                                                                                          addr781:
                                                                                          §§push(_loc19_.col1.y);
                                                                                          if(!(_loc36_ && param2))
                                                                                          {
                                                                                             §§goto(addr789);
                                                                                          }
                                                                                          §§goto(addr806);
                                                                                       }
                                                                                       §§goto(addr824);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr814);
                                                                           }
                                                                           §§goto(addr806);
                                                                        }
                                                                        §§goto(addr789);
                                                                     }
                                                                     §§goto(addr814);
                                                                  }
                                                                  §§goto(addr763);
                                                               }
                                                               §§goto(addr781);
                                                            }
                                                         }
                                                         continue loop60;
                                                      }
                                                   }
                                                }
                                                addr691:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr692:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      continue loop60;
                                                   }
                                                }
                                             }
                                          }
                                          addr678:
                                       }
                                       while(true)
                                       {
                                          §§push(this.m_localPoint);
                                          if(!(_loc36_ && this))
                                          {
                                             §§push(0.5);
                                             if(_loc35_ || param1)
                                             {
                                                if(!_loc36_)
                                                {
                                                   if(_loc35_)
                                                   {
                                                      §§push(_loc8_.y);
                                                      if(!(_loc36_ && param1))
                                                      {
                                                         if(_loc35_ || param1)
                                                         {
                                                            §§goto(addr656);
                                                         }
                                                         §§goto(addr691);
                                                      }
                                                      §§goto(addr666);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr679);
                                                   }
                                                }
                                                §§goto(addr692);
                                             }
                                             §§goto(addr667);
                                          }
                                          else
                                          {
                                             §§goto(addr678);
                                          }
                                       }
                                    }
                                    §§goto(addr3749);
                                 }
                                 else
                                 {
                                    addr550:
                                    §§push(§§pop().§2l§(param1.indexA[0]));
                                    if(_loc35_ || param2)
                                    {
                                       §§goto(addr562);
                                    }
                                    else
                                    {
                                       addr1228:
                                       _loc11_ = §§pop();
                                       _loc12_ = this.§2!+§.§2l§(param1.indexB[1]);
                                       _loc7_ = this.§&!_§.§2l§(param1.indexA[0]);
                                       if(!_loc36_)
                                       {
                                          §§push(this.m_localPoint);
                                          loop50:
                                          while(true)
                                          {
                                             §§push(0.5);
                                             addr1347:
                                             while(true)
                                             {
                                                §§push(_loc11_.x);
                                                addr1349:
                                                while(true)
                                                {
                                                   §§push(_loc12_.x);
                                                   addr1351:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr1352:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr1353:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop50;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr1343);
                                    }
                                 }
                                 §§goto(addr562);
                              }
                              else
                              {
                                 addr546:
                                 §§push(this.§&!_§);
                                 if(!_loc36_)
                                 {
                                    §§goto(addr550);
                                 }
                                 else
                                 {
                                    addr1868:
                                    _loc8_ = §§pop().§2l§(param1.indexA[0]);
                                    _loc9_ = this.§&!_§.§2l§(param1.indexA[1]);
                                    _loc11_ = this.§2!+§.§2l§(param1.indexB[0]);
                                    _loc12_ = this.§2!+§.§2l§(param1.indexB[1]);
                                    _loc23_ = b2Math.§%!r§(param3,_loc7_);
                                    _loc24_ = b2Math.§[!%§(param3.R,b2Math.§%M§(_loc9_,_loc8_));
                                    _loc25_ = b2Math.§%!r§(param5,_loc10_);
                                    _loc26_ = b2Math.§[!%§(param5.R,b2Math.§%M§(_loc12_,_loc11_));
                                    if(!(_loc36_ && param3))
                                    {
                                       §§push(_loc24_.x);
                                       if(_loc35_)
                                       {
                                          §§push(_loc24_.x);
                                          if(!_loc36_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc35_ || param3)
                                             {
                                                §§push(_loc24_.y);
                                                if(_loc35_ || this)
                                                {
                                                   §§push(_loc24_.y);
                                                   if(_loc35_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc36_ && param2))
                                                      {
                                                         addr1973:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc35_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc35_)
                                                            {
                                                               _loc27_ = §§pop();
                                                               if(!_loc36_)
                                                               {
                                                                  addr1982:
                                                                  §§push(_loc26_.x);
                                                                  if(_loc35_)
                                                                  {
                                                                     §§push(_loc26_.x);
                                                                     if(!(_loc36_ && this))
                                                                     {
                                                                        addr1995:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc35_ || this)
                                                                        {
                                                                           addr2003:
                                                                           §§push(_loc26_.y);
                                                                           if(_loc35_ || this)
                                                                           {
                                                                              addr2015:
                                                                              §§push(§§pop() + §§pop() * _loc26_.y);
                                                                              if(_loc35_ || this)
                                                                              {
                                                                                 addr2024:
                                                                                 _loc28_ = §§pop();
                                                                              }
                                                                              §§goto(addr2024);
                                                                           }
                                                                           §§goto(addr2015);
                                                                        }
                                                                        §§goto(addr2024);
                                                                     }
                                                                     §§goto(addr2015);
                                                                  }
                                                                  §§goto(addr2003);
                                                               }
                                                               _loc29_ = b2Math.§%M§(_loc26_,_loc24_);
                                                               if(_loc35_)
                                                               {
                                                                  §§push(_loc24_.x);
                                                                  loop0:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc29_.x);
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc24_.y);
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc29_.y);
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc30_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc26_.x);
                                                                                             loop9:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc29_.x);
                                                                                                if(_loc35_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc26_.y);
                                                                                                      addr2460:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc29_.y);
                                                                                                         addr2462:
                                                                                                         while(_loc35_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                   }
                                                                                                   addr2458:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   loop14:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop15:
                                                                                                      while(_loc35_)
                                                                                                      {
                                                                                                         _loc31_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc24_.x);
                                                                                                            loop17:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc26_.x);
                                                                                                               if(!(_loc36_ && param3))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc36_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc36_ && param2)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(!_loc35_)
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     §§push(_loc24_.y);
                                                                                                                     if(_loc35_)
                                                                                                                     {
                                                                                                                        if(!(_loc35_ || this))
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        §§push(_loc26_.y);
                                                                                                                        loop18:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr2441:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                           }
                                                                                                                           loop25:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc32_);
                                                                                                                              if(!(_loc35_ || this))
                                                                                                                              {
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              if(_loc35_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 loop26:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    loop27:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       loop28:
                                                                                                                                       while(_loc35_)
                                                                                                                                       {
                                                                                                                                          _loc33_ = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!(_loc36_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc21_ = §§pop();
                                                                                                                                                addr2362:
                                                                                                                                                loop32:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc33_);
                                                                                                                                                   if(!_loc36_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc36_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc35_)
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            loop33:
                                                                                                                                                            while(!(_loc36_ && param2))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() != §§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(b2Math);
                                                                                                                                                                     §§push(_loc32_);
                                                                                                                                                                     if(!_loc36_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc31_);
                                                                                                                                                                        if(!_loc36_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc36_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc30_);
                                                                                                                                                                              if(!(_loc36_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * _loc28_);
                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    if(!(_loc36_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2336:
                                                                                                                                                                                       §§push(_loc33_);
                                                                                                                                                                                       if(!(_loc36_ && param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr2345:
                                                                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr2345);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop().§?!?§(§§pop(),§§pop(),1));
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 addr2349:
                                                                                                                                                                                 addr2112:
                                                                                                                                                                                 loop48:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc21_ = §§pop();
                                                                                                                                                                                    addr2350:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr2156:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc32_);
                                                                                                                                                                                          if(!(_loc36_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc36_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop9;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop48;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr2215:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc28_);
                                                                                                                                                                                             if(!_loc36_)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc36_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc36_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc36_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               if(!(_loc36_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc36_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(!(_loc35_ || param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop26;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc36_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop33;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        _loc34_ = §§pop();
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        break loop28;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr2442:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                  continue loop26;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr2251:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(_loc35_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop0;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(_loc28_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop6;
                                                                                                                                                                                                            addr2365:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop28;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr2221:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(_loc35_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         break loop32;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop3;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop5;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr2218:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr2248);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop9;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc35_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc36_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop17;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop27;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr2345);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr2336);
                                                                                                                                                                  }
                                                                                                                                                                  addr2301:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2156);
                                                                                                                                                            }
                                                                                                                                                            addr2293:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr2458);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2460);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2349);
                                                                                                                                                }
                                                                                                                                                addr2104:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop25;
                                                                                                                                                }
                                                                                                                                                if(_loc36_ && param1)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§goto(addr2112);
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc32_ = §§pop();
                                                                                                                                          addr2444:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr2365);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr2462);
                                                                                                                           }
                                                                                                                           §§goto(addr2441);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr2441);
                                                                                                                  }
                                                                                                                  §§goto(addr2442);
                                                                                                               }
                                                                                                               §§goto(addr2441);
                                                                                                            }
                                                                                                            continue loop15;
                                                                                                            if(_loc36_ && param2)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§push(b2Math);
                                                                                                            §§push(_loc32_);
                                                                                                            if(_loc35_ || param2)
                                                                                                            {
                                                                                                               §§push(_loc30_);
                                                                                                               if(!(_loc36_ && param3))
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc35_ || this)
                                                                                                                  {
                                                                                                                     addr2070:
                                                                                                                     §§push(_loc27_);
                                                                                                                     if(!(_loc36_ && param2))
                                                                                                                     {
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                     }
                                                                                                                     §§push(§§pop().§?!?§(§§pop(),§§pop(),1));
                                                                                                                     if(_loc35_ || param3)
                                                                                                                     {
                                                                                                                        if(_loc35_ || this)
                                                                                                                        {
                                                                                                                           if(_loc35_)
                                                                                                                           {
                                                                                                                              if(!(_loc36_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc35_)
                                                                                                                                 {
                                                                                                                                    addr2097:
                                                                                                                                    if(!(_loc36_ && param1))
                                                                                                                                    {
                                                                                                                                       §§goto(addr2104);
                                                                                                                                    }
                                                                                                                                    while(_loc35_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc31_);
                                                                                                                                       if(!(_loc36_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc36_ && param2))
                                                                                                                                          {
                                                                                                                                             §§goto(addr2215);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2268);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2218);
                                                                                                                                       §§goto(addr2097);
                                                                                                                                    }
                                                                                                                                    continue loop2;
                                                                                                                                    addr2197:
                                                                                                                                 }
                                                                                                                                 §§goto(addr2221);
                                                                                                                              }
                                                                                                                              §§goto(addr2251);
                                                                                                                           }
                                                                                                                           §§goto(addr2267);
                                                                                                                        }
                                                                                                                        §§goto(addr2268);
                                                                                                                     }
                                                                                                                     §§goto(addr2112);
                                                                                                                  }
                                                                                                                  §§push(0);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr2070);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   addr2189:
                                                                                                   if(!(_loc35_ || param3))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr2197);
                                                                                                   §§push(§§pop() * §§pop());
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
                                                               §§goto(addr2397);
                                                            }
                                                            §§goto(addr2003);
                                                         }
                                                         §§goto(addr2024);
                                                      }
                                                   }
                                                   §§goto(addr2015);
                                                }
                                                §§goto(addr1973);
                                             }
                                             §§goto(addr2024);
                                          }
                                          §§goto(addr1995);
                                       }
                                       §§goto(addr2024);
                                    }
                                    §§goto(addr1982);
                                 }
                              }
                              §§goto(addr550);
                           }
                           else
                           {
                              addr1214:
                              §§push(this.§2!+§.§2l§(param1.indexB[0]));
                              if(!(_loc36_ && param1))
                              {
                                 §§goto(addr1228);
                              }
                              else
                              {
                                 §§goto(addr1868);
                              }
                           }
                           §§goto(addr1868);
                        }
                        else if(param1.indexB[0] == param1.indexB[1])
                        {
                           if(!(_loc36_ && param2))
                           {
                              this.§3r§ = §-!-§;
                              if(_loc35_ || param3)
                              {
                                 §§goto(addr546);
                              }
                              else
                              {
                                 §§goto(addr1214);
                              }
                           }
                           §§goto(addr1214);
                        }
                        else
                        {
                           if(param1.indexA[0] == param1.indexA[0])
                           {
                              if(!(_loc36_ && param3))
                              {
                                 this.§3r§ = §3!J§;
                              }
                              §§goto(addr1214);
                           }
                           else
                           {
                              §§goto(addr1868);
                              §§push(this.§&!_§);
                           }
                           §§goto(addr1868);
                        }
                        §§goto(addr1868);
                     }
                     §§goto(addr174);
                  }
               }
            }
            §§goto(addr150);
         }
         §§goto(addr1214);
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
         §§push(this.§3r§);
         if(_loc13_ || this)
         {
            var _loc11_:* = §§pop();
            if(_loc13_ || _loc3_)
            {
               §§push(§^x§);
               if(!_loc12_)
               {
                  §§push(_loc11_);
                  if(_loc13_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc13_ || this)
                        {
                           §§push(0);
                           if(_loc12_)
                           {
                              addr483:
                           }
                        }
                        else
                        {
                           addr480:
                           §§push(2);
                           if(!_loc12_)
                           {
                              §§goto(addr483);
                           }
                        }
                        addr489:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = b2Math.§0!&§(param1.R,this.§try§);
                              _loc4_ = b2Math.§0!&§(param2.R,this.§try§.§=,§());
                              _loc5_ = this.§&!_§.§7#§(_loc3_);
                              _loc6_ = this.§2!+§.§7#§(_loc4_);
                              _loc7_ = b2Math.§%!r§(param1,_loc5_);
                              §§push((_loc8_ = b2Math.§%!r§(param2,_loc6_)).x);
                              if(!(_loc12_ && param2))
                              {
                                 §§push(_loc7_.x);
                                 if(_loc13_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc13_ || param2)
                                    {
                                       §§push(this.§try§.x);
                                       if(_loc13_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc12_)
                                          {
                                             addr112:
                                             §§push(_loc8_.y);
                                             if(!(_loc12_ && param1))
                                             {
                                                §§push(_loc7_.y);
                                                if(!(_loc12_ && _loc3_))
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc12_)
                                                   {
                                                      addr136:
                                                      §§push(§§pop() * this.§try§.y);
                                                      if(!(_loc12_ && param2))
                                                      {
                                                         addr144:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc12_ && param2)
                                                         {
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                   }
                                                   _loc9_ = §§pop();
                                                   §§goto(addr162);
                                                }
                                                §§goto(addr136);
                                             }
                                             §§goto(addr144);
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr144);
                                    }
                                    §§goto(addr112);
                                 }
                                 §§goto(addr136);
                              }
                              addr162:
                              §§push(Number(§§pop()));
                              if(!(_loc12_ && _loc3_))
                              {
                                 return §§pop();
                              }
                           case 1:
                              _loc10_ = b2Math.§[!%§(param1.R,this.§try§);
                              _loc7_ = b2Math.§%!r§(param1,this.m_localPoint);
                              _loc4_ = b2Math.§0!&§(param2.R,_loc10_.§=,§());
                              _loc6_ = this.§2!+§.§7#§(_loc4_);
                              §§push((_loc8_ = b2Math.§%!r§(param2,_loc6_)).x);
                              if(!(_loc12_ && this))
                              {
                                 §§push(_loc7_.x);
                                 if(_loc13_ || this)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc12_)
                                    {
                                       §§push(_loc10_.x);
                                       if(_loc13_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc13_ || param2)
                                          {
                                             addr242:
                                             §§push(_loc8_.y);
                                             if(_loc13_)
                                             {
                                                §§push(_loc7_.y);
                                                if(_loc13_)
                                                {
                                                   §§goto(addr280);
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(!_loc12_)
                                                {
                                                   addr263:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc13_ || this)
                                                      {
                                                         addr279:
                                                         addr280:
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc12_ && param1))
                                                         {
                                                            addr258:
                                                            §§push(_loc10_.y);
                                                         }
                                                         _loc9_ = §§pop();
                                                         return §§pop();
                                                         §§push(§§pop());
                                                      }
                                                   }
                                                }
                                                §§goto(addr280);
                                             }
                                             §§goto(addr258);
                                          }
                                       }
                                       §§goto(addr280);
                                    }
                                    §§goto(addr279);
                                 }
                                 §§goto(addr263);
                              }
                              §§goto(addr242);
                           case 2:
                              _loc10_ = b2Math.§[!%§(param2.R,this.§try§);
                              _loc8_ = b2Math.§%!r§(param2,this.m_localPoint);
                              _loc3_ = b2Math.§0!&§(param1.R,_loc10_.§=,§());
                              _loc5_ = this.§&!_§.§7#§(_loc3_);
                              §§push((_loc7_ = b2Math.§%!r§(param1,_loc5_)).x);
                              if(_loc13_)
                              {
                                 §§push(_loc8_.x);
                                 if(_loc13_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc12_ && param2))
                                    {
                                       addr334:
                                       §§push(_loc10_.x);
                                       if(_loc13_ || param1)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc12_)
                                          {
                                             §§push(_loc7_.y);
                                             if(!_loc12_)
                                             {
                                                addr350:
                                                §§push(_loc8_.y);
                                                if(!_loc12_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc13_ || param2)
                                                   {
                                                      addr364:
                                                      §§push(§§pop() * _loc10_.y);
                                                      if(_loc13_)
                                                      {
                                                         addr367:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc13_ || param1)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc13_)
                                                            {
                                                               addr378:
                                                               §§push(_loc9_ = §§pop());
                                                               if(_loc12_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr378);
                                                      }
                                                   }
                                                   §§goto(addr378);
                                                }
                                                §§goto(addr364);
                                             }
                                             §§goto(addr367);
                                          }
                                          §§goto(addr378);
                                       }
                                       §§goto(addr350);
                                    }
                                    §§goto(addr378);
                                 }
                                 §§goto(addr364);
                              }
                              §§goto(addr334);
                           default:
                              b2Settings.b2Assert(false);
                        }
                        return 0;
                        addr488:
                     }
                     else
                     {
                        §§push(§-!-§);
                        if(_loc13_ || _loc3_)
                        {
                           §§push(_loc11_);
                           if(!_loc12_)
                           {
                              addr448:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc13_ || this)
                                 {
                                    §§push(1);
                                    if(_loc12_)
                                    {
                                       §§goto(addr483);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr480);
                                 }
                              }
                              else
                              {
                                 §§push(§3!J§);
                                 if(!(_loc12_ && param1))
                                 {
                                    addr479:
                                    if(§§pop() === _loc11_)
                                    {
                                       §§goto(addr480);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                              }
                              §§goto(addr488);
                           }
                           §§goto(addr479);
                        }
                        §§goto(addr483);
                     }
                     §§goto(addr483);
                  }
                  §§goto(addr448);
               }
               §§goto(addr483);
            }
            §§goto(addr480);
         }
         §§goto(addr489);
      }
   }
}
