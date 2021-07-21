package §#A§
{
   import § !t§.*;
   import §'!;§.*;
   import §<!B§.*;
   import §?s§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §3!m§:b2Vec2;
      
      private static var §+!G§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §3!m§ = new b2Vec2();
            if(!(_loc2_ && b2PositionSolverManifold))
            {
               §+!G§ = new b2Vec2();
            }
         }
      }
      
      public var §<!S§:b2Vec2;
      
      public var §`?§:Vector.<b2Vec2>;
      
      public var §+g§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            super();
            if(_loc2_)
            {
               addr27:
               this.§<!S§ = new b2Vec2();
               if(_loc2_)
               {
                  this.§+g§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                  if(!(_loc3_ && this))
                  {
                     this.§`?§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                     addr58:
                  }
                  var _loc1_:int = 0;
                  while(_loc1_ < b2Settings.b2_maxManifoldPoints)
                  {
                     this.§`?§[_loc1_] = new b2Vec2();
                     if(_loc2_ || this)
                     {
                        _loc1_++;
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr58);
         }
         §§goto(addr27);
      }
      
      public function §6!V§(param1:b2ContactConstraint) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:b2Mat22 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         if(!_loc18_)
         {
            b2Settings.b2Assert(param1.§+6§ > 0);
         }
         §§push(param1.type);
         if(!_loc18_)
         {
            var _loc17_:* = §§pop();
            if(_loc19_)
            {
               §§push(b2Manifold.§;!P§);
               if(!_loc18_)
               {
                  §§push(_loc17_);
                  if(!(_loc18_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        §§push(!!_loc19_ ? 0 : 1);
                     }
                     else
                     {
                        §§push(b2Manifold.§ !N§);
                        §§push(_loc17_);
                        if(!(_loc18_ && _loc3_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc19_ || _loc3_)
                              {
                                 §§goto(addr1666);
                              }
                              addr1679:
                              loop4:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc5_ = param1.§[!i§.m_xf.R;
                                    _loc6_ = param1.localPoint;
                                    if(!_loc18_)
                                    {
                                       §§push(param1.§[!i§);
                                       if(!(_loc18_ && this))
                                       {
                                          §§push(§§pop().m_xf);
                                          if(_loc19_)
                                          {
                                             §§push(§§pop().position);
                                             if(_loc19_ || _loc2_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc19_)
                                                {
                                                   §§push(_loc5_.col1);
                                                   if(_loc19_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc18_ && this))
                                                      {
                                                         §§push(_loc6_.x);
                                                         if(_loc19_ || this)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc19_)
                                                            {
                                                               §§push(_loc5_.col2);
                                                               if(_loc19_ || _loc3_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(_loc6_.y);
                                                                     if(_loc19_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc19_ || this)
                                                                        {
                                                                           addr147:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc19_ || this)
                                                                           {
                                                                              addr155:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc19_ || param1)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    if(_loc19_ || _loc2_)
                                                                                    {
                                                                                       addr176:
                                                                                       §§push(param1.§[!i§.m_xf);
                                                                                       if(_loc19_ || this)
                                                                                       {
                                                                                          addr185:
                                                                                          §§push(§§pop().position.y);
                                                                                          if(_loc19_ || _loc3_)
                                                                                          {
                                                                                             addr193:
                                                                                             §§push(_loc5_.col1.y);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                addr198:
                                                                                                §§push(_loc6_.x);
                                                                                                if(_loc19_ || this)
                                                                                                {
                                                                                                   addr207:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc19_ || this)
                                                                                                   {
                                                                                                      addr215:
                                                                                                      §§push(_loc5_.col2.y);
                                                                                                      if(!(_loc18_ && this))
                                                                                                      {
                                                                                                         addr225:
                                                                                                         §§push(§§pop() * _loc6_.y);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      addr233:
                                                                                                      _loc10_ = §§pop();
                                                                                                      _loc5_ = param1.§;!K§.m_xf.R;
                                                                                                      _loc6_ = param1.§>!@§[0].localPoint;
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(param1.§;!K§);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            §§push(§§pop().m_xf);
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               §§push(§§pop().position);
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(!(_loc18_ && this))
                                                                                                                  {
                                                                                                                     §§push(_loc5_.col1);
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.x);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              §§push(_loc5_.col2);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 if(_loc19_ || this)
                                                                                                                                 {
                                                                                                                                    addr291:
                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!(_loc18_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr303:
                                                                                                                                          §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(!(_loc18_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                _loc11_ = §§pop();
                                                                                                                                                addr318:
                                                                                                                                                §§push(param1.§;!K§.m_xf);
                                                                                                                                                if(_loc19_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr330:
                                                                                                                                                   §§push(§§pop().position.y);
                                                                                                                                                   §§push(_loc5_.col1.y);
                                                                                                                                                   if(!(_loc18_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         addr345:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         §§push(_loc5_.col2.y);
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            addr350:
                                                                                                                                                            §§push(§§pop() * _loc6_.y);
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr353:
                                                                                                                                                               §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                               if(!(_loc18_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(!(_loc18_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     _loc12_ = §§pop();
                                                                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                        if(!(_loc18_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr387:
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr393:
                                                                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr401:
                                                                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr405:
                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr416:
                                                                                                                                                                                             §§push(§§pop() * _loc13_);
                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr414:
                                                                                                                                                                                                §§push(§§pop() * _loc14_);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                             if(!(_loc18_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr424:
                                                                                                                                                                                                if((_loc15_ = §§pop()) > Number.MIN_VALUE * Number.MIN_VALUE)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc19_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr443:
                                                                                                                                                                                                      _loc16_ = Math.sqrt(_loc15_);
                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr446:
                                                                                                                                                                                                         §§push(this.§<!S§);
                                                                                                                                                                                                         if(_loc19_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                     if(!(_loc18_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§<!S§);
                                                                                                                                                                                                                        if(_loc19_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr485:
                                                                                                                                                                                                                              §§push(§§pop() / _loc16_);
                                                                                                                                                                                                                              if(_loc19_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr493:
                                                                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr516:
                                                                                                                                                                                                                                    this.§`?§[0].x = 0.5 * (_loc9_ + _loc11_);
                                                                                                                                                                                                                                    addr526:
                                                                                                                                                                                                                                    this.§`?§[0].y = 0.5 * (_loc10_ + _loc12_);
                                                                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr538:
                                                                                                                                                                                                                                       this.§+g§[0] = _loc13_ * this.§<!S§.x + _loc14_ * this.§<!S§.y - param1.radius;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                    addr501:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr526);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr513:
                                                                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr516);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr538);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr493);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr506:
                                                                                                                                                                                                                           §§pop().x = 1;
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr512:
                                                                                                                                                                                                                              §§push(this.§<!S§);
                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr516);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr516);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr513);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr485);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr512);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr501);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr446);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§<!S§);
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr506);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr512);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr443);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr416);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr446);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr424);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr416);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr424);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr405);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr401);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr414);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr387);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr561:
                                                                                                                                                   _loc5_ = §§pop().R;
                                                                                                                                                   _loc6_ = param1.§>v§;
                                                                                                                                                   if(_loc19_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§<!S§);
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_.col1);
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.x);
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_.col2);
                                                                                                                                                                     if(_loc19_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        if(!(_loc18_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.y);
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc19_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 addr622:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    if(_loc19_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr637:
                                                                                                                                                                                       §§push(this.§<!S§);
                                                                                                                                                                                       §§push(_loc5_.col1.y);
                                                                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc19_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr662:
                                                                                                                                                                                                §§push(_loc5_.col2.y);
                                                                                                                                                                                                if(_loc19_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr675:
                                                                                                                                                                                                   §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr675);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                             addr677:
                                                                                                                                                                                             _loc5_ = param1.§[!i§.m_xf.R;
                                                                                                                                                                                             _loc6_ = param1.localPoint;
                                                                                                                                                                                             if(_loc19_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param1.§[!i§);
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().m_xf);
                                                                                                                                                                                                   if(_loc19_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().position);
                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc5_.col1);
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc6_.x);
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr726:
                                                                                                                                                                                                                        §§push(_loc5_.col2);
                                                                                                                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                                                                           if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc6_.y);
                                                                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr750:
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(_loc19_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr769:
                                                                                                                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr774:
                                                                                                                                                                                                                                                §§push(param1.§[!i§.m_xf);
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr778:
                                                                                                                                                                                                                                                   §§push(§§pop().position.y);
                                                                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr781:
                                                                                                                                                                                                                                                      addr783:
                                                                                                                                                                                                                                                      §§push(_loc5_.col1.y);
                                                                                                                                                                                                                                                      if(_loc19_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr791:
                                                                                                                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr795:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr798:
                                                                                                                                                                                                                                                               §§push(_loc5_.col2.y);
                                                                                                                                                                                                                                                               if(_loc19_ || _loc2_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr811:
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr811);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr811);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr816:
                                                                                                                                                                                                                                                         _loc8_ = §§pop();
                                                                                                                                                                                                                                                         §§push(param1.§;!K§.m_xf);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr816);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                _loc5_ = §§pop().R;
                                                                                                                                                                                                                                                if(_loc19_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                   if(_loc19_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr856:
                                                                                                                                                                                                                                                         loop1:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                                                                                                                            addr1059:
                                                                                                                                                                                                                                                            while(§§pop() < param1.§+6§)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc6_ = param1.§>!@§[_loc2_].localPoint;
                                                                                                                                                                                                                                                               §§push(param1.§;!K§);
                                                                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().m_xf);
                                                                                                                                                                                                                                                                  if(_loc19_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop().position);
                                                                                                                                                                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc5_.col1);
                                                                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                 if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr912:
                                                                                                                                                                                                                                                                                       §§push(_loc5_.col2);
                                                                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(_loc19_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr931:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   if(_loc19_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         if(_loc19_ || _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                                            addr955:
                                                                                                                                                                                                                                                                                                            §§push(param1.§;!K§.m_xf.position.y);
                                                                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr958:
                                                                                                                                                                                                                                                                                                               §§push(_loc5_.col1.y);
                                                                                                                                                                                                                                                                                                               if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                                  if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr977:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc19_ || param1)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr985:
                                                                                                                                                                                                                                                                                                                        §§push(_loc5_.col2.y);
                                                                                                                                                                                                                                                                                                                        if(_loc19_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr995:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * _loc6_.y);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1007:
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                                     if(_loc19_ || this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        this.§+g§[_loc2_] = (_loc3_ - _loc7_) * this.§<!S§.x + (_loc4_ - _loc8_) * this.§<!S§.y - param1.radius;
                                                                                                                                                                                                                                                                                                                        this.§`?§[_loc2_].x = _loc3_;
                                                                                                                                                                                                                                                                                                                        if(_loc19_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           this.§`?§[_loc2_].y = _loc4_;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     _loc2_++;
                                                                                                                                                                                                                                                                                                                     continue loop1;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr995);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr985);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1007);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr958);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr985);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr995);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr931);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr985);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr977);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr912);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr958);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr955);
                                                                                                                                                                                                                                                               continue loop1;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1059);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr856);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr816);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr781);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr769);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr798);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr811);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr750);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr798);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr791);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr795);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr726);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr783);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr816);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr778);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr774);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr816);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr662);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr677);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr662);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr675);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr622);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr662);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr675);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr662);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr637);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr677);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr401);
                                                                                                                                          }
                                                                                                                                          §§goto(addr393);
                                                                                                                                       }
                                                                                                                                       §§goto(addr353);
                                                                                                                                    }
                                                                                                                                    §§goto(addr350);
                                                                                                                                 }
                                                                                                                                 §§goto(addr303);
                                                                                                                              }
                                                                                                                              §§goto(addr345);
                                                                                                                           }
                                                                                                                           §§goto(addr291);
                                                                                                                        }
                                                                                                                        §§goto(addr424);
                                                                                                                     }
                                                                                                                     §§goto(addr330);
                                                                                                                  }
                                                                                                                  §§goto(addr393);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr330);
                                                                                                         }
                                                                                                         §§goto(addr318);
                                                                                                      }
                                                                                                      §§goto(addr516);
                                                                                                      addr232:
                                                                                                   }
                                                                                                   §§goto(addr233);
                                                                                                }
                                                                                                §§goto(addr225);
                                                                                             }
                                                                                             §§goto(addr215);
                                                                                          }
                                                                                          §§goto(addr232);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr233);
                                                                                 }
                                                                                 §§goto(addr193);
                                                                              }
                                                                              §§goto(addr233);
                                                                           }
                                                                           §§goto(addr198);
                                                                        }
                                                                        §§goto(addr207);
                                                                     }
                                                                  }
                                                                  §§goto(addr225);
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                            §§goto(addr155);
                                                         }
                                                         §§goto(addr147);
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                   §§goto(addr193);
                                                }
                                                §§goto(addr233);
                                             }
                                          }
                                          §§goto(addr185);
                                       }
                                    }
                                    §§goto(addr176);
                                 case 1:
                                    §§goto(addr561);
                                 case 2:
                                    _loc5_ = param1.§;!K§.m_xf.R;
                                    _loc6_ = param1.§>v§;
                                    §§push(param1.§[!i§.m_xf);
                                    if(_loc19_ || param1)
                                    {
                                       §§push(this.§<!S§);
                                       if(_loc19_ || this)
                                       {
                                          §§push(_loc5_.col1);
                                          if(_loc19_)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc18_)
                                             {
                                                §§push(_loc6_.x);
                                                if(_loc19_ || _loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc18_)
                                                   {
                                                      §§push(_loc5_.col2);
                                                      if(_loc19_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc18_ && param1))
                                                         {
                                                            §§push(_loc6_.y);
                                                            if(!(_loc18_ && _loc2_))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc19_ || _loc3_)
                                                               {
                                                                  addr1138:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc19_ || _loc2_)
                                                                  {
                                                                     addr1146:
                                                                     §§pop().x = §§pop();
                                                                     if(!_loc18_)
                                                                     {
                                                                        addr1153:
                                                                        §§push(this.§<!S§);
                                                                        §§push(_loc5_.col1.y);
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(_loc6_.x);
                                                                           if(!_loc18_)
                                                                           {
                                                                              addr1160:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc18_)
                                                                              {
                                                                                 addr1163:
                                                                                 §§push(_loc5_.col2.y);
                                                                                 if(!(_loc18_ && _loc3_))
                                                                                 {
                                                                                    addr1176:
                                                                                    §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                 }
                                                                                 §§goto(addr1176);
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                           }
                                                                           §§goto(addr1176);
                                                                        }
                                                                        §§goto(addr1163);
                                                                     }
                                                                     _loc5_ = param1.§;!K§.m_xf.R;
                                                                     _loc6_ = param1.localPoint;
                                                                     if(_loc19_ || param1)
                                                                     {
                                                                        §§push(param1.§;!K§);
                                                                        if(!(_loc18_ && param1))
                                                                        {
                                                                           §§push(§§pop().m_xf);
                                                                           if(_loc19_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop().position);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(_loc5_.col1);
                                                                                    if(!(_loc18_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!(_loc18_ && _loc2_))
                                                                                       {
                                                                                          §§push(_loc6_.x);
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                addr1242:
                                                                                                §§push(_loc5_.col2);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      addr1249:
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(_loc19_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc19_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc18_ && this))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        addr1285:
                                                                                                                        addr1283:
                                                                                                                        §§push(param1.§;!K§.m_xf);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           addr1289:
                                                                                                                           §§push(§§pop().position.y);
                                                                                                                           if(!(_loc18_ && this))
                                                                                                                           {
                                                                                                                              addr1297:
                                                                                                                              addr1299:
                                                                                                                              §§push(_loc5_.col1.y);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       addr1309:
                                                                                                                                       §§push(_loc5_.col2.y);
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          addr1317:
                                                                                                                                          §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1317);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1317);
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!(_loc18_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr1327:
                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                 §§push(param1.§[!i§.m_xf);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1327);
                                                                                                                        }
                                                                                                                        _loc5_ = §§pop().R;
                                                                                                                        if(_loc19_ || param1)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              if(!(_loc18_ && _loc2_))
                                                                                                                              {
                                                                                                                                 loop2:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc2_);
                                                                                                                                    addr1546:
                                                                                                                                    for(; §§pop() < param1.§+6§; continue loop2)
                                                                                                                                    {
                                                                                                                                       _loc6_ = param1.§>!@§[_loc2_].localPoint;
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§[!i§);
                                                                                                                                          if(_loc19_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().m_xf);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().position);
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_.col1);
                                                                                                                                                      if(_loc19_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         if(_loc19_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.x);
                                                                                                                                                            if(!(_loc18_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!(_loc18_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_.col2);
                                                                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     if(!(_loc18_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr1432:
                                                                                                                                                                        §§push(_loc6_.y);
                                                                                                                                                                        if(_loc19_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(_loc19_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1452:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1455:
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1465:
                                                                                                                                                                                          §§push(param1.§[!i§.m_xf.position.y);
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1468:
                                                                                                                                                                                             §§push(_loc5_.col1.y);
                                                                                                                                                                                             if(!(_loc18_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1478:
                                                                                                                                                                                                §§push(_loc6_.x);
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1494:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1485:
                                                                                                                                                                                                      §§push(_loc5_.col2.y);
                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1492:
                                                                                                                                                                                                         §§push(§§pop() * _loc6_.y);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc19_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1503:
                                                                                                                                                                                                      _loc4_ = Number(§§pop());
                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§+g§[_loc2_] = (_loc3_ - _loc7_) * this.§<!S§.x + (_loc4_ - _loc8_) * this.§<!S§.y - param1.radius;
                                                                                                                                                                                                         if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1535:
                                                                                                                                                                                                            this.§`?§[_loc2_].Set(_loc3_,_loc4_);
                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1544:
                                                                                                                                                                                                               _loc2_++;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1544);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1503);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1494);
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1485);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1503);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1544);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1503);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1468);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1494);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1492);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1494);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1485);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1452);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1432);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1478);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1468);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1455);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1465);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1535);
                                                                                                                                    }
                                                                                                                                    addr1611:
                                                                                                                                    if(_loc19_ || _loc3_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr1611:
                                                                                                                                    break loop4;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§push(this.§<!S§);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(this.§<!S§);
                                                                                                                                 if(!(_loc18_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(-1);
                                                                                                                                       if(_loc19_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                             if(_loc19_ || param1)
                                                                                                                                             {
                                                                                                                                                addr1600:
                                                                                                                                                §§push(this.§<!S§);
                                                                                                                                                §§push(this.§<!S§.y);
                                                                                                                                                if(!(_loc18_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr1609:
                                                                                                                                                   §§push(§§pop() * -1);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1611);
                                                                                                                                          }
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          §§goto(addr1611);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1609);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1600);
                                                                                                                           }
                                                                                                                           §§goto(addr1546);
                                                                                                                        }
                                                                                                                        §§goto(addr1611);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1327);
                                                                                                               }
                                                                                                               §§goto(addr1297);
                                                                                                            }
                                                                                                            §§goto(addr1309);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1317);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1309);
                                                                                          }
                                                                                          §§goto(addr1249);
                                                                                       }
                                                                                       §§goto(addr1242);
                                                                                    }
                                                                                    §§goto(addr1299);
                                                                                 }
                                                                                 §§goto(addr1297);
                                                                              }
                                                                           }
                                                                           §§goto(addr1289);
                                                                        }
                                                                        §§goto(addr1285);
                                                                     }
                                                                     §§goto(addr1283);
                                                                  }
                                                                  §§goto(addr1163);
                                                               }
                                                            }
                                                            §§goto(addr1176);
                                                         }
                                                         §§goto(addr1138);
                                                      }
                                                   }
                                                   §§goto(addr1163);
                                                }
                                                §§goto(addr1160);
                                             }
                                             §§goto(addr1146);
                                          }
                                       }
                                    }
                                    §§goto(addr1153);
                              }
                              return;
                              addr1678:
                           }
                           else
                           {
                              addr1671:
                              if(b2Manifold.§%!5§ !== _loc17_)
                              {
                                 §§goto(addr1678);
                                 §§push(3);
                              }
                              §§goto(addr1678);
                           }
                           §§push(2);
                        }
                        §§goto(addr1671);
                     }
                     §§goto(addr1678);
                  }
                  §§goto(addr1671);
               }
               §§goto(addr1637);
            }
            §§goto(addr1666);
         }
         §§goto(addr1679);
      }
   }
}
