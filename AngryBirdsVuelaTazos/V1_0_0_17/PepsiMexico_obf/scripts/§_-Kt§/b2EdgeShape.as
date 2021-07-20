package §_-Kt§
{
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Transform;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   import §_-qg§.b2AABB;
   import §_-qg§.b2RayCastInput;
   import §_-qg§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §_-dh§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §_-GG§:Number;
      
      b2internal var §_-u5§:b2Vec2;
      
      b2internal var §_-3t§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §_-6-§:b2EdgeShape;
      
      b2internal var §_-9a§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§_-dh§ = new b2Vec2();
         this.m_v1 = new b2Vec2();
         this.m_v2 = new b2Vec2();
         this.m_coreV1 = new b2Vec2();
         if(!(_loc3_ && _loc3_))
         {
            this.m_coreV2 = new b2Vec2();
            if(!(_loc3_ && param1))
            {
               this.§_-u5§ = new b2Vec2();
               if(!_loc3_)
               {
                  this.§_-3t§ = new b2Vec2();
                  this.m_cornerDir1 = new b2Vec2();
                  this.m_cornerDir2 = new b2Vec2();
                  if(!_loc3_)
                  {
                     super();
                     §_-Sj§ = b2internal::_-mn;
                     if(!(_loc3_ && param1))
                     {
                        this.§_-9a§ = null;
                        this.§_-6-§ = null;
                        §§goto(addr86);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr238);
               }
               addr86:
               this.m_v1 = param1;
               §§goto(addr89);
            }
            addr89:
            this.m_v2 = param2;
            §§push(this.§_-3t§);
            §§push(this.m_v2.x);
            if(_loc4_)
            {
               §§push(this.m_v1.x);
               if(_loc4_)
               {
                  §§goto(addr105);
               }
               §§goto(addr110);
            }
            addr105:
            §§push(§§pop() - §§pop());
            §§push(this.m_v2.y);
            if(!_loc3_)
            {
               addr110:
               §§push(§§pop() - this.m_v1.y);
            }
            §§pop().Set(§§pop(),§§pop());
            if(_loc4_ || param1)
            {
               this.§_-GG§ = this.§_-3t§.Normalize();
               §§push(this.§_-u5§);
               §§push(this.§_-3t§.y);
               §§push(this.§_-3t§.x);
               if(_loc4_ || param2)
               {
                  §§push(-§§pop());
               }
               §§pop().Set(§§pop(),§§pop());
               addr144:
               §§push(this.m_coreV1);
               §§push(b2Settings.b2_toiSlop);
               if(!(_loc3_ && param2))
               {
                  §§push(-§§pop());
                  if(!_loc3_)
                  {
                     §§push(this.§_-u5§.x);
                     §§push(this.§_-3t§.x);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() - §§pop());
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc4_)
                           {
                              addr193:
                              §§push(§§pop() + this.m_v1.x);
                              §§push(b2Settings.b2_toiSlop);
                              if(!(_loc3_ && param2))
                              {
                                 §§push(-§§pop());
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(this.§_-u5§.y);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() - this.§_-3t§.y);
                                       if(_loc3_ && _loc3_)
                                       {
                                       }
                                       addr238:
                                       §§pop().Set(§§pop(),§§pop() + §§pop());
                                       §§push(this.m_coreV2);
                                       §§push(b2Settings.b2_toiSlop);
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(-§§pop());
                                          if(_loc4_)
                                          {
                                             §§push(this.§_-u5§.x);
                                             §§push(this.§_-3t§.x);
                                             if(_loc4_ || param1)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc4_ || param2)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§push(this.m_v2.x);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         addr293:
                                                         §§push(§§pop() + §§pop());
                                                         §§push(-b2Settings.b2_toiSlop);
                                                      }
                                                      §§push(this.§_-u5§.y);
                                                      if(_loc4_)
                                                      {
                                                         addr301:
                                                         §§push(§§pop() + this.§_-3t§.y);
                                                         if(_loc4_ || param2)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            §§push(this.m_v2.y);
                                                         }
                                                      }
                                                      §§pop().Set(§§pop(),§§pop() + §§pop());
                                                      this.m_cornerDir1 = this.§_-u5§;
                                                      §§goto(addr322);
                                                   }
                                                }
                                                §§goto(addr293);
                                             }
                                             §§goto(addr301);
                                          }
                                       }
                                       §§goto(addr293);
                                       addr237:
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_ || this)
                                    {
                                       addr234:
                                       §§goto(addr237);
                                       §§push(this.m_v1.y);
                                    }
                                 }
                                 §§goto(addr238);
                              }
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr234);
                     }
                     §§goto(addr238);
                  }
               }
               §§goto(addr193);
            }
            addr322:
            §§push(this.m_cornerDir2);
            §§push(this.§_-u5§.x);
            if(_loc4_)
            {
               §§push(-§§pop());
            }
            §§push(this.§_-u5§.y);
            if(_loc4_ || _loc3_)
            {
               §§push(-§§pop());
            }
            §§pop().Set(§§pop(),§§pop());
            return;
         }
         §§goto(addr86);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc4_:b2Mat22 = null;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         §§push(param2.p2.x);
         if(!_loc19_)
         {
            §§push(§§pop() - param2.p1.x);
            if(!(_loc19_ && param3))
            {
               addr42:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.p2.y);
            if(!(_loc19_ && param2))
            {
               §§push(§§pop() - param2.p1.y);
               if(_loc18_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            _loc4_ = param3.R;
            §§push(param3.position.x);
            if(_loc18_ || this)
            {
               §§push(_loc4_.col1.x);
               if(!_loc19_)
               {
                  §§push(this.m_v1.x);
                  if(!_loc19_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc19_)
                     {
                        addr104:
                        §§push(_loc4_.col2.x);
                        if(!_loc19_)
                        {
                           addr99:
                           §§push(§§pop() * this.m_v1.y);
                        }
                        §§push(§§pop() + (§§pop() + §§pop()));
                        if(_loc18_ || this)
                        {
                           addr113:
                           var _loc7_:Number = §§pop();
                           §§push(param3.position.y);
                           if(_loc18_)
                           {
                              §§push(_loc4_.col1.y);
                              if(!_loc19_)
                              {
                                 §§push(this.m_v1.x);
                                 if(!(_loc19_ && param3))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc18_)
                                    {
                                       addr147:
                                       §§push(_loc4_.col2.y);
                                       if(!_loc19_)
                                       {
                                          addr142:
                                          §§push(§§pop() * this.m_v1.y);
                                       }
                                       §§push(§§pop() + (§§pop() + §§pop()));
                                       if(!(_loc19_ && param2))
                                       {
                                          addr155:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc8_:* = §§pop();
                                       §§push(param3.position.y);
                                       if(_loc18_ || param1)
                                       {
                                          §§push(_loc4_.col1.y);
                                          if(_loc18_ || param2)
                                          {
                                             §§push(this.m_v2.x);
                                             if(_loc18_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc19_)
                                                {
                                                   addr185:
                                                   §§push(_loc4_.col2.y);
                                                   if(_loc18_ || param3)
                                                   {
                                                      addr195:
                                                      §§push(§§pop() * this.m_v2.y);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc18_ || this)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         addr216:
                                                         §§push(§§pop() - _loc8_);
                                                         if(_loc18_)
                                                         {
                                                            addr219:
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc9_:* = §§pop();
                                                      §§push(param3.position.x);
                                                      if(!_loc19_)
                                                      {
                                                         §§push(_loc4_.col1.x);
                                                         if(!(_loc19_ && this))
                                                         {
                                                            §§push(this.m_v2.x);
                                                            if(!_loc19_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  addr249:
                                                                  §§push(_loc4_.col2.x);
                                                                  if(!(_loc19_ && param3))
                                                                  {
                                                                     addr259:
                                                                     §§push(§§pop() * this.m_v2.y);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc18_ || param2)
                                                                  {
                                                                     addr287:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(_loc7_);
                                                                     }
                                                                     var _loc10_:* = §§pop();
                                                                     §§push(100 * Number.MIN_VALUE);
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc11_:* = §§pop();
                                                                     §§push(_loc5_);
                                                                     if(!(_loc19_ && param2))
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc18_ || param2)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(§§pop() * _loc10_);
                                                                                 if(_loc18_ || param2)
                                                                                 {
                                                                                    addr334:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr337:
                                                                                       §§push(-§§pop());
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop());
                                                                                 }
                                                                              }
                                                                              var _loc12_:* = §§pop();
                                                                              if(§§pop() > _loc11_)
                                                                              {
                                                                                 if(_loc18_ || param3)
                                                                                 {
                                                                                    §§push(param2.p1);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       §§push(_loc7_);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          _loc13_ = §§pop() - §§pop();
                                                                                          if(!(_loc19_ && param2))
                                                                                          {
                                                                                             addr372:
                                                                                             §§push(param2.p1.y);
                                                                                             if(_loc18_ || param2)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc18_ || this)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         _loc14_ = §§pop();
                                                                                                         §§push(_loc13_);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc9_);
                                                                                                            §§push(_loc14_);
                                                                                                            §§push(_loc10_);
                                                                                                            if(!(_loc19_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc19_ && param1))
                                                                                                               {
                                                                                                                  addr418:
                                                                                                                  §§push(Number(§§pop() + §§pop()));
                                                                                                                  if(_loc18_ || param2)
                                                                                                                  {
                                                                                                                     _loc15_ = §§pop();
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        §§push(0 <= _loc15_);
                                                                                                                        §§push(0 <= _loc15_);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc18_ || param3)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 §§push(_loc15_);
                                                                                                                                 §§push(param2.§_-fa§);
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() <= §§pop() * §§pop());
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       addr454:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             addr457:
                                                                                                                                             §§push(-_loc5_);
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                addr518:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                §§push(_loc13_);
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr467:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc19_ && param3))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                   if(!(_loc19_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr534:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         if(!(_loc19_ && param2))
                                                                                                                                                         {
                                                                                                                                                            addr544:
                                                                                                                                                            §§push(Number(§§pop() / _loc12_));
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                               param1.fraction = _loc15_;
                                                                                                                                                               if(!(_loc19_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr569:
                                                                                                                                                                  _loc17_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
                                                                                                                                                                  if(!(_loc19_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.normal);
                                                                                                                                                                     if(_loc18_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                        if(_loc18_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 addr603:
                                                                                                                                                                                 §§push(param1.normal);
                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                 if(!(_loc19_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr618:
                                                                                                                                                                                    §§push(§§pop() / _loc17_);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr624:
                                                                                                                                                                                    return true;
                                                                                                                                                                                    addr623:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr626:
                                                                                                                                                                                    return false;
                                                                                                                                                                                    addr625:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr618);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr603);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr625);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr623);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr569);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr625);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr624);
                                                                                                                                                }
                                                                                                                                                §§goto(addr544);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   _loc16_ = §§pop();
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   if(!(_loc19_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr483:
                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         addr515:
                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            addr489:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr518);
                                                                                                                                                         §§push(1 + _loc11_);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr544);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() <= _loc16_);
                                                                                                                                                   if(_loc18_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr500:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               addr512:
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr515);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr544);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr624);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr534);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr624);
                                                                                                                                                }
                                                                                                                                                §§goto(addr483);
                                                                                                                                             }
                                                                                                                                             §§goto(addr544);
                                                                                                                                          }
                                                                                                                                          §§goto(addr624);
                                                                                                                                       }
                                                                                                                                       §§goto(addr625);
                                                                                                                                    }
                                                                                                                                    §§goto(addr626);
                                                                                                                                 }
                                                                                                                                 §§goto(addr467);
                                                                                                                              }
                                                                                                                              §§goto(addr626);
                                                                                                                           }
                                                                                                                           §§goto(addr454);
                                                                                                                        }
                                                                                                                        §§goto(addr500);
                                                                                                                     }
                                                                                                                     §§goto(addr457);
                                                                                                                  }
                                                                                                                  §§goto(addr569);
                                                                                                               }
                                                                                                               §§goto(addr544);
                                                                                                            }
                                                                                                            §§goto(addr518);
                                                                                                         }
                                                                                                         §§goto(addr418);
                                                                                                      }
                                                                                                      §§goto(addr512);
                                                                                                   }
                                                                                                   §§goto(addr544);
                                                                                                }
                                                                                                §§goto(addr515);
                                                                                             }
                                                                                             §§goto(addr544);
                                                                                          }
                                                                                          §§goto(addr569);
                                                                                       }
                                                                                       §§goto(addr489);
                                                                                    }
                                                                                    §§goto(addr372);
                                                                                 }
                                                                                 §§goto(addr457);
                                                                              }
                                                                              §§goto(addr626);
                                                                           }
                                                                           §§goto(addr337);
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                     §§goto(addr337);
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(-§§pop());
                                                                     if(_loc19_ && this)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr287);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr287);
                                                            }
                                                            §§goto(addr259);
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                }
                                                §§goto(addr216);
                                             }
                                             §§goto(addr195);
                                          }
                                          §§goto(addr185);
                                       }
                                       §§goto(addr219);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr99);
               }
               §§goto(addr104);
            }
            §§goto(addr113);
         }
         §§goto(addr42);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position);
         if(!_loc9_)
         {
            §§push(§§pop().x);
            if(_loc8_ || _loc3_)
            {
               §§push(_loc3_.col1);
               if(_loc8_ || param2)
               {
                  §§push(§§pop().x);
                  §§push(this.m_v1);
                  if(_loc8_)
                  {
                     §§push(§§pop() * §§pop().x);
                     §§push(_loc3_.col2);
                     if(_loc8_)
                     {
                        §§push(§§pop().x);
                        §§push(this.m_v1);
                        if(_loc8_)
                        {
                           §§push(§§pop().y);
                           if(_loc8_ || param2)
                           {
                              §§push(§§pop() + (§§pop() + §§pop() * §§pop()));
                              if(!_loc9_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc8_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc9_ && param2))
                                    {
                                       §§push(param2.position);
                                       if(!(_loc9_ && param1))
                                       {
                                          addr95:
                                          §§push(§§pop().y);
                                          §§push(_loc3_.col1);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop().y);
                                             if(_loc8_)
                                             {
                                                addr105:
                                                §§push(§§pop() * this.m_v1.x);
                                                §§push(_loc3_.col2);
                                                if(_loc8_ || param1)
                                                {
                                                   §§push(§§pop().y);
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      addr126:
                                                      §§push(this.m_v1.y);
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         addr134:
                                                         §§push(§§pop() + §§pop() * §§pop());
                                                         if(!(_loc9_ && param2))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc9_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               §§push(param2.position);
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  §§push(§§pop().x);
                                                                  §§push(_loc3_.col1);
                                                                  if(!(_loc9_ && param2))
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     §§push(this.m_v2);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(§§pop() * §§pop().x);
                                                                        §§push(_loc3_.col2);
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           addr183:
                                                                           §§push(§§pop().x);
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(this.m_v2);
                                                                              if(!(_loc9_ && param2))
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop() * §§pop());
                                                                                    if(!(_loc9_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          addr223:
                                                                                          _loc6_ = §§pop();
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             addr231:
                                                                                             §§push(param2.position.y);
                                                                                             §§push(_loc3_.col1.y);
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                addr236:
                                                                                                §§push(this.m_v2.x);
                                                                                                if(_loc8_ || param1)
                                                                                                {
                                                                                                   addr251:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   §§push(_loc3_.col2.y * this.m_v2.y);
                                                                                                }
                                                                                                §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   addr256:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      addr259:
                                                                                                      _loc7_ = §§pop();
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         addr263:
                                                                                                         if(_loc4_ < _loc6_)
                                                                                                         {
                                                                                                            addr265:
                                                                                                            §§push(param1.§_-N-§);
                                                                                                            if(_loc8_ || this)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  §§push(param1.§_-TE§);
                                                                                                                  if(_loc8_ || param1)
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        if(_loc8_ || param1)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr330:
                                                                                                                        if(_loc5_ < _loc7_)
                                                                                                                        {
                                                                                                                           if(_loc8_ || this)
                                                                                                                           {
                                                                                                                              addr340:
                                                                                                                              §§push(param1.§_-N-§);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    addr348:
                                                                                                                                    §§push(param1.§_-TE§);
                                                                                                                                    if(!(_loc9_ && param2))
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       if(!(_loc9_ && param2))
                                                                                                                                       {
                                                                                                                                          addr365:
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                       }
                                                                                                                                       §§goto(addr389);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr387:
                                                                                                                                       §§push(_loc5_);
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr370:
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    if(_loc8_ || param2)
                                                                                                                                    {
                                                                                                                                       §§goto(addr387);
                                                                                                                                       §§push(param1.§_-TE§);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr389:
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              addr369:
                                                                                                                              §§push(_loc7_);
                                                                                                                              §§goto(addr370);
                                                                                                                           }
                                                                                                                           §§goto(addr348);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr369);
                                                                                                                           §§push(param1.§_-N-§);
                                                                                                                        }
                                                                                                                        §§goto(addr369);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr321:
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        §§goto(addr330);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr365);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr311:
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  §§push(param1.§_-TE§);
                                                                                                                  if(!(_loc9_ && param2))
                                                                                                                  {
                                                                                                                     §§goto(addr321);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr387);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(param1.§_-N-§);
                                                                                                            if(!(_loc9_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§goto(addr311);
                                                                                                               }
                                                                                                               §§goto(addr370);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr369);
                                                                                                      }
                                                                                                      §§goto(addr265);
                                                                                                   }
                                                                                                   §§goto(addr330);
                                                                                                }
                                                                                                §§goto(addr263);
                                                                                             }
                                                                                             §§goto(addr330);
                                                                                          }
                                                                                          §§goto(addr340);
                                                                                       }
                                                                                       §§goto(addr256);
                                                                                    }
                                                                                    §§goto(addr263);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr251);
                                                                     }
                                                                     §§goto(addr236);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr231);
                                                         }
                                                         §§goto(addr236);
                                                      }
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr183);
                                             }
                                             §§goto(addr263);
                                          }
                                       }
                                       §§goto(addr231);
                                    }
                                    §§goto(addr348);
                                 }
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr105);
               }
               §§goto(addr231);
            }
            §§goto(addr259);
         }
         §§goto(addr95);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            param1.§_-zT§ = 0;
            if(_loc3_)
            {
               param1.center.SetV(this.m_v1);
               §§goto(addr32);
            }
            §§goto(addr46);
         }
         addr32:
         if(_loc3_)
         {
            addr46:
            param1.§_-Lx§ = 0;
         }
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc11_ && param1))
         {
            §§push(param2);
            if(_loc10_)
            {
               addr27:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(!_loc11_)
               {
                  §§push(§§pop() * param2);
               }
            }
            var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
            var _loc6_:b2Vec2 = b2Math.§_-Y9§(param3,this.m_v1);
            var _loc7_:b2Vec2 = b2Math.§_-Y9§(param3,this.m_v2);
            §§push(b2Math.§_-Ly§(param1,_loc6_));
            if(!_loc11_)
            {
               §§push(§§pop() - param2);
               if(_loc10_ || param2)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            §§push(b2Math.§_-Ly§(param1,_loc7_));
            if(_loc10_)
            {
               §§push(§§pop() - param2);
               if(_loc10_)
               {
                  addr77:
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               §§push(_loc8_);
               if(_loc10_)
               {
                  §§push(0);
                  if(!_loc11_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!_loc11_)
                        {
                           §§push(_loc9_);
                           if(!_loc11_)
                           {
                              §§push(0);
                              if(_loc10_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    return 0;
                                 }
                                 addr97:
                                 §§push(_loc6_);
                                 §§push(_loc9_);
                                 if(_loc10_)
                                 {
                                    §§push(-§§pop());
                                    if(_loc10_)
                                    {
                                       §§push(_loc8_);
                                       if(_loc10_)
                                       {
                                          §§push(_loc9_);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(!(_loc11_ && this))
                                                {
                                                   addr121:
                                                   §§push(_loc6_.x);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc10_)
                                                      {
                                                         addr128:
                                                         §§push(_loc8_);
                                                         if(!(_loc11_ && this))
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc10_)
                                                            {
                                                               §§push(§§pop() - _loc9_);
                                                               if(!_loc10_)
                                                               {
                                                               }
                                                               addr150:
                                                               §§pop().x = §§pop() + §§pop() * §§pop();
                                                               addr148:
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(_loc6_);
                                                                  §§push(_loc9_);
                                                                  if(!(_loc11_ && this))
                                                                  {
                                                                     §§push(-§§pop());
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(_loc10_ || param2)
                                                                        {
                                                                           §§push(_loc9_);
                                                                           if(!(_loc11_ && param3))
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc10_ || param2)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr192:
                                                                                    §§push(_loc6_.y);
                                                                                    if(!(_loc11_ && this))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(_loc10_ || param2)
                                                                                          {
                                                                                             addr212:
                                                                                             §§push(_loc8_);
                                                                                             if(_loc10_ || param3)
                                                                                             {
                                                                                                §§push(§§pop() - _loc9_);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   addr231:
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      addr229:
                                                                                                      §§push(§§pop() * _loc7_.y);
                                                                                                   }
                                                                                                   §§pop().y = §§pop() + §§pop();
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      addr412:
                                                                                                      §§push(param4);
                                                                                                      §§push(_loc5_.x);
                                                                                                      if(_loc10_ || this)
                                                                                                      {
                                                                                                         §§push(_loc6_.x);
                                                                                                         if(_loc10_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc11_ && param1))
                                                                                                            {
                                                                                                               addr441:
                                                                                                               §§push(§§pop() + _loc7_.x);
                                                                                                               if(!(_loc11_ && this))
                                                                                                               {
                                                                                                                  §§push(§§pop() / 3);
                                                                                                               }
                                                                                                            }
                                                                                                            §§pop().x = §§pop();
                                                                                                            §§push(param4);
                                                                                                            §§push(_loc5_.y);
                                                                                                            if(!(_loc11_ && param3))
                                                                                                            {
                                                                                                               §§push(_loc6_.y);
                                                                                                               if(!(_loc11_ && this))
                                                                                                               {
                                                                                                                  addr489:
                                                                                                                  addr491:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc11_ && this))
                                                                                                                  {
                                                                                                                     §§push(_loc7_.y);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop() / 3;
                                                                                                                  §§push(0.5);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.x);
                                                                                                                     if(_loc10_ || param2)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.x);
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(_loc10_ || param2)
                                                                                                                           {
                                                                                                                              §§push(_loc7_.y);
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 addr520:
                                                                                                                                 §§push(_loc5_.y);
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc10_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             addr539:
                                                                                                                                             §§push(_loc5_.y);
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(!(_loc11_ && this))
                                                                                                                                                {
                                                                                                                                                   addr551:
                                                                                                                                                   §§push(_loc7_.x);
                                                                                                                                                   if(_loc10_ || param3)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   return §§pop() * (§§pop() - §§pop() * §§pop());
                                                                                                                                                   addr571:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr571);
                                                                                                                                             §§push(§§pop() - _loc5_.x);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr551);
                                                                                                                                    }
                                                                                                                                    §§goto(addr539);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr551);
                                                                                                                        }
                                                                                                                        §§goto(addr520);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr551);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc10_ || param3)
                                                                                                               {
                                                                                                                  §§goto(addr489);
                                                                                                               }
                                                                                                               §§goto(addr491);
                                                                                                            }
                                                                                                            §§goto(addr489);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr441);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr328:
                                                                                                      §§push(_loc7_);
                                                                                                      §§push(_loc9_);
                                                                                                      if(_loc10_ || param3)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                         if(_loc10_ || param2)
                                                                                                         {
                                                                                                            addr345:
                                                                                                            §§push(_loc8_);
                                                                                                            if(!(_loc11_ && param2))
                                                                                                            {
                                                                                                               §§push(_loc9_);
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!(_loc11_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     if(!(_loc11_ && param2))
                                                                                                                     {
                                                                                                                        addr372:
                                                                                                                        §§push(_loc6_.y);
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           addr376:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc11_ && param2))
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(!(_loc11_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(_loc10_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - _loc9_);
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       addr410:
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          addr407:
                                                                                                                                          §§push(_loc7_.y);
                                                                                                                                       }
                                                                                                                                       §§pop().y = §§pop() + §§pop();
                                                                                                                                       §§goto(addr412);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr410);
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr410);
                                                                                                                        }
                                                                                                                        §§goto(addr407);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr410);
                                                                                                            }
                                                                                                            §§goto(addr376);
                                                                                                         }
                                                                                                         §§goto(addr372);
                                                                                                      }
                                                                                                      §§goto(addr345);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr229);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr231);
                                                                                    }
                                                                                    §§goto(addr229);
                                                                                 }
                                                                                 §§goto(addr231);
                                                                              }
                                                                              §§goto(addr212);
                                                                           }
                                                                           §§goto(addr231);
                                                                        }
                                                                        §§goto(addr212);
                                                                     }
                                                                     §§goto(addr192);
                                                                  }
                                                                  §§goto(addr231);
                                                               }
                                                               §§goto(addr412);
                                                            }
                                                            §§push(§§pop() / §§pop());
                                                            if(_loc10_)
                                                            {
                                                               addr146:
                                                               §§goto(addr148);
                                                               §§push(_loc7_.x);
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                         §§goto(addr146);
                                                      }
                                                      §§goto(addr150);
                                                   }
                                                   §§goto(addr146);
                                                }
                                                §§goto(addr128);
                                             }
                                          }
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr121);
                                 }
                                 §§goto(addr128);
                              }
                              else
                              {
                                 addr239:
                                 if(§§pop() > §§pop())
                                 {
                                    §§push(_loc7_);
                                    §§push(_loc9_);
                                    if(_loc10_ || param3)
                                    {
                                       §§push(-§§pop());
                                       if(!(_loc11_ && param1))
                                       {
                                          §§push(_loc8_);
                                          if(_loc10_ || param1)
                                          {
                                             §§push(_loc9_);
                                             if(!(_loc11_ && param3))
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(!(_loc11_ && param3))
                                                   {
                                                      §§push(_loc6_.x);
                                                      if(_loc10_ || param1)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc11_)
                                                         {
                                                            addr303:
                                                            §§push(_loc8_);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(_loc8_);
                                                               if(_loc10_)
                                                               {
                                                                  §§push(§§pop() - _loc9_);
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr319:
                                                                     §§push(§§pop() / §§pop());
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr316:
                                                                        §§push(_loc7_.x);
                                                                     }
                                                                     §§pop().x = §§pop() + §§pop();
                                                                     if(!(_loc11_ && this))
                                                                     {
                                                                        §§goto(addr328);
                                                                     }
                                                                     §§goto(addr489);
                                                                  }
                                                               }
                                                               §§goto(addr319);
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                         }
                                                         §§goto(addr319);
                                                      }
                                                   }
                                                   §§goto(addr303);
                                                }
                                                §§goto(addr316);
                                             }
                                          }
                                          §§goto(addr319);
                                       }
                                    }
                                    §§goto(addr303);
                                 }
                              }
                              §§goto(addr412);
                           }
                           §§goto(addr551);
                        }
                        §§goto(addr97);
                     }
                     else
                     {
                        §§push(_loc9_);
                        if(!_loc11_)
                        {
                           addr238:
                           §§goto(addr239);
                           §§push(0);
                        }
                     }
                     §§goto(addr551);
                  }
                  §§goto(addr239);
               }
               §§goto(addr238);
            }
            §§goto(addr77);
         }
         §§goto(addr27);
      }
      
      public function §_-jD§() : Number
      {
         return this.§_-GG§;
      }
      
      public function GetVertex1() : b2Vec2
      {
         return this.m_v1;
      }
      
      public function GetVertex2() : b2Vec2
      {
         return this.m_v2;
      }
      
      public function GetCoreVertex1() : b2Vec2
      {
         return this.m_coreV1;
      }
      
      public function GetCoreVertex2() : b2Vec2
      {
         return this.m_coreV2;
      }
      
      public function §_-w§() : b2Vec2
      {
         return this.§_-u5§;
      }
      
      public function §_-SH§() : b2Vec2
      {
         return this.§_-3t§;
      }
      
      public function GetCorner1Vector() : b2Vec2
      {
         return this.m_cornerDir1;
      }
      
      public function GetCorner2Vector() : b2Vec2
      {
         return this.m_cornerDir2;
      }
      
      public function Corner1IsConvex() : Boolean
      {
         return this.m_cornerConvex1;
      }
      
      public function Corner2IsConvex() : Boolean
      {
         return this.m_cornerConvex2;
      }
      
      public function §_-F2§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(_loc4_ || param1)
         {
            §§push(_loc2_.col1.x);
            if(!_loc3_)
            {
               §§push(this.m_coreV1.x);
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc4_)
                     {
                        §§push(this.m_coreV1);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop().y);
                           if(_loc4_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                    addr78:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(_loc4_)
                                    {
                                       addr83:
                                       §§push(_loc2_.col1.y);
                                       if(_loc4_ || _loc2_)
                                       {
                                          addr95:
                                          addr93:
                                          §§push(this.m_coreV1.x);
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§goto(addr128);
                                          }
                                          addr128:
                                          §§push(§§pop() * §§pop());
                                          if(!_loc3_)
                                          {
                                             addr106:
                                             §§push(_loc2_.col2.y);
                                             if(_loc4_ || this)
                                             {
                                                §§push(§§pop() * this.m_coreV1.y);
                                             }
                                          }
                                          return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr106);
                                    }
                                 }
                              }
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr128);
               }
               §§goto(addr95);
            }
            §§goto(addr83);
         }
         §§goto(addr78);
      }
      
      public function §_-0D§() : b2EdgeShape
      {
         return this.§_-6-§;
      }
      
      public function §_-fG§() : b2EdgeShape
      {
         return this.§_-9a§;
      }
      
      public function §_-qk§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!(_loc10_ && param1))
         {
            §§push(_loc4_.col1.x);
            if(!_loc10_)
            {
               §§push(this.m_coreV1.x);
               if(_loc9_ || this)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc10_ && param3))
                  {
                     addr60:
                     §§push(_loc4_.col2.x);
                     if(_loc9_)
                     {
                        addr55:
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!_loc10_)
                     {
                        addr64:
                        var _loc5_:Number = §§pop();
                        §§push(param1.position.y);
                        if(!_loc10_)
                        {
                           §§push(_loc4_.col1.y);
                           if(_loc9_ || this)
                           {
                              §§push(this.m_coreV1.x);
                              if(!_loc10_)
                              {
                                 addr108:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc10_ && param1))
                                 {
                                    §§push(_loc4_.col2.y);
                                    if(_loc9_ || param2)
                                    {
                                       §§push(§§pop() * this.m_coreV1.y);
                                    }
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc9_ || param2)
                                 {
                                    addr116:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 §§push(param1.position.x);
                                 if(!(_loc10_ && param2))
                                 {
                                    §§push(_loc4_.col1.x);
                                    if(_loc9_ || param1)
                                    {
                                       §§push(this.m_coreV2.x);
                                       if(!(_loc10_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc10_ && param1))
                                          {
                                             addr166:
                                             §§push(_loc4_.col2.x);
                                             if(_loc9_)
                                             {
                                                addr161:
                                                §§push(§§pop() * this.m_coreV2.y);
                                             }
                                             §§push(§§pop() + (§§pop() + §§pop()));
                                             if(!_loc10_)
                                             {
                                                addr169:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc7_:* = §§pop();
                                             §§push(param1.position.y);
                                             if(!(_loc10_ && param1))
                                             {
                                                §§push(_loc4_.col1.y);
                                                if(!(_loc10_ && param3))
                                                {
                                                   §§push(this.m_coreV2.x);
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc10_)
                                                      {
                                                         addr206:
                                                         §§push(_loc4_.col2.y);
                                                         if(!(_loc10_ && param3))
                                                         {
                                                            addr220:
                                                            §§push(§§pop() + §§pop() * this.m_coreV2.y);
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc9_)
                                                      {
                                                         addr225:
                                                         var _loc8_:Number = §§pop();
                                                         if(!_loc10_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc9_)
                                                            {
                                                               §§push(param2);
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr242:
                                                                     §§push(_loc6_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr245:
                                                                        §§push(param3);
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              addr262:
                                                                              §§push(§§pop() + §§pop());
                                                                              §§push(_loc7_);
                                                                              if(_loc9_ || param3)
                                                                              {
                                                                                 addr270:
                                                                                 §§push(param2);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§goto(addr292);
                                                                                 }
                                                                                 addr292:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    addr281:
                                                                                    §§push(_loc8_);
                                                                                    if(_loc9_ || param3)
                                                                                    {
                                                                                       §§push(§§pop() * param3);
                                                                                    }
                                                                                 }
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       addr295:
                                                                                       §§push(this.§_-dh§);
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(_loc9_ || param2)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                §§push(this.§_-dh§);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   §§push(_loc6_);
                                                                                                   if(!(_loc10_ && param2))
                                                                                                   {
                                                                                                      §§pop().y = §§pop();
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr335:
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr368:
                                                                                                      §§pop().y = §§pop();
                                                                                                   }
                                                                                                   §§goto(addr371);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr340:
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      if(!(_loc10_ && param2))
                                                                                                      {
                                                                                                         §§push(this.§_-dh§);
                                                                                                         if(!(_loc10_ && param2))
                                                                                                         {
                                                                                                            §§goto(addr368);
                                                                                                            §§push(_loc8_);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr371);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr335);
                                                                                          }
                                                                                          §§goto(addr368);
                                                                                       }
                                                                                       §§goto(addr371);
                                                                                    }
                                                                                    §§goto(addr335);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this.§_-dh§);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                 }
                                                                                 addr371:
                                                                                 return this.§_-dh§;
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§goto(addr281);
                                                                           }
                                                                        }
                                                                        §§goto(addr292);
                                                                     }
                                                                     §§goto(addr270);
                                                                  }
                                                                  §§goto(addr262);
                                                               }
                                                               §§goto(addr245);
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         §§goto(addr295);
                                                      }
                                                      §§goto(addr225);
                                                   }
                                                   §§goto(addr220);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr169);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr60);
               }
               §§goto(addr55);
            }
            §§goto(addr60);
         }
         §§goto(addr64);
      }
      
      b2internal function §_-8z§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§_-9a§ = param1;
            if(_loc5_ || this)
            {
               this.m_coreV1 = param2;
               if(!_loc5_)
               {
               }
               §§goto(addr52);
            }
            this.m_cornerDir1 = param3;
            if(!_loc6_)
            {
               this.m_cornerConvex1 = param4;
            }
         }
         addr52:
      }
      
      b2internal function §_-1b§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.§_-6-§ = param1;
            if(!_loc5_)
            {
               this.m_coreV2 = param2;
               if(!_loc5_)
               {
                  this.m_cornerDir2 = param3;
                  if(_loc6_ || param2)
                  {
                     this.m_cornerConvex2 = param4;
                  }
               }
            }
         }
      }
   }
}
