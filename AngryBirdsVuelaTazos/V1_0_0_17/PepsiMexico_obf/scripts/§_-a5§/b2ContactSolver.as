package §_-a5§
{
   import §_-Iw§.*;
   import §_-Ja§.*;
   import §_-Kt§.b2Shape;
   import §_-lh§.*;
   import §_-qg§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §_-v6§:b2WorldManifold;
      
      private static var §_-Hw§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-v6§ = new b2WorldManifold();
            if(!(_loc2_ && b2ContactSolver))
            {
               §_-Hw§ = new b2PositionSolverManifold();
            }
         }
      }
      
      private var §_-CK§:b2TimeStep;
      
      private var §_-sB§;
      
      b2internal var §_-MT§:Vector.<b2ContactConstraint>;
      
      private var §_-ig§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§_-CK§ = new b2TimeStep();
            if(!_loc1_)
            {
               this.§_-MT§ = new Vector.<b2ContactConstraint>();
               if(_loc1_ && _loc2_)
               {
               }
               §§goto(addr56);
            }
            super();
         }
         addr56:
      }
      
      public function §_-lc§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
      {
         var _loc63_:Boolean = true;
         var _loc64_:Boolean = false;
         var _loc5_:b2Contact = null;
         var _loc6_:* = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc11_:b2Shape = null;
         var _loc12_:b2Shape = null;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:b2Body = null;
         var _loc16_:b2Body = null;
         var _loc17_:b2Manifold = null;
         var _loc18_:* = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:* = NaN;
         var _loc28_:b2ContactConstraint = null;
         var _loc29_:* = uint(0);
         var _loc30_:b2ManifoldPoint = null;
         var _loc31_:b2ContactConstraintPoint = null;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:* = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:* = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:* = NaN;
         var _loc42_:* = NaN;
         var _loc43_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc48_:b2ContactConstraintPoint = null;
         var _loc49_:b2ContactConstraintPoint = null;
         var _loc50_:* = NaN;
         var _loc51_:* = NaN;
         var _loc52_:Number = NaN;
         var _loc53_:* = NaN;
         var _loc54_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc56_:* = NaN;
         var _loc57_:Number = NaN;
         var _loc58_:* = NaN;
         var _loc59_:Number = NaN;
         var _loc60_:* = NaN;
         var _loc61_:* = NaN;
         if(!(_loc64_ && param1))
         {
            this.§_-CK§.Set(param1);
            if(_loc63_)
            {
               this.§_-sB§ = param4;
               if(!_loc63_)
               {
               }
               addr164:
               do
               {
                  if(this.§_-MT§.length < this.§_-ig§)
                  {
                     continue;
                  }
                  if(!(_loc64_ && param1))
                  {
                     break;
                  }
                  loop4:
                  while(true)
                  {
                     §§push(_loc6_);
                     addr1726:
                     while(§§pop() < param3)
                     {
                        _loc9_ = (_loc5_ = param2[_loc6_]).§_-NZ§;
                        _loc10_ = _loc5_.§_-xL§;
                        _loc11_ = _loc9_.§_-o6§;
                        _loc12_ = _loc10_.§_-o6§;
                        if(_loc63_ || param2)
                        {
                           §§push(_loc11_.§_-Q2§);
                           if(_loc63_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc63_ || param1)
                              {
                                 _loc13_ = §§pop();
                                 if(!(_loc64_ && this))
                                 {
                                    addr260:
                                    §§push(_loc12_.§_-Q2§);
                                    if(_loc63_)
                                    {
                                       addr264:
                                       §§push(Number(§§pop()));
                                    }
                                    _loc14_ = §§pop();
                                 }
                                 _loc15_ = _loc9_.m_body;
                                 _loc16_ = _loc10_.m_body;
                                 _loc17_ = _loc5_.§_-jt§();
                                 §§push(Number(b2Settings.b2MixFriction(_loc9_.§_-zC§(),_loc10_.§_-zC§())));
                                 if(!(_loc64_ && param2))
                                 {
                                    _loc18_ = §§pop();
                                    _loc19_ = b2Settings.b2MixRestitution(_loc9_.§_-J0§(),_loc10_.§_-J0§());
                                    if(!_loc64_)
                                    {
                                       §§push(_loc15_.§_-ZZ§);
                                       if(_loc63_)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc64_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc63_)
                                             {
                                                _loc20_ = §§pop();
                                                §§push(_loc15_.§_-ZZ§);
                                                if(!(_loc64_ && param3))
                                                {
                                                   addr323:
                                                   §§push(§§pop().y);
                                                   if(_loc63_)
                                                   {
                                                      _loc21_ = §§pop();
                                                      §§push(_loc16_.§_-ZZ§);
                                                      if(!(_loc64_ && this))
                                                      {
                                                         addr337:
                                                         §§push(Number(§§pop().x));
                                                         if(!(_loc64_ && this))
                                                         {
                                                            _loc22_ = §§pop();
                                                            addr349:
                                                            §§push(_loc16_.§_-ZZ§.y);
                                                            if(_loc63_ || param3)
                                                            {
                                                               addr357:
                                                               §§push(Number(§§pop()));
                                                               if(_loc63_ || param2)
                                                               {
                                                                  _loc23_ = §§pop();
                                                                  addr369:
                                                                  _loc24_ = _loc15_.m_angularVelocity;
                                                                  addr373:
                                                                  _loc25_ = _loc16_.m_angularVelocity;
                                                                  b2Settings.b2Assert(_loc17_.§_-Tu§ > 0);
                                                                  addr368:
                                                                  if(_loc63_ || param2)
                                                                  {
                                                                     §§push(§_-v6§);
                                                                     if(_loc63_ || param2)
                                                                     {
                                                                        §§pop().§_-lc§(_loc17_,_loc15_.m_xf,_loc13_,_loc16_.m_xf,_loc14_);
                                                                        §§push(§_-v6§);
                                                                        if(!_loc64_)
                                                                        {
                                                                           §§push(§§pop().§_-u5§);
                                                                           if(_loc63_)
                                                                           {
                                                                              addr411:
                                                                              _loc26_ = §§pop().x;
                                                                              addr413:
                                                                              §§push(§_-v6§.§_-u5§);
                                                                           }
                                                                           §§push(§§pop().y);
                                                                           if(!(_loc64_ && param1))
                                                                           {
                                                                              addr422:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           _loc27_ = §§pop();
                                                                           (_loc28_ = this.§_-MT§[_loc6_]).§_-dL§ = _loc15_;
                                                                           _loc28_.§_-h1§ = _loc16_;
                                                                           _loc28_.§_-4M§ = _loc17_;
                                                                           if(_loc63_ || param2)
                                                                           {
                                                                              §§push(_loc28_.normal);
                                                                              if(!(_loc64_ && this))
                                                                              {
                                                                                 §§push(_loc26_);
                                                                                 if(_loc63_ || this)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    addr488:
                                                                                    if(!_loc64_)
                                                                                    {
                                                                                       addr468:
                                                                                       §§push(_loc28_.normal);
                                                                                       §§push(_loc27_);
                                                                                    }
                                                                                    _loc28_.friction = _loc18_;
                                                                                    _loc28_.restitution = _loc19_;
                                                                                    §§push(_loc28_.§_-gQ§);
                                                                                    if(_loc63_)
                                                                                    {
                                                                                       §§push(_loc17_.§_-Pv§);
                                                                                       if(!_loc64_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!_loc64_)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             addr510:
                                                                                             §§push(_loc28_.§_-gQ§);
                                                                                             §§push(_loc17_.§_-Pv§.y);
                                                                                          }
                                                                                          §§pop().y = §§pop();
                                                                                          §§push(_loc28_.localPoint);
                                                                                          if(!_loc64_)
                                                                                          {
                                                                                             §§push(_loc17_.m_localPoint);
                                                                                             if(!_loc64_)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(_loc63_)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   addr528:
                                                                                                   §§push(_loc28_.localPoint);
                                                                                                   §§push(_loc17_.m_localPoint.y);
                                                                                                }
                                                                                                §§pop().y = §§pop();
                                                                                                §§push(_loc28_);
                                                                                                §§push(_loc13_);
                                                                                                if(!_loc64_)
                                                                                                {
                                                                                                   §§push(§§pop() + _loc14_);
                                                                                                }
                                                                                                §§pop().radius = §§pop();
                                                                                                _loc28_.type = _loc17_.§_-Sj§;
                                                                                                §§push(0);
                                                                                                if(!_loc64_)
                                                                                                {
                                                                                                   §§push(uint(§§pop()));
                                                                                                   if(!_loc64_)
                                                                                                   {
                                                                                                      _loc29_ = §§pop();
                                                                                                      if(!(_loc63_ || param2))
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc29_);
                                                                                                      }
                                                                                                      addr1290:
                                                                                                   }
                                                                                                   for(; §§pop() < _loc28_.§_-Ws§; §§goto(addr1290))
                                                                                                   {
                                                                                                      _loc30_ = _loc17_.§_-hn§[_loc29_];
                                                                                                      (_loc31_ = _loc28_.points[_loc29_]).normalImpulse = _loc30_.§_-JQ§;
                                                                                                      _loc31_.tangentImpulse = _loc30_.§_-RC§;
                                                                                                      _loc31_.localPoint.SetV(_loc30_.m_localPoint);
                                                                                                      §§push(_loc31_.§_-r4§);
                                                                                                      if(_loc63_)
                                                                                                      {
                                                                                                         §§push(§_-v6§);
                                                                                                         if(_loc63_)
                                                                                                         {
                                                                                                            §§push(§§pop().§_-hn§[_loc29_].x - _loc15_.m_sweep.c.x);
                                                                                                            if(_loc63_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc63_ || param3)
                                                                                                               {
                                                                                                                  var _loc62_:* = §§pop();
                                                                                                                  if(!(_loc64_ && this))
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     if(!(_loc64_ && param2))
                                                                                                                     {
                                                                                                                        §§push(_loc62_);
                                                                                                                        if(_loc63_ || param1)
                                                                                                                        {
                                                                                                                           if(!_loc64_)
                                                                                                                           {
                                                                                                                              _loc32_ = §§pop();
                                                                                                                              addr651:
                                                                                                                              _loc31_.§_-r4§.y = _loc62_ = §_-v6§.§_-hn§[_loc29_].y - _loc15_.m_sweep.c.y;
                                                                                                                              if(_loc63_ || param3)
                                                                                                                              {
                                                                                                                                 addr659:
                                                                                                                                 §§push(_loc62_);
                                                                                                                                 if(!(_loc64_ && param1))
                                                                                                                                 {
                                                                                                                                    addr667:
                                                                                                                                    _loc33_ = §§pop();
                                                                                                                                    if(_loc63_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(_loc31_.§_-a§);
                                                                                                                                       if(_loc63_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(§_-v6§);
                                                                                                                                          if(!_loc64_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().§_-hn§[_loc29_].x - _loc16_.m_sweep.c.x);
                                                                                                                                             if(!(_loc64_ && param3))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(_loc63_ || param2)
                                                                                                                                                {
                                                                                                                                                   _loc62_ = §§pop();
                                                                                                                                                   if(!(_loc64_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      if(!_loc64_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc62_);
                                                                                                                                                         if(_loc63_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc64_)
                                                                                                                                                            {
                                                                                                                                                               _loc34_ = §§pop();
                                                                                                                                                               if(!(_loc64_ && this))
                                                                                                                                                               {
                                                                                                                                                                  addr758:
                                                                                                                                                                  _loc31_.§_-a§.y = _loc62_ = §_-v6§.§_-hn§[_loc29_].y - _loc16_.m_sweep.c.y;
                                                                                                                                                                  addr762:
                                                                                                                                                                  _loc35_ = _loc62_;
                                                                                                                                                                  §§push(_loc32_ * _loc27_);
                                                                                                                                                                  if(!_loc64_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc33_);
                                                                                                                                                                     if(!_loc64_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop() * _loc26_);
                                                                                                                                                                        if(!(_loc64_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           if(!(_loc64_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              _loc36_ = §§pop();
                                                                                                                                                                              §§push(_loc34_ * _loc27_);
                                                                                                                                                                              if(_loc63_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc35_);
                                                                                                                                                                                 §§push(_loc26_);
                                                                                                                                                                                 if(_loc63_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc63_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr818:
                                                                                                                                                                                       _loc37_ = §§pop() - §§pop();
                                                                                                                                                                                       §§push(_loc36_);
                                                                                                                                                                                       if(!(_loc64_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc36_);
                                                                                                                                                                                          if(_loc63_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc36_ = Number(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc63_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc37_ *= _loc37_;
                                                                                                                                                                                                if(_loc63_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc15_.§_-eZ§);
                                                                                                                                                                                                   §§push(_loc16_.§_-eZ§);
                                                                                                                                                                                                   if(_loc63_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(_loc63_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + _loc15_.§_-DZ§ * _loc36_);
                                                                                                                                                                                                         §§push(_loc16_.§_-DZ§ * _loc37_);
                                                                                                                                                                                                         if(!_loc64_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(!(_loc64_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc38_ = §§pop();
                                                                                                                                                                                                               if(!(_loc64_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc31_.§_-SY§ = 1 / _loc38_;
                                                                                                                                                                                                                  if(!(_loc64_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr914:
                                                                                                                                                                                                                     §§push(_loc15_.§_-jI§ * _loc15_.§_-eZ§);
                                                                                                                                                                                                                     §§push(_loc16_.§_-jI§ * _loc16_.§_-eZ§);
                                                                                                                                                                                                                     if(!_loc64_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        if(!_loc64_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           if(_loc63_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc39_ = §§pop();
                                                                                                                                                                                                                              if(!(_loc64_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc15_.§_-jI§);
                                                                                                                                                                                                                                 if(_loc63_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * _loc15_.§_-DZ§ * _loc36_);
                                                                                                                                                                                                                                    §§push(_loc16_.§_-jI§);
                                                                                                                                                                                                                                    §§push(_loc16_.§_-DZ§);
                                                                                                                                                                                                                                    if(!(_loc64_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       §§push(_loc37_);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                    if(_loc63_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc39_ = Number(§§pop() + §§pop());
                                                                                                                                                                                                                                       _loc31_.§_-RI§ = 1 / _loc39_;
                                                                                                                                                                                                                                       if(!_loc64_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc40_ = _loc27_;
                                                                                                                                                                                                                                          if(!(_loc64_ && param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr987:
                                                                                                                                                                                                                                             §§push(-_loc26_);
                                                                                                                                                                                                                                             if(_loc63_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr991:
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                if(!(_loc64_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc41_ = §§pop();
                                                                                                                                                                                                                                                   §§push(_loc32_ * _loc41_);
                                                                                                                                                                                                                                                   §§push(_loc33_);
                                                                                                                                                                                                                                                   §§push(_loc40_);
                                                                                                                                                                                                                                                   if(!_loc64_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(!_loc64_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                         if(!(_loc64_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            if(_loc63_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1021:
                                                                                                                                                                                                                                                               _loc42_ = §§pop();
                                                                                                                                                                                                                                                               if(!(_loc64_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc34_);
                                                                                                                                                                                                                                                                  if(_loc63_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc41_);
                                                                                                                                                                                                                                                                     if(_loc63_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1035:
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        §§push(_loc35_);
                                                                                                                                                                                                                                                                        §§push(_loc40_);
                                                                                                                                                                                                                                                                        if(!_loc64_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           if(!(_loc64_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                              if(!_loc64_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc43_ = §§pop();
                                                                                                                                                                                                                                                                                 if(_loc63_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1055:
                                                                                                                                                                                                                                                                                    §§push(_loc42_);
                                                                                                                                                                                                                                                                                    if(!(_loc64_ && param2))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc42_);
                                                                                                                                                                                                                                                                                       if(!(_loc64_ && param3))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1072:
                                                                                                                                                                                                                                                                                          §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                                                                                                                          if(_loc63_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc42_ = §§pop();
                                                                                                                                                                                                                                                                                             if(_loc64_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1080:
                                                                                                                                                                                                                                                                                             §§push(_loc43_ * _loc43_);
                                                                                                                                                                                                                                                                                             if(_loc63_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1084:
                                                                                                                                                                                                                                                                                                _loc43_ = §§pop();
                                                                                                                                                                                                                                                                                                addr1089:
                                                                                                                                                                                                                                                                                                §§push(_loc15_.§_-eZ§ + _loc16_.§_-eZ§);
                                                                                                                                                                                                                                                                                                if(!_loc64_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1092:
                                                                                                                                                                                                                                                                                                   §§push(_loc15_.§_-DZ§);
                                                                                                                                                                                                                                                                                                   §§push(_loc42_);
                                                                                                                                                                                                                                                                                                   if(!_loc64_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1097:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      if(!(_loc64_ && this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1108:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         §§push(_loc16_.§_-DZ§ * _loc43_);
                                                                                                                                                                                                                                                                                                         if(_loc63_ || param2)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1119:
                                                                                                                                                                                                                                                                                                            _loc44_ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                            if(!_loc64_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1122:
                                                                                                                                                                                                                                                                                                               _loc31_.§_-17§ = 1 / _loc44_;
                                                                                                                                                                                                                                                                                                               if(_loc64_ && param3)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               _loc31_.§_-5I§ = 0;
                                                                                                                                                                                                                                                                                                               addr1137:
                                                                                                                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                                                                                                                               §§push(_loc25_);
                                                                                                                                                                                                                                                                                                               if(!(_loc64_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                  §§push(_loc35_);
                                                                                                                                                                                                                                                                                                                  if(!_loc64_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1150:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc63_ || this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1158:
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                                                                                                                                                                        if(_loc63_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                           if(_loc63_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1168:
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - -_loc24_ * _loc33_);
                                                                                                                                                                                                                                                                                                                              if(_loc63_ || param3)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1178:
                                                                                                                                                                                                                                                                                                                                 _loc45_ = §§pop();
                                                                                                                                                                                                                                                                                                                                 addr1179:
                                                                                                                                                                                                                                                                                                                                 §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                 if(_loc63_ || param2)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc25_);
                                                                                                                                                                                                                                                                                                                                    if(_loc63_ || param2)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1195:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop() * _loc34_);
                                                                                                                                                                                                                                                                                                                                       if(_loc63_ || param2)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1205:
                                                                                                                                                                                                                                                                                                                                          §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                          if(!_loc64_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1210:
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                             §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                             §§push(_loc32_);
                                                                                                                                                                                                                                                                                                                                             if(_loc63_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                if(_loc63_ || param3)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                   if(_loc63_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1225:
                                                                                                                                                                                                                                                                                                                                                      _loc46_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                      addr1229:
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc28_.normal.x);
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc45_);
                                                                                                                                                                                                                                                                                                                                                      if(_loc63_ || param1)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1249:
                                                                                                                                                                                                                                                                                                                                                         addr1237:
                                                                                                                                                                                                                                                                                                                                                         addr1252:
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(_loc63_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1244:
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc28_.normal.y * _loc46_);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         if(§§pop() < -b2Settings.b2_velocityThreshold)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc31_);
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc31_.§_-5I§);
                                                                                                                                                                                                                                                                                                                                                            if(_loc63_ || param1)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc28_.restitution);
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc64_ && param3))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(_loc63_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * _loc47_);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§pop().§_-5I§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc29_);
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc64_ && param1))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         _loc29_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1224:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1246:
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1249);
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc47_ = §§pop());
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1246);
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1244);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1210);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1229);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1237);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1229);
                                                                                                                                                                                                                                                                                                                                 addr1177:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1249);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1246);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1252);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1195);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1168);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1210);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1179);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1168);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1249);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1150);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1210);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1246);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1178);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1080);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1177);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1229);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1072);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1108);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1195);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1225);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1137);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1119);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1108);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1097);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1224);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1205);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1122);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1137);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1035);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1089);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1072);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1195);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1092);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr987);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1055);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr914);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1210);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1084);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1158);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1225);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1084);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr914);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr991);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1168);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1150);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr818);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr914);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1205);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1244);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1205);
                                                                                                                                                                  addr757:
                                                                                                                                                                  addr756:
                                                                                                                                                                  addr747:
                                                                                                                                                                  addr746:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1080);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr762);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr758);
                                                                                                                                                }
                                                                                                                                                §§goto(addr757);
                                                                                                                                             }
                                                                                                                                             §§goto(addr756);
                                                                                                                                          }
                                                                                                                                          §§goto(addr747);
                                                                                                                                       }
                                                                                                                                       §§goto(addr746);
                                                                                                                                    }
                                                                                                                                    §§goto(addr818);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr758);
                                                                                                                           }
                                                                                                                           §§goto(addr1021);
                                                                                                                        }
                                                                                                                        §§goto(addr667);
                                                                                                                     }
                                                                                                                     §§goto(addr659);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr651);
                                                                                                   }
                                                                                                   addr1294:
                                                                                                   §§push(_loc28_.§_-Ws§);
                                                                                                }
                                                                                                if(§§pop() == 2)
                                                                                                {
                                                                                                   _loc48_ = _loc28_.points[0];
                                                                                                   _loc49_ = _loc28_.points[1];
                                                                                                   §§push(Number(_loc15_.§_-eZ§));
                                                                                                   if(_loc63_)
                                                                                                   {
                                                                                                      _loc50_ = §§pop();
                                                                                                      §§push(Number(_loc15_.§_-DZ§));
                                                                                                      if(!_loc64_)
                                                                                                      {
                                                                                                         _loc51_ = §§pop();
                                                                                                         §§push(_loc16_.§_-eZ§);
                                                                                                         if(!(_loc64_ && param3))
                                                                                                         {
                                                                                                            _loc52_ = §§pop();
                                                                                                            §§push(Number(_loc16_.§_-DZ§));
                                                                                                            if(!_loc64_)
                                                                                                            {
                                                                                                               _loc53_ = §§pop();
                                                                                                               if(_loc63_ || param3)
                                                                                                               {
                                                                                                                  §§push(_loc48_.§_-r4§);
                                                                                                                  if(!(_loc64_ && param3))
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     §§push(_loc27_);
                                                                                                                     if(!(_loc64_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc63_)
                                                                                                                        {
                                                                                                                           §§push(_loc48_.§_-r4§);
                                                                                                                           if(_loc63_ || param3)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop().y * _loc26_);
                                                                                                                              if(_loc63_)
                                                                                                                              {
                                                                                                                                 _loc54_ = §§pop();
                                                                                                                                 §§push(_loc48_.§_-a§);
                                                                                                                                 if(!_loc64_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    §§push(_loc27_);
                                                                                                                                    if(!_loc64_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       §§push(_loc48_.§_-a§);
                                                                                                                                       if(!_loc64_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          if(!_loc64_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc26_);
                                                                                                                                             if(!(_loc64_ && param3))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc64_)
                                                                                                                                                {
                                                                                                                                                   addr1412:
                                                                                                                                                   _loc55_ = §§pop() - §§pop();
                                                                                                                                                   addr1418:
                                                                                                                                                   §§push(_loc49_.§_-r4§.x * _loc27_);
                                                                                                                                                   if(!(_loc64_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr1428:
                                                                                                                                                      §§push(_loc49_.§_-r4§.y);
                                                                                                                                                      if(_loc63_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc26_);
                                                                                                                                                         if(!(_loc64_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc63_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(_loc63_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(!(_loc64_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     _loc56_ = §§pop();
                                                                                                                                                                     if(!(_loc64_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr1465:
                                                                                                                                                                        §§push(_loc49_.§_-a§.x * _loc27_);
                                                                                                                                                                        if(!(_loc64_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           addr1475:
                                                                                                                                                                           §§push(_loc49_.§_-a§.y);
                                                                                                                                                                           if(!(_loc64_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              addr1542:
                                                                                                                                                                              §§push(§§pop() - §§pop() * _loc26_);
                                                                                                                                                                              if(!(_loc64_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc57_ = §§pop();
                                                                                                                                                                                 addr1496:
                                                                                                                                                                                 §§push(_loc50_);
                                                                                                                                                                                 §§push(_loc52_);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc52_);
                                                                                                                                                                              if(!_loc64_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc63_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc51_);
                                                                                                                                                                                    if(!(_loc64_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1558:
                                                                                                                                                                                       §§push(§§pop() * _loc56_);
                                                                                                                                                                                       §§push(_loc56_);
                                                                                                                                                                                       if(!_loc64_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1561:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc63_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1564:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc63_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc53_);
                                                                                                                                                                                                §§push(_loc57_);
                                                                                                                                                                                                if(!_loc64_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1577:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   §§push(_loc57_);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc63_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc63_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1585:
                                                                                                                                                                                                      _loc59_ = §§pop();
                                                                                                                                                                                                      addr1584:
                                                                                                                                                                                                      if(!(_loc64_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1595:
                                                                                                                                                                                                         §§push(_loc50_ + _loc52_);
                                                                                                                                                                                                         if(!_loc64_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc51_);
                                                                                                                                                                                                            §§push(_loc54_);
                                                                                                                                                                                                            if(!(_loc64_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1609:
                                                                                                                                                                                                               §§push(§§pop() * §§pop() * _loc56_);
                                                                                                                                                                                                               if(!(_loc64_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  §§push(_loc53_);
                                                                                                                                                                                                                  if(_loc63_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1626:
                                                                                                                                                                                                                     §§push(§§pop() * _loc55_);
                                                                                                                                                                                                                     if(_loc63_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc57_);
                                                                                                                                                                                                                        if(!(_loc64_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1639:
                                                                                                                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                           if(!_loc64_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1642:
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              if(!(_loc64_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc60_ = §§pop();
                                                                                                                                                                                                                                 if(!(_loc64_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1658:
                                                                                                                                                                                                                                    §§push(Number(100));
                                                                                                                                                                                                                                    if(_loc63_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1671:
                                                                                                                                                                                                                                    §§push(_loc61_);
                                                                                                                                                                                                                                    §§push(_loc58_);
                                                                                                                                                                                                                                    §§push(_loc59_);
                                                                                                                                                                                                                                    if(_loc63_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1677:
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       §§push(_loc60_);
                                                                                                                                                                                                                                       if(!(_loc64_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * _loc60_);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(§§pop() < §§pop() * (§§pop() - §§pop()))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc28_.§_-9s§);
                                                                                                                                                                                                                                       if(_loc63_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().col1.Set(_loc58_,_loc60_);
                                                                                                                                                                                                                                          if(!_loc64_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1700:
                                                                                                                                                                                                                                             §§push(_loc28_.§_-9s§);
                                                                                                                                                                                                                                             if(!_loc64_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1704:
                                                                                                                                                                                                                                                §§pop().col2.Set(_loc60_,_loc59_);
                                                                                                                                                                                                                                                §§push(_loc28_.§_-9s§);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop().§_-uq§(_loc28_.§_-SY§);
                                                                                                                                                                                                                                             addr1724:
                                                                                                                                                                                                                                             _loc6_++;
                                                                                                                                                                                                                                             continue loop4;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1724);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1704);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc28_.§_-Ws§ = 1;
                                                                                                                                                                                                                                       §§goto(addr1724);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1700);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1669:
                                                                                                                                                                                                                              §§goto(addr1671);
                                                                                                                                                                                                                              §§push(§§pop() * _loc58_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           _loc61_ = §§pop();
                                                                                                                                                                                                                           §§goto(addr1669);
                                                                                                                                                                                                                           §§push(_loc58_);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1671);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1639);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1671);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1639);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1609);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1669);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1700);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1669);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1609);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1642);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1609);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1564);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1671);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1558);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(_loc63_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc51_ * _loc54_);
                                                                                                                                                                              if(_loc63_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop() * _loc54_);
                                                                                                                                                                                 if(!(_loc64_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1515:
                                                                                                                                                                                    §§push(_loc53_);
                                                                                                                                                                                    §§push(_loc55_);
                                                                                                                                                                                    if(_loc63_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1519:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!_loc64_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop() * _loc55_);
                                                                                                                                                                                          if(_loc63_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1532:
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(_loc64_ && param3)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1542);
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc58_ = §§pop();
                                                                                                                                                                                          §§goto(addr1542);
                                                                                                                                                                                          §§push(_loc50_);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1595);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1677);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1671);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1639);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1584);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1658);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1515);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1542);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1561);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1558);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1532);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1626);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1519);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1418);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1475);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1465);
                                                                                                                              }
                                                                                                                              §§goto(addr1496);
                                                                                                                           }
                                                                                                                           §§goto(addr1428);
                                                                                                                        }
                                                                                                                        §§goto(addr1412);
                                                                                                                     }
                                                                                                                     §§goto(addr1577);
                                                                                                                  }
                                                                                                                  §§goto(addr1412);
                                                                                                               }
                                                                                                               §§goto(addr1700);
                                                                                                            }
                                                                                                            §§goto(addr1412);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1585);
                                                                                                   }
                                                                                                   §§goto(addr1542);
                                                                                                }
                                                                                                §§goto(addr1700);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr528);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr510);
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                                 if(!(_loc64_ && param1))
                                                                                 {
                                                                                    _loc28_.§_-Ws§ = _loc17_.§_-Tu§;
                                                                                    if(!(_loc64_ && this))
                                                                                    {
                                                                                       §§goto(addr488);
                                                                                    }
                                                                                    §§goto(addr1294);
                                                                                 }
                                                                                 §§goto(addr488);
                                                                              }
                                                                              §§goto(addr468);
                                                                           }
                                                                           §§goto(addr488);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr413);
                                                               }
                                                               §§goto(addr368);
                                                            }
                                                            §§goto(addr411);
                                                         }
                                                         §§goto(addr373);
                                                      }
                                                      §§goto(addr349);
                                                   }
                                                   §§goto(addr422);
                                                }
                                                §§goto(addr337);
                                             }
                                             §§goto(addr373);
                                          }
                                          §§goto(addr369);
                                       }
                                       §§goto(addr323);
                                    }
                                    §§goto(addr411);
                                 }
                                 §§goto(addr357);
                              }
                           }
                           §§goto(addr264);
                        }
                        §§goto(addr260);
                        continue loop4;
                     }
                     §§goto(addr1728);
                  }
               }
               while(this.§_-MT§[this.§_-MT§.length] = new b2ContactConstraint(), !(_loc64_ && this));
               
               §§push(0);
               if(!(_loc64_ && this))
               {
                  _loc6_ = §§pop();
                  if(!(_loc64_ && param3))
                  {
                     §§goto(addr210);
                  }
                  addr1728:
                  return;
               }
               §§goto(addr1726);
            }
            this.§_-ig§ = param3;
         }
         §§goto(addr164);
      }
      
      public function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc2_:b2Vec2 = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Mat22 = null;
         var _loc6_:b2ContactConstraint = null;
         var _loc7_:b2Body = null;
         var _loc8_:b2Body = null;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:* = 0;
         var _loc19_:int = 0;
         var _loc20_:b2ContactConstraintPoint = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2ContactConstraintPoint = null;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < this.§_-ig§)
         {
            _loc7_ = (_loc6_ = this.§_-MT§[_loc5_]).§_-dL§;
            _loc8_ = _loc6_.§_-h1§;
            if(_loc25_)
            {
               §§push(_loc7_.§_-eZ§);
               if(_loc25_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc24_)
                  {
                     _loc9_ = §§pop();
                     if(_loc25_ || _loc2_)
                     {
                        addr102:
                        _loc10_ = _loc7_.§_-DZ§;
                        _loc11_ = _loc8_.§_-eZ§;
                        if(_loc25_)
                        {
                           §§push(_loc8_.§_-DZ§);
                           if(!_loc24_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc25_)
                              {
                                 _loc12_ = §§pop();
                                 if(!_loc24_)
                                 {
                                    §§push(_loc6_.normal);
                                    if(!(_loc24_ && param1))
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc24_ && _loc2_))
                                       {
                                          addr152:
                                          §§push(Number(§§pop()));
                                          if(!(_loc24_ && param1))
                                          {
                                             addr144:
                                             _loc13_ = §§pop();
                                             §§push(Number(_loc6_.normal.y));
                                          }
                                          _loc15_ = _loc14_ = §§pop();
                                          _loc16_ = -_loc13_;
                                          if(param1.§_-o-§)
                                          {
                                             if(_loc24_)
                                             {
                                                continue;
                                             }
                                             _loc19_ = _loc6_.§_-Ws§;
                                             if(!(_loc24_ && _loc3_))
                                             {
                                                _loc18_ = 0;
                                                addr175:
                                                while(true)
                                                {
                                                   §§push(_loc18_);
                                                   §§push(_loc19_);
                                                   if(!(_loc25_ || this))
                                                   {
                                                      loop2:
                                                      for(; §§pop() < §§pop(); while(true)
                                                      {
                                                         continue loop2;
                                                      })
                                                      {
                                                         (_loc23_ = _loc6_.points[_loc18_]).normalImpulse = 0;
                                                         if(!_loc24_)
                                                         {
                                                            _loc23_.tangentImpulse = 0;
                                                            if(!(_loc24_ && _loc3_))
                                                            {
                                                               _loc18_++;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc18_);
                                                            continue loop2;
                                                         }
                                                      }
                                                      if(!(_loc24_ && this))
                                                      {
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc25_)
                                                      {
                                                         addr476:
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   _loc20_ = _loc6_.points[_loc18_];
                                                   §§push(_loc20_);
                                                   §§push(_loc20_.normalImpulse);
                                                   if(_loc25_)
                                                   {
                                                      §§push(§§pop() * param1.§break§);
                                                   }
                                                   §§pop().normalImpulse = §§pop();
                                                   §§push(_loc20_);
                                                   §§push(_loc20_.tangentImpulse);
                                                   if(_loc25_)
                                                   {
                                                      §§push(§§pop() * param1.§break§);
                                                   }
                                                   §§pop().tangentImpulse = §§pop();
                                                   if(_loc25_ || _loc3_)
                                                   {
                                                      §§push(_loc20_.normalImpulse);
                                                      if(!_loc24_)
                                                      {
                                                         §§push(_loc13_);
                                                         if(!(_loc24_ && param1))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            §§push(_loc20_.tangentImpulse);
                                                            if(!_loc24_)
                                                            {
                                                               §§push(_loc15_);
                                                               if(!_loc24_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc25_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc24_)
                                                                     {
                                                                        _loc21_ = §§pop();
                                                                        §§push(_loc20_.normalImpulse);
                                                                        if(_loc25_ || param1)
                                                                        {
                                                                           §§push(_loc14_);
                                                                           if(_loc25_)
                                                                           {
                                                                              addr249:
                                                                              §§push(§§pop() * §§pop());
                                                                              §§push(_loc20_.tangentImpulse);
                                                                              if(!_loc24_)
                                                                              {
                                                                                 addr253:
                                                                                 §§push(§§pop() * _loc16_);
                                                                              }
                                                                              _loc22_ = §§pop() + §§pop();
                                                                              if(_loc25_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 §§push(_loc7_.m_angularVelocity);
                                                                                 if(!(_loc24_ && this))
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    if(_loc25_ || param1)
                                                                                    {
                                                                                       §§push(_loc20_.§_-r4§.x);
                                                                                       if(_loc25_)
                                                                                       {
                                                                                          §§push(_loc22_);
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                addr304:
                                                                                                §§push(_loc20_.§_-r4§.y);
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   addr301:
                                                                                                   §§push(§§pop() * _loc21_);
                                                                                                }
                                                                                                §§pop().m_angularVelocity = §§pop() - §§pop() * (§§pop() - §§pop());
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   addr309:
                                                                                                   §§push(_loc7_.§_-ZZ§);
                                                                                                   if(!_loc24_)
                                                                                                   {
                                                                                                      §§push(_loc7_.§_-ZZ§);
                                                                                                      if(_loc25_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(_loc25_ || this)
                                                                                                         {
                                                                                                            §§push(_loc9_);
                                                                                                            if(_loc25_)
                                                                                                            {
                                                                                                               §§push(_loc21_);
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  addr337:
                                                                                                                  §§pop().x = §§pop() - §§pop() * §§pop();
                                                                                                                  §§push(_loc7_.§_-ZZ§);
                                                                                                                  if(_loc25_)
                                                                                                                  {
                                                                                                                     §§push(_loc7_.§_-ZZ§);
                                                                                                                     if(!_loc24_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(_loc25_)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(_loc25_)
                                                                                                                           {
                                                                                                                              §§push(_loc22_);
                                                                                                                              if(!(_loc24_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§pop().y = §§pop() - §§pop() * §§pop();
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 §§push(_loc8_.m_angularVelocity);
                                                                                                                                 if(!(_loc24_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc12_);
                                                                                                                                    if(!(_loc24_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(_loc20_.§_-a§.x);
                                                                                                                                       if(_loc25_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc22_);
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             addr402:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc25_)
                                                                                                                                             {
                                                                                                                                                addr393:
                                                                                                                                                §§push(_loc20_.§_-a§.y);
                                                                                                                                                if(_loc25_)
                                                                                                                                                {
                                                                                                                                                   addr398:
                                                                                                                                                   §§push(§§pop() * _loc21_);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                             }
                                                                                                                                             §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                             §§push(_loc8_.§_-ZZ§);
                                                                                                                                             if(_loc25_ || param1)
                                                                                                                                             {
                                                                                                                                                addr413:
                                                                                                                                                §§push(_loc8_.§_-ZZ§);
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   addr418:
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                   if(_loc25_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr427:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         addr430:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc25_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr438:
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            if(_loc24_ && _loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            addr452:
                                                                                                                                                            §§push(_loc8_.§_-ZZ§);
                                                                                                                                                            §§push(_loc8_.§_-ZZ§.y + _loc11_ * _loc22_);
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         if(!(_loc24_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr463:
                                                                                                                                                            _loc18_++;
                                                                                                                                                         }
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr452);
                                                                                                                                          }
                                                                                                                                          §§goto(addr398);
                                                                                                                                       }
                                                                                                                                       §§goto(addr393);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr402);
                                                                                                                              }
                                                                                                                              §§goto(addr427);
                                                                                                                           }
                                                                                                                           §§goto(addr430);
                                                                                                                        }
                                                                                                                        §§goto(addr418);
                                                                                                                     }
                                                                                                                     §§goto(addr452);
                                                                                                                  }
                                                                                                                  §§goto(addr413);
                                                                                                               }
                                                                                                               §§goto(addr427);
                                                                                                            }
                                                                                                            §§goto(addr337);
                                                                                                         }
                                                                                                         §§goto(addr438);
                                                                                                      }
                                                                                                      §§goto(addr418);
                                                                                                   }
                                                                                                   §§goto(addr452);
                                                                                                }
                                                                                                §§goto(addr463);
                                                                                             }
                                                                                             §§goto(addr304);
                                                                                          }
                                                                                          §§goto(addr301);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr304);
                                                                              }
                                                                              §§goto(addr309);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr249);
                                                                  }
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                   §§goto(addr309);
                                                }
                                                _loc5_++;
                                                continue;
                                             }
                                             §§goto(addr476);
                                          }
                                          else
                                          {
                                             _loc19_ = _loc6_.§_-Ws§;
                                             addr481:
                                             §§push(0);
                                             if(_loc25_)
                                             {
                                                _loc18_ = §§pop();
                                                §§goto(addr509);
                                             }
                                          }
                                          §§goto(addr510);
                                       }
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr481);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr481);
                     }
                     §§goto(addr175);
                  }
               }
               §§goto(addr102);
            }
            §§goto(addr144);
         }
      }
      
      public function SolveVelocityConstraints() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 3370
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §_-qd§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < this.§_-ig§)
         {
            _loc2_ = this.§_-MT§[_loc1_];
            _loc3_ = _loc2_.§_-4M§;
            if(!_loc8_)
            {
               §§push(0);
               if(!_loc8_)
               {
                  _loc4_ = §§pop();
                  if(_loc7_)
                  {
                     addr49:
                     loop2:
                     while(true)
                     {
                        §§push(_loc4_);
                        addr96:
                        while(§§pop() < _loc2_.§_-Ws§)
                        {
                           _loc5_ = _loc3_.§_-hn§[_loc4_];
                           _loc6_ = _loc2_.points[_loc4_];
                           if(!(_loc8_ && _loc2_))
                           {
                              _loc5_.§_-JQ§ = _loc6_.normalImpulse;
                              if(!(_loc8_ && _loc1_))
                              {
                                 _loc5_.§_-RC§ = _loc6_.tangentImpulse;
                                 if(_loc8_)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                           _loc4_++;
                           continue loop2;
                        }
                        if(!_loc7_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  _loc1_++;
                  continue;
               }
               §§goto(addr96);
            }
            §§goto(addr49);
         }
      }
      
      public function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = 0;
         var _loc13_:b2ContactConstraintPoint = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         §§push(0);
         if(!(_loc25_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < this.§_-ig§)
         {
            _loc5_ = (_loc4_ = this.§_-MT§[_loc3_]).§_-dL§;
            _loc6_ = _loc4_.§_-h1§;
            if(!_loc25_)
            {
               §§push(_loc5_.§_-jI§);
               if(!_loc25_)
               {
                  §§push(_loc5_.§_-eZ§);
                  if(_loc24_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc25_ && _loc3_))
                     {
                        addr106:
                        _loc7_ = §§pop();
                        if(!_loc25_)
                        {
                           §§push(_loc5_.§_-jI§);
                           if(_loc24_)
                           {
                              §§push(_loc5_.§_-DZ§);
                              if(!(_loc25_ && this))
                              {
                                 §§push(Number(§§pop() * §§pop()));
                                 if(_loc24_)
                                 {
                                    addr126:
                                    _loc8_ = §§pop();
                                    if(_loc24_)
                                    {
                                       addr129:
                                       §§push(_loc6_.§_-jI§);
                                       if(_loc24_)
                                       {
                                          §§push(_loc6_.§_-eZ§);
                                          if(!_loc25_)
                                          {
                                             addr138:
                                             _loc9_ = §§pop() * §§pop();
                                             if(_loc24_)
                                             {
                                                addr148:
                                                _loc10_ = _loc6_.§_-jI§ * _loc6_.§_-DZ§;
                                                addr146:
                                                if(!_loc25_)
                                                {
                                                   addr151:
                                                   §§push(§_-Hw§);
                                                   if(_loc24_)
                                                   {
                                                      §§pop().§_-lc§(_loc4_);
                                                      addr156:
                                                      §§push(§_-Hw§);
                                                   }
                                                   _loc11_ = §§pop().§_-u5§;
                                                   if(!_loc25_)
                                                   {
                                                      §§push(0);
                                                      if(!_loc25_)
                                                      {
                                                         _loc12_ = §§pop();
                                                         if(!(_loc25_ && _loc3_))
                                                         {
                                                            addr173:
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(_loc12_);
                                                               addr679:
                                                               while(§§pop() < _loc4_.§_-Ws§)
                                                               {
                                                                  _loc13_ = _loc4_.points[_loc12_];
                                                                  _loc14_ = §_-Hw§.§_-hn§[_loc12_];
                                                                  §§push(Number(§_-Hw§.§_-hz§[_loc12_]));
                                                                  if(_loc24_ || this)
                                                                  {
                                                                     _loc15_ = §§pop();
                                                                     if(!(_loc25_ && _loc3_))
                                                                     {
                                                                        §§push(_loc14_.x);
                                                                        if(_loc24_ || this)
                                                                        {
                                                                           §§push(_loc5_.m_sweep);
                                                                           if(!_loc25_)
                                                                           {
                                                                              §§push(§§pop().c);
                                                                              if(!(_loc25_ && param1))
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(!_loc25_)
                                                                                 {
                                                                                    _loc16_ = §§pop() - §§pop();
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       §§push(_loc14_.y);
                                                                                       if(_loc24_ || this)
                                                                                       {
                                                                                          §§push(_loc5_.m_sweep);
                                                                                          if(!(_loc25_ && param1))
                                                                                          {
                                                                                             addr254:
                                                                                             §§push(§§pop().c);
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                _loc17_ = §§pop() - §§pop().y;
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   §§push(_loc14_.x);
                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                   if(_loc24_ || _loc2_)
                                                                                                   {
                                                                                                      addr274:
                                                                                                      §§push(§§pop().c);
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         addr279:
                                                                                                         _loc18_ = §§pop() - §§pop().x;
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            addr288:
                                                                                                            §§push(_loc14_.y - _loc6_.m_sweep.c.y);
                                                                                                            if(!(_loc25_ && param1))
                                                                                                            {
                                                                                                               _loc19_ = §§pop();
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  if(_loc2_ < _loc15_)
                                                                                                                  {
                                                                                                                     addr310:
                                                                                                                     §§push(Number(Number(_loc2_)));
                                                                                                                     if(!_loc25_)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        if(_loc24_ || param1)
                                                                                                                        {
                                                                                                                           §§push(b2Math);
                                                                                                                           §§push(param1);
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              §§push(_loc15_);
                                                                                                                              if(_loc24_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(b2Settings.b2_linearSlop);
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc25_)
                                                                                                                                    {
                                                                                                                                       addr341:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                                       if(!_loc25_)
                                                                                                                                       {
                                                                                                                                          addr345:
                                                                                                                                          §§push(-§§pop());
                                                                                                                                       }
                                                                                                                                       §§push(0);
                                                                                                                                    }
                                                                                                                                    §§goto(addr345);
                                                                                                                                 }
                                                                                                                                 _loc20_ = §§pop().§_-Gj§(§§pop(),§§pop(),§§pop());
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    addr361:
                                                                                                                                    §§push(-_loc13_.§_-RI§);
                                                                                                                                    §§push(_loc20_);
                                                                                                                                    if(!(_loc25_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop() * §§pop()));
                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr383:
                                                                                                                                          addr381:
                                                                                                                                          §§push(Number((_loc21_ = §§pop()) * _loc11_.x));
                                                                                                                                          if(_loc24_ || this)
                                                                                                                                          {
                                                                                                                                             _loc22_ = §§pop();
                                                                                                                                             addr394:
                                                                                                                                             §§push(Number(_loc21_ * _loc11_.y));
                                                                                                                                          }
                                                                                                                                          _loc23_ = §§pop();
                                                                                                                                          §§push(_loc5_.m_sweep);
                                                                                                                                          if(_loc24_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().c);
                                                                                                                                             if(!(_loc25_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_.m_sweep);
                                                                                                                                                if(!_loc25_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   if(!(_loc25_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         if(!(_loc25_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                            if(!_loc25_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc24_ || this)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  if(_loc24_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     §§push(_loc5_.m_sweep);
                                                                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                        if(!(_loc25_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc5_.m_sweep);
                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().c);
                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                 if(!(_loc25_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr492:
                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                    §§push(_loc23_);
                                                                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr500:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc24_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr508:
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          if(!_loc25_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr511:
                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                             §§push(_loc5_.m_sweep);
                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc5_.m_sweep);
                                                                                                                                                                                                if(_loc24_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().a);
                                                                                                                                                                                                   if(!_loc25_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                      if(_loc24_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc23_);
                                                                                                                                                                                                            if(!_loc25_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!(_loc25_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr550:
                                                                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                                                                  if(!_loc25_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc24_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr564:
                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr578:
                                                                                                                                                                                                                                    §§pop().a = §§pop();
                                                                                                                                                                                                                                    _loc5_.§_-Z9§();
                                                                                                                                                                                                                                    if(!(_loc25_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr592:
                                                                                                                                                                                                                                          §§push(§§pop().c);
                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr599:
                                                                                                                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                                                                                                                if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr607:
                                                                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr610:
                                                                                                                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                                                                                                                      if(!_loc25_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr616:
                                                                                                                                                                                                                                                         §§pop().x = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                         addr614:
                                                                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr619:
                                                                                                                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                            if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr636:
                                                                                                                                                                                                                                                               §§pop().c.y = _loc6_.m_sweep.c.y + _loc9_ * _loc23_;
                                                                                                                                                                                                                                                               addr635:
                                                                                                                                                                                                                                                               if(!_loc25_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr642:
                                                                                                                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                  §§push(_loc6_.m_sweep.a);
                                                                                                                                                                                                                                                                  if(!_loc25_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                                                                                                                     if(!(_loc25_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc23_);
                                                                                                                                                                                                                                                                           if(!_loc25_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr670:
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr664:
                                                                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                                                                 if(!_loc25_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr667:
                                                                                                                                                                                                                                                                                    §§push(§§pop() * _loc22_);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§pop().a = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr675:
                                                                                                                                                                                                                                                                                 _loc6_.§_-Z9§();
                                                                                                                                                                                                                                                                                 _loc12_++;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop2;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr670);
                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr670);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr675);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr642);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr675);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr635);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr642);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr675);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr670);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr664);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr667);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr564);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr670);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr667);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr550);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr670);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr578);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr642);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr635);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr636);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr614);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr616);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr607);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr599);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr636);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr511);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr508);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr500);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr492);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr610);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr607);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr636);
                                                                                                                                          }
                                                                                                                                          §§goto(addr592);
                                                                                                                                       }
                                                                                                                                       §§goto(addr394);
                                                                                                                                    }
                                                                                                                                    §§goto(addr383);
                                                                                                                                 }
                                                                                                                                 §§goto(addr619);
                                                                                                                              }
                                                                                                                              §§goto(addr345);
                                                                                                                           }
                                                                                                                           §§goto(addr341);
                                                                                                                        }
                                                                                                                        §§goto(addr383);
                                                                                                                     }
                                                                                                                     §§goto(addr381);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr310);
                                                                                                                     §§push(Number(_loc15_));
                                                                                                                  }
                                                                                                                  §§goto(addr310);
                                                                                                               }
                                                                                                               §§goto(addr394);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr361);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr288);
                                                                                                }
                                                                                                §§goto(addr675);
                                                                                             }
                                                                                             §§goto(addr288);
                                                                                          }
                                                                                          §§goto(addr274);
                                                                                       }
                                                                                       §§goto(addr279);
                                                                                    }
                                                                                    §§goto(addr310);
                                                                                 }
                                                                                 §§goto(addr383);
                                                                              }
                                                                              §§goto(addr279);
                                                                           }
                                                                           §§goto(addr254);
                                                                        }
                                                                        §§goto(addr361);
                                                                     }
                                                                     §§goto(addr675);
                                                                  }
                                                                  §§goto(addr310);
                                                                  continue loop2;
                                                               }
                                                               if(_loc25_ && _loc2_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                         _loc3_++;
                                                         continue;
                                                      }
                                                      §§goto(addr679);
                                                   }
                                                   §§goto(addr173);
                                                }
                                                §§goto(addr156);
                                             }
                                             §§goto(addr151);
                                          }
                                          §§goto(addr146);
                                       }
                                    }
                                    §§goto(addr148);
                                 }
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr129);
                     }
                  }
                  §§goto(addr148);
               }
               §§goto(addr106);
            }
            §§goto(addr148);
         }
         §§push(_loc2_);
         §§push(-1.5);
         if(!(_loc25_ && param1))
         {
            §§push(§§pop() * b2Settings.b2_linearSlop);
         }
         return §§pop() > §§pop();
      }
   }
}
