package §_-a5§
{
   import §_-Iw§.*;
   import §_-Ja§.*;
   import §_-lh§.*;
   import §_-qg§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var § case§:b2Vec2;
      
      private static var §_-Zw§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § case§ = new b2Vec2();
            if(_loc1_ || b2PositionSolverManifold)
            {
               §_-Zw§ = new b2Vec2();
            }
         }
      }
      
      public var §_-u5§:b2Vec2;
      
      public var §_-hn§:Vector.<b2Vec2>;
      
      public var §_-hz§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && this))
            {
               this.§_-u5§ = new b2Vec2();
               if(_loc3_)
               {
                  addr31:
                  this.§_-hz§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                  if(!(_loc2_ && this))
                  {
                     addr53:
                     this.§_-hn§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                  }
               }
               var _loc1_:int = 0;
               while(_loc1_ < b2Settings.b2_maxManifoldPoints)
               {
                  this.§_-hn§[_loc1_] = new b2Vec2();
                  if(_loc3_ || _loc1_)
                  {
                     _loc1_++;
                     if(!(_loc3_ || this))
                     {
                        break;
                     }
                  }
               }
               return;
            }
            §§goto(addr31);
         }
         §§goto(addr53);
      }
      
      public function §_-lc§(param1:b2ContactConstraint) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:b2Mat22 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         if(!_loc18_)
         {
            b2Settings.b2Assert(param1.§_-Ws§ > 0);
         }
         §§push(param1.type);
         if(_loc19_ || _loc3_)
         {
            var _loc17_:* = §§pop();
            if(_loc19_ || this)
            {
               §§push(b2Manifold.§_-1§);
               if(_loc19_)
               {
                  §§push(_loc17_);
                  if(_loc19_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc18_ && param1))
                        {
                           §§push(0);
                           if(!_loc19_)
                           {
                              addr1741:
                              if(§§pop() === _loc17_)
                              {
                                 addr1743:
                                 §§push(2);
                                 if(!_loc19_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           else
                           {
                              addr1723:
                           }
                           addr1759:
                           loop4:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc5_ = param1.§_-dL§.m_xf.R;
                                 _loc6_ = param1.localPoint;
                                 if(!_loc18_)
                                 {
                                    §§push(param1.§_-dL§);
                                    if(_loc19_ || _loc3_)
                                    {
                                       §§push(§§pop().m_xf);
                                       if(_loc19_ || this)
                                       {
                                          §§push(§§pop().position);
                                          if(!(_loc18_ && _loc2_))
                                          {
                                             §§push(§§pop().x);
                                             if(_loc19_ || param1)
                                             {
                                                §§push(_loc5_.col1);
                                                if(_loc19_ || this)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc19_ || this)
                                                   {
                                                      §§push(_loc6_.x);
                                                      if(_loc19_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc19_ || param1)
                                                         {
                                                            §§push(_loc5_.col2);
                                                            if(_loc19_ || this)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!(_loc18_ && _loc3_))
                                                               {
                                                                  §§push(_loc6_.y);
                                                                  if(!(_loc18_ && this))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc19_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc19_ || param1)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc19_)
                                                                              {
                                                                                 addr178:
                                                                                 _loc9_ = §§pop();
                                                                                 if(_loc19_ || _loc2_)
                                                                                 {
                                                                                    addr188:
                                                                                    §§push(param1.§_-dL§.m_xf);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       addr192:
                                                                                       §§push(§§pop().position.y);
                                                                                       if(_loc19_ || _loc2_)
                                                                                       {
                                                                                          addr202:
                                                                                          §§push(_loc5_.col1.y);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             §§push(_loc6_.x);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                addr221:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   addr214:
                                                                                                   §§push(_loc5_.col2.y);
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      addr217:
                                                                                                      §§push(§§pop() * _loc6_.y);
                                                                                                   }
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   addr224:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                _loc10_ = §§pop();
                                                                                                _loc5_ = param1.§_-h1§.m_xf.R;
                                                                                                _loc6_ = param1.points[0].localPoint;
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(param1.§_-h1§);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      §§push(§§pop().m_xf);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(§§pop().position);
                                                                                                         if(_loc19_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            §§push(_loc5_.col1);
                                                                                                            if(_loc19_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(_loc19_ || this)
                                                                                                               {
                                                                                                                  §§push(_loc6_.x);
                                                                                                                  if(!(_loc18_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.col2);
                                                                                                                        if(!(_loc18_ && this))
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(_loc19_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.y);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc18_ && this))
                                                                                                                                 {
                                                                                                                                    addr315:
                                                                                                                                    §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                       {
                                                                                                                                          addr330:
                                                                                                                                          §§push(param1.§_-h1§.m_xf);
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             addr334:
                                                                                                                                             §§push(§§pop().position.y);
                                                                                                                                             if(_loc19_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr344:
                                                                                                                                                §§push(_loc5_.col1.y * _loc6_.x);
                                                                                                                                                if(_loc19_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr357:
                                                                                                                                                   §§push(_loc5_.col2.y);
                                                                                                                                                   if(!(_loc18_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr370:
                                                                                                                                                      §§push(Number(§§pop() + (§§pop() + §§pop() * _loc6_.y)));
                                                                                                                                                      if(_loc19_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         _loc12_ = §§pop();
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            if(_loc19_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop() - §§pop()));
                                                                                                                                                               if(!(_loc18_ && this))
                                                                                                                                                               {
                                                                                                                                                                  _loc13_ = §§pop();
                                                                                                                                                                  addr400:
                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                  if(_loc19_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     addr408:
                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                     if(!(_loc18_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(_loc19_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                        if(!(_loc18_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc13_ * _loc13_);
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr439:
                                                                                                                                                                              addr440:
                                                                                                                                                                              §§push(_loc14_ * _loc14_);
                                                                                                                                                                              if(_loc19_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr451:
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr456:
                                                                                                                                                                                       §§push(_loc15_ = §§pop());
                                                                                                                                                                                       §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr456);
                                                                                                                                                                              }
                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc16_ = Math.sqrt(_loc15_);
                                                                                                                                                                                    §§push(this.§_-u5§);
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr497:
                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                if(_loc19_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§_-u5§);
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr509:
                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr512:
                                                                                                                                                                                                         §§push(§§pop() / _loc16_);
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr532:
                                                                                                                                                                                                               this.§_-hn§[0].x = 0.5 * (_loc9_ + _loc11_);
                                                                                                                                                                                                               if(_loc19_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr549:
                                                                                                                                                                                                                  this.§_-hn§[0].y = 0.5 * (_loc10_ + _loc12_);
                                                                                                                                                                                                                  if(_loc19_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr584:
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               this.§_-hz§[0] = _loc13_ * this.§_-u5§.x + _loc14_ * this.§_-u5§.y - param1.radius;
                                                                                                                                                                                                               §§goto(addr584);
                                                                                                                                                                                                               addr519:
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr549);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr528:
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr549);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr532);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr512);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr497);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr509);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr549);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§_-u5§);
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().x = 1;
                                                                                                                                                                                    §§push(this.§_-u5§);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr528);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr451);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr549);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr456);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr456);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr439);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr519);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr456);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr440);
                                                                                                                                                }
                                                                                                                                                §§goto(addr439);
                                                                                                                                             }
                                                                                                                                             §§goto(addr370);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr589:
                                                                                                                                             _loc5_ = §§pop().R;
                                                                                                                                             _loc6_ = param1.§_-gQ§;
                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(this.§_-u5§);
                                                                                                                                                if(!(_loc18_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_.col1);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(_loc19_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               addr631:
                                                                                                                                                               §§push(_loc5_.col2);
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_.y);
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              if(!(_loc18_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr660:
                                                                                                                                                                                 §§push(this.§_-u5§);
                                                                                                                                                                                 §§push(_loc5_.col1.y);
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr667:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr672:
                                                                                                                                                                                          addr670:
                                                                                                                                                                                          §§push(_loc5_.col2.y);
                                                                                                                                                                                          if(_loc18_ && param1)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                          addr684:
                                                                                                                                                                                          §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                          _loc5_ = param1.§_-dL§.m_xf.R;
                                                                                                                                                                                          _loc6_ = param1.localPoint;
                                                                                                                                                                                          if(_loc19_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param1.§_-dL§);
                                                                                                                                                                                             if(_loc19_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().m_xf);
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().position);
                                                                                                                                                                                                   if(_loc19_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc5_.col1);
                                                                                                                                                                                                         if(_loc19_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc6_.x);
                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc5_.col2);
                                                                                                                                                                                                                     if(_loc19_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc6_.y);
                                                                                                                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr781:
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(_loc19_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr789:
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr792:
                                                                                                                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr802:
                                                                                                                                                                                                                                             §§push(param1.§_-dL§.m_xf);
                                                                                                                                                                                                                                             if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr811:
                                                                                                                                                                                                                                                addr810:
                                                                                                                                                                                                                                                §§push(§§pop().position.y);
                                                                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr814:
                                                                                                                                                                                                                                                   §§push(_loc5_.col1.y);
                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr828:
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(!(_loc18_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr836:
                                                                                                                                                                                                                                                            §§push(_loc5_.col2.y);
                                                                                                                                                                                                                                                            if(_loc19_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr849:
                                                                                                                                                                                                                                                               §§push(§§pop() + (§§pop() + §§pop() * _loc6_.y));
                                                                                                                                                                                                                                                               if(_loc19_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr849);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr836);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                                                                                                                addr860:
                                                                                                                                                                                                                                                §§push(param1.§_-h1§.m_xf);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             _loc5_ = §§pop().R;
                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                if(_loc19_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                                                                                                                   if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                                                                                                                         addr1101:
                                                                                                                                                                                                                                                         _loc2_++;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1102:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1106:
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(§§pop() < param1.§_-Ws§)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc6_ = param1.points[_loc2_].localPoint;
                                                                                                                                                                                                                                                   §§push(param1.§_-h1§);
                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().m_xf);
                                                                                                                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().position);
                                                                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc5_.col1);
                                                                                                                                                                                                                                                               if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc6_.x);
                                                                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc5_.col2);
                                                                                                                                                                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(_loc19_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr966:
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr997:
                                                                                                                                                                                                                                                                                                   §§push(param1.§_-h1§.m_xf.position.y);
                                                                                                                                                                                                                                                                                                   if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1005:
                                                                                                                                                                                                                                                                                                      §§push(_loc5_.col1.y);
                                                                                                                                                                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                         if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1046:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            if(_loc19_ || _loc2_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1032:
                                                                                                                                                                                                                                                                                                               §§push(_loc5_.col2.y);
                                                                                                                                                                                                                                                                                                               if(_loc19_ || this)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1042:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * _loc6_.y);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1050:
                                                                                                                                                                                                                                                                                                               _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1053:
                                                                                                                                                                                                                                                                                                                  this.§_-hz§[_loc2_] = (_loc3_ - _loc7_) * this.§_-u5§.x + (_loc4_ - _loc8_) * this.§_-u5§.y - param1.radius;
                                                                                                                                                                                                                                                                                                                  if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1082:
                                                                                                                                                                                                                                                                                                                     this.§_-hn§[_loc2_].x = _loc3_;
                                                                                                                                                                                                                                                                                                                     if(_loc19_ || this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        this.§_-hn§[_loc2_].y = _loc4_;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1101);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1082);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1050);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1046);
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1032);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1050);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1053);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1005);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1032);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1042);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr966);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1032);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1046);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1005);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1050);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr997);
                                                                                                                                                                                                                                                   §§goto(addr1102);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1106);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr860);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr814);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr792);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr849);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr836);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr828);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr781);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr814);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr789);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr811);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr810);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr802);
                                                                                                                                                                                          addr683:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr684);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr682:
                                                                                                                                                                                    §§goto(addr683);
                                                                                                                                                                                    §§push(§§pop() * _loc6_.y);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr684);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr667);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr682);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr667);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr672);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr670);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr672);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr631);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr660);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr400);
                                                                                                                                    }
                                                                                                                                    §§goto(addr408);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr370);
                                                                                                                           }
                                                                                                                           §§goto(addr439);
                                                                                                                        }
                                                                                                                        §§goto(addr357);
                                                                                                                     }
                                                                                                                     §§goto(addr370);
                                                                                                                  }
                                                                                                                  §§goto(addr315);
                                                                                                               }
                                                                                                               §§goto(addr370);
                                                                                                            }
                                                                                                            §§goto(addr344);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr334);
                                                                                                   }
                                                                                                   §§goto(addr330);
                                                                                                }
                                                                                                §§goto(addr532);
                                                                                             }
                                                                                             §§goto(addr221);
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          §§goto(addr221);
                                                                                       }
                                                                                       §§goto(addr224);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr221);
                                                                              }
                                                                              §§goto(addr224);
                                                                           }
                                                                           §§goto(addr178);
                                                                        }
                                                                        §§goto(addr221);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr214);
                                                }
                                             }
                                             §§goto(addr202);
                                          }
                                       }
                                       §§goto(addr192);
                                    }
                                 }
                                 §§goto(addr188);
                              case 1:
                                 §§goto(addr589);
                              case 2:
                                 _loc5_ = param1.§_-h1§.m_xf.R;
                                 _loc6_ = param1.§_-gQ§;
                                 §§push(param1.§_-dL§.m_xf);
                                 if(_loc19_ || _loc2_)
                                 {
                                    §§push(this.§_-u5§);
                                    if(!(_loc18_ && _loc2_))
                                    {
                                       §§push(_loc5_.col1);
                                       if(_loc19_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc19_)
                                          {
                                             §§push(_loc6_.x);
                                             if(!(_loc18_ && _loc2_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc18_)
                                                {
                                                   §§push(_loc5_.col2);
                                                   if(_loc19_ || param1)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!_loc18_)
                                                      {
                                                         addr1165:
                                                         §§push(_loc6_.y);
                                                         if(!(_loc18_ && _loc3_))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc19_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc19_)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  if(_loc19_)
                                                                  {
                                                                     addr1187:
                                                                     §§push(this.§_-u5§);
                                                                     §§push(_loc5_.col1.y);
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(_loc6_.x);
                                                                        if(!(_loc18_ && this))
                                                                        {
                                                                           addr1199:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc19_)
                                                                           {
                                                                              addr1216:
                                                                              addr1204:
                                                                              §§push(_loc5_.col2.y);
                                                                              if(_loc19_ || param1)
                                                                              {
                                                                                 addr1212:
                                                                                 §§push(§§pop() * _loc6_.y);
                                                                              }
                                                                              §§pop().y = §§pop() + §§pop();
                                                                              _loc5_ = param1.§_-h1§.m_xf.R;
                                                                              _loc6_ = param1.localPoint;
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§push(param1.§_-h1§);
                                                                                 if(!(_loc18_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop().m_xf);
                                                                                    if(_loc19_ || param1)
                                                                                    {
                                                                                       §§push(§§pop().position);
                                                                                       if(_loc19_ || this)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc18_ && param1))
                                                                                          {
                                                                                             §§push(_loc5_.col1);
                                                                                             if(!(_loc18_ && this))
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!(_loc18_ && _loc2_))
                                                                                                {
                                                                                                   §§push(_loc6_.x);
                                                                                                   if(_loc19_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         addr1291:
                                                                                                         §§push(_loc5_.col2);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc19_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(_loc6_.y);
                                                                                                               if(_loc19_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc18_ && this))
                                                                                                                  {
                                                                                                                     addr1320:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc19_ || param1)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc19_ || _loc2_)
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              if(!(_loc18_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr1349:
                                                                                                                                 §§push(param1.§_-h1§.m_xf);
                                                                                                                                 if(!(_loc18_ && this))
                                                                                                                                 {
                                                                                                                                    addr1358:
                                                                                                                                    §§push(§§pop().position.y);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       addr1361:
                                                                                                                                       §§push(_loc5_.col1.y);
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          addr1366:
                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                          if(!(_loc18_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr1375:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                addr1380:
                                                                                                                                                §§push(_loc5_.col2.y);
                                                                                                                                                if(_loc19_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr1392:
                                                                                                                                                §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr1396:
                                                                                                                                                   _loc8_ = Number(§§pop());
                                                                                                                                                   _loc5_ = param1.§_-dL§.m_xf.R;
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         _loc2_ = §§pop();
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            loop2:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                               addr1630:
                                                                                                                                                               for(; §§pop() < param1.§_-Ws§; continue loop2)
                                                                                                                                                               {
                                                                                                                                                                  _loc6_ = param1.points[_loc2_].localPoint;
                                                                                                                                                                  if(!(_loc19_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(param1.§_-dL§);
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().m_xf);
                                                                                                                                                                     if(!(_loc18_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().position);
                                                                                                                                                                        if(!(_loc18_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc5_.col1);
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                                                                    if(_loc19_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc19_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1479:
                                                                                                                                                                                          §§push(_loc5_.col2);
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                                                                if(_loc19_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!(_loc18_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1508:
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(_loc19_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                                                                               if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1539:
                                                                                                                                                                                                                  §§push(param1.§_-dL§.m_xf.position.y);
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1544:
                                                                                                                                                                                                                     §§push(_loc5_.col1.y);
                                                                                                                                                                                                                     if(_loc19_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc6_.x);
                                                                                                                                                                                                                        if(!(_loc18_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1561:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1564:
                                                                                                                                                                                                                              §§push(_loc5_.col2.y);
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1572:
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1572);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(_loc19_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1582:
                                                                                                                                                                                                                              _loc4_ = §§pop();
                                                                                                                                                                                                                              addr1581:
                                                                                                                                                                                                                              if(!(_loc18_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1590:
                                                                                                                                                                                                                                 this.§_-hz§[_loc2_] = (_loc3_ - _loc7_) * this.§_-u5§.x + (_loc4_ - _loc8_) * this.§_-u5§.y - param1.radius;
                                                                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              this.§_-hn§[_loc2_].Set(_loc3_,_loc4_);
                                                                                                                                                                                                                              if(!(_loc18_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc2_++;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1582);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1572);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1564);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1582);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1590);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1581);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1564);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1561);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1572);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1508);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1564);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1572);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1479);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1544);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1582);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1539);
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc18_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  addr1640:
                                                                                                                                                                  §§push(this.§_-u5§);
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§_-u5§);
                                                                                                                                                                     if(_loc19_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-1);
                                                                                                                                                                           if(!(_loc18_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc19_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1679:
                                                                                                                                                                                    §§push(this.§_-u5§);
                                                                                                                                                                                    §§push(this.§_-u5§.y);
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1684:
                                                                                                                                                                                       §§pop().y = §§pop() * -1;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1684);
                                                                                                                                                                                 }
                                                                                                                                                                                 break loop4;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1684);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1679);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1679);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1630);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1640);
                                                                                                                                                   addr1395:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1396);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1392);
                                                                                                                                          §§push(§§pop() * _loc6_.y);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1392);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1396);
                                                                                                                        }
                                                                                                                        §§goto(addr1361);
                                                                                                                     }
                                                                                                                     §§goto(addr1366);
                                                                                                                  }
                                                                                                                  §§goto(addr1375);
                                                                                                               }
                                                                                                               §§goto(addr1366);
                                                                                                            }
                                                                                                            §§goto(addr1320);
                                                                                                         }
                                                                                                         §§goto(addr1380);
                                                                                                      }
                                                                                                      §§goto(addr1366);
                                                                                                   }
                                                                                                   §§goto(addr1380);
                                                                                                }
                                                                                                §§goto(addr1291);
                                                                                             }
                                                                                             §§goto(addr1361);
                                                                                          }
                                                                                          §§goto(addr1395);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1358);
                                                                                 }
                                                                                 §§goto(addr1349);
                                                                              }
                                                                              §§goto(addr1396);
                                                                           }
                                                                           §§goto(addr1216);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr1216);
                                                            }
                                                         }
                                                         §§goto(addr1212);
                                                      }
                                                      §§goto(addr1199);
                                                   }
                                                   §§goto(addr1204);
                                                }
                                                §§goto(addr1216);
                                             }
                                             §§goto(addr1165);
                                          }
                                          §§goto(addr1216);
                                       }
                                    }
                                    §§goto(addr1187);
                                 }
                                 §§goto(addr1216);
                           }
                           return;
                           addr1758:
                        }
                        §§goto(addr1743);
                     }
                     else
                     {
                        §§push(b2Manifold.§_-zO§);
                        §§push(_loc17_);
                        if(_loc19_ || param1)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc18_)
                              {
                                 §§push(1);
                              }
                              else
                              {
                                 §§goto(addr1743);
                              }
                              §§goto(addr1758);
                           }
                           else
                           {
                              §§goto(addr1741);
                              §§push(b2Manifold.§_-77§);
                           }
                           §§goto(addr1743);
                        }
                     }
                  }
                  §§goto(addr1741);
               }
               §§goto(addr1723);
            }
            §§goto(addr1743);
         }
         §§goto(addr1759);
      }
   }
}
