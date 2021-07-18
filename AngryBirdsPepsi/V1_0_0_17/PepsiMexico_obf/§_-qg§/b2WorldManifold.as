package §_-qg§
{
   import §_-Ja§.*;
   import §_-lh§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §_-u5§:b2Vec2;
      
      public var §_-hn§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-u5§ = new b2Vec2();
            if(!(_loc3_ && _loc1_))
            {
               super();
               if(_loc2_ || _loc1_)
               {
               }
               §§goto(addr50);
            }
            this.§_-hn§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
         }
         addr50:
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-hn§[_loc1_] = new b2Vec2();
            if(_loc2_ || this)
            {
               _loc1_++;
               if(_loc3_ && this)
               {
                  break;
               }
            }
         }
      }
      
      public function §_-lc§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:Number = NaN;
         if(_loc28_ || this)
         {
            if(param1.§_-Tu§ == 0)
            {
               if(!_loc29_)
               {
                  return;
               }
            }
         }
         §§push(param1.§_-Sj§);
         if(!_loc29_)
         {
            var _loc27_:* = §§pop();
            if(!(_loc29_ && this))
            {
               §§push(b2Manifold.§_-1§);
               if(_loc28_ || param1)
               {
                  §§push(_loc27_);
                  if(!(_loc29_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc29_)
                        {
                           §§push(0);
                        }
                        else
                        {
                           addr1461:
                           §§push(2);
                           if(_loc28_)
                           {
                              addr1471:
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Manifold.§_-zO§);
                        if(!(_loc29_ && param3))
                        {
                           §§push(_loc27_);
                           if(_loc28_)
                           {
                              addr1450:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc28_)
                                 {
                                    addr1453:
                                    §§push(1);
                                    if(_loc28_)
                                    {
                                       addr1476:
                                       loop4:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc8_ = param2.R;
                                             _loc7_ = param1.m_localPoint;
                                             if(!(_loc29_ && param1))
                                             {
                                                §§push(param2.position);
                                                if(!(_loc29_ && param2))
                                                {
                                                   §§push(§§pop().x);
                                                   if(!_loc29_)
                                                   {
                                                      §§push(_loc8_.col1);
                                                      if(_loc28_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc29_)
                                                         {
                                                            §§push(_loc7_.x);
                                                            if(_loc28_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc29_ && this))
                                                               {
                                                                  addr119:
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(_loc8_.col2);
                                                                  if(!_loc29_)
                                                                  {
                                                                     addr125:
                                                                     §§push(§§pop().x);
                                                                     §§push(_loc7_.y);
                                                                     if(_loc28_ || this)
                                                                     {
                                                                        addr134:
                                                                        §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                        if(_loc28_)
                                                                        {
                                                                           _loc15_ = §§pop();
                                                                           if(!(_loc29_ && param1))
                                                                           {
                                                                              addr152:
                                                                              §§push(param2.position.y);
                                                                              §§push(_loc8_.col1.y);
                                                                              §§push(_loc7_.x);
                                                                              if(_loc28_)
                                                                              {
                                                                                 addr157:
                                                                                 addr161:
                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                 §§push(_loc8_.col2.y);
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                    addr166:
                                                                                    §§push(§§pop() * _loc7_.y);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    addr170:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 _loc16_ = §§pop();
                                                                                 addr172:
                                                                                 _loc8_ = param4.R;
                                                                                 _loc7_ = param1.§_-hn§[0].m_localPoint;
                                                                                 if(_loc28_ || this)
                                                                                 {
                                                                                    §§push(param4.position);
                                                                                    if(_loc28_ || param3)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!(_loc29_ && param2))
                                                                                       {
                                                                                          §§push(_loc8_.col1);
                                                                                          if(_loc28_ || param3)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop().x * _loc7_.x);
                                                                                             §§push(_loc8_.col2);
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                §§push(§§pop().x * _loc7_.y);
                                                                                                if(!(_loc29_ && param3))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc28_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         _loc17_ = §§pop();
                                                                                                         if(!(_loc29_ && param1))
                                                                                                         {
                                                                                                            addr252:
                                                                                                            §§push(param4.position.y);
                                                                                                            if(_loc28_ || param3)
                                                                                                            {
                                                                                                               addr262:
                                                                                                               §§push(_loc8_.col1.y);
                                                                                                               §§push(_loc7_.x);
                                                                                                               if(!(_loc29_ && param3))
                                                                                                               {
                                                                                                                  addr276:
                                                                                                                  §§push(§§pop() + §§pop() * §§pop());
                                                                                                                  §§push(_loc8_.col2.y);
                                                                                                                  §§push(_loc7_.y);
                                                                                                                  if(!(_loc29_ && param1))
                                                                                                                  {
                                                                                                                     _loc18_ = §§pop() + §§pop() * §§pop();
                                                                                                                     §§push(_loc17_);
                                                                                                                     if(!_loc29_)
                                                                                                                     {
                                                                                                                        §§push(_loc15_);
                                                                                                                        if(!(_loc29_ && param1))
                                                                                                                        {
                                                                                                                           _loc19_ = §§pop() - §§pop();
                                                                                                                           if(!(_loc29_ && param1))
                                                                                                                           {
                                                                                                                              addr312:
                                                                                                                              _loc20_ = _loc18_ - _loc16_;
                                                                                                                              if(!_loc29_)
                                                                                                                              {
                                                                                                                                 §§push(_loc19_);
                                                                                                                                 if(!_loc29_)
                                                                                                                                 {
                                                                                                                                    addr322:
                                                                                                                                    §§push(§§pop() * _loc19_);
                                                                                                                                    §§push(_loc20_);
                                                                                                                                    if(_loc28_ || this)
                                                                                                                                    {
                                                                                                                                       addr332:
                                                                                                                                       §§push(§§pop() * _loc20_);
                                                                                                                                       if(_loc28_)
                                                                                                                                       {
                                                                                                                                          addr335:
                                                                                                                                          §§push(Number(§§pop() + §§pop()));
                                                                                                                                          §§push(Number(§§pop() + §§pop()));
                                                                                                                                          if(!_loc29_)
                                                                                                                                          {
                                                                                                                                             _loc21_ = §§pop();
                                                                                                                                             if(!_loc29_)
                                                                                                                                             {
                                                                                                                                                §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                                if(!_loc29_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!_loc29_)
                                                                                                                                                      {
                                                                                                                                                         _loc26_ = Math.sqrt(_loc21_);
                                                                                                                                                         if(_loc28_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-u5§);
                                                                                                                                                            if(!(_loc29_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               if(!_loc29_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc26_);
                                                                                                                                                                  if(_loc28_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           addr391:
                                                                                                                                                                           §§push(this.§_-u5§);
                                                                                                                                                                           if(_loc28_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc20_);
                                                                                                                                                                              if(!_loc29_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr403:
                                                                                                                                                                                 §§push(§§pop() / _loc26_);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                              addr424:
                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                              §§push(param3);
                                                                                                                                                                              §§push(this.§_-u5§);
                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr431:
                                                                                                                                                                                 §§push(§§pop() + §§pop() * §§pop().x);
                                                                                                                                                                                 if(!(_loc29_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr440:
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    if(!_loc29_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc22_ = §§pop();
                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                       if(_loc28_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(param3);
                                                                                                                                                                                          if(!(_loc29_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr460:
                                                                                                                                                                                             §§push(this.§_-u5§);
                                                                                                                                                                                             if(!_loc29_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr468:
                                                                                                                                                                                                _loc23_ = §§pop() + §§pop() * §§pop().y;
                                                                                                                                                                                                addr464:
                                                                                                                                                                                                if(_loc28_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr477:
                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                   §§push(param5);
                                                                                                                                                                                                   §§push(this.§_-u5§);
                                                                                                                                                                                                   if(_loc28_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr487:
                                                                                                                                                                                                      §§push(Number(§§pop() - §§pop() * §§pop().x));
                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc24_ = §§pop();
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr496:
                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                            §§push(param5);
                                                                                                                                                                                                            if(!_loc29_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr504:
                                                                                                                                                                                                               addr502:
                                                                                                                                                                                                               addr500:
                                                                                                                                                                                                               §§push(§§pop() - §§pop() * this.§_-u5§.y);
                                                                                                                                                                                                               if(_loc28_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr512:
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               _loc25_ = §§pop();
                                                                                                                                                                                                               if(_loc28_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr533:
                                                                                                                                                                                                               this.§_-hn§[0].y = 0.5 * (_loc23_ + _loc25_);
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr504);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         this.§_-hn§[0].x = 0.5 * (_loc22_ + _loc24_);
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr533);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr504);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr512);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr502);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr504);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr487);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr500);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr487);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr512);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr477);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr464);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr411:
                                                                                                                                                                              §§push(1);
                                                                                                                                                                              if(!(_loc29_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 addr422:
                                                                                                                                                                                 §§push(this.§_-u5§);
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                              §§goto(addr424);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr496);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr403);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr411);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr477);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr496);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§_-u5§);
                                                                                                                                                      if(_loc28_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr411);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr422);
                                                                                                                                                }
                                                                                                                                                §§goto(addr487);
                                                                                                                                             }
                                                                                                                                             §§goto(addr440);
                                                                                                                                          }
                                                                                                                                          §§goto(addr504);
                                                                                                                                       }
                                                                                                                                       §§goto(addr460);
                                                                                                                                    }
                                                                                                                                    §§goto(addr335);
                                                                                                                                 }
                                                                                                                                 §§goto(addr496);
                                                                                                                              }
                                                                                                                              §§goto(addr391);
                                                                                                                           }
                                                                                                                           §§goto(addr422);
                                                                                                                        }
                                                                                                                        §§goto(addr464);
                                                                                                                     }
                                                                                                                     §§goto(addr312);
                                                                                                                  }
                                                                                                                  §§goto(addr332);
                                                                                                               }
                                                                                                               §§goto(addr431);
                                                                                                            }
                                                                                                            §§goto(addr512);
                                                                                                         }
                                                                                                         §§goto(addr422);
                                                                                                      }
                                                                                                      §§goto(addr335);
                                                                                                   }
                                                                                                   §§goto(addr468);
                                                                                                }
                                                                                                §§goto(addr322);
                                                                                             }
                                                                                             §§goto(addr276);
                                                                                          }
                                                                                          §§goto(addr262);
                                                                                       }
                                                                                       §§goto(addr512);
                                                                                    }
                                                                                    §§goto(addr252);
                                                                                 }
                                                                                 §§goto(addr424);
                                                                              }
                                                                              §§goto(addr166);
                                                                           }
                                                                           §§goto(addr172);
                                                                        }
                                                                        §§goto(addr170);
                                                                     }
                                                                     §§goto(addr157);
                                                                  }
                                                                  §§goto(addr161);
                                                               }
                                                               §§goto(addr125);
                                                            }
                                                            §§goto(addr134);
                                                         }
                                                         §§goto(addr119);
                                                      }
                                                   }
                                                }
                                                §§goto(addr152);
                                             }
                                             §§goto(addr157);
                                          case 1:
                                             _loc8_ = param2.R;
                                             _loc7_ = param1.§_-Pv§;
                                             if(_loc28_)
                                             {
                                                §§push(_loc8_.col1);
                                                if(!_loc29_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc28_ || this)
                                                   {
                                                      §§push(_loc7_.x);
                                                      if(!(_loc29_ && this))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         §§push(_loc8_.col2);
                                                         if(_loc28_ || param3)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!(_loc29_ && this))
                                                            {
                                                               §§push(_loc7_.y);
                                                               if(!(_loc29_ && this))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc28_)
                                                                  {
                                                                     addr606:
                                                                     _loc9_ = §§pop() + §§pop();
                                                                     if(_loc28_)
                                                                     {
                                                                        addr613:
                                                                        §§push(_loc8_.col1.y);
                                                                        §§push(_loc7_.x);
                                                                        if(!_loc29_)
                                                                        {
                                                                           addr618:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc29_ && param3))
                                                                           {
                                                                              addr628:
                                                                              §§push(_loc8_.col2.y);
                                                                              if(!_loc29_)
                                                                              {
                                                                                 addr634:
                                                                                 §§push(Number(§§pop() + §§pop() * _loc7_.y));
                                                                              }
                                                                              §§goto(addr634);
                                                                           }
                                                                           _loc10_ = §§pop();
                                                                           addr637:
                                                                           _loc8_ = param2.R;
                                                                           _loc7_ = param1.m_localPoint;
                                                                           if(_loc28_ || param1)
                                                                           {
                                                                              §§push(param2.position);
                                                                              if(_loc28_ || this)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 §§push(_loc8_.col1);
                                                                                 if(!(_loc29_ && param1))
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    §§push(_loc7_.x);
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop() * §§pop());
                                                                                       if(!(_loc29_ && param1))
                                                                                       {
                                                                                          §§push(_loc8_.col2);
                                                                                          if(!(_loc29_ && param2))
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             §§push(_loc7_.y);
                                                                                             if(!(_loc29_ && this))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop() * §§pop());
                                                                                                if(_loc28_ || param2)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      _loc11_ = §§pop();
                                                                                                      addr719:
                                                                                                      §§push(param2.position.y);
                                                                                                      if(_loc28_ || param3)
                                                                                                      {
                                                                                                      }
                                                                                                      addr767:
                                                                                                      _loc12_ = §§pop();
                                                                                                      §§push(this.§_-u5§);
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         §§push(_loc9_);
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            addr778:
                                                                                                            §§push(this.§_-u5§);
                                                                                                            §§push(_loc10_);
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                         §§push(0);
                                                                                                         if(!_loc29_)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               addr786:
                                                                                                               loop3:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  addr978:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop() < param1.§_-Tu§)
                                                                                                                     {
                                                                                                                        §§push(param4.R);
                                                                                                                        if(_loc28_ || param2)
                                                                                                                        {
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           _loc7_ = param1.§_-hn§[_loc6_].m_localPoint;
                                                                                                                           if(_loc28_ || param1)
                                                                                                                           {
                                                                                                                              §§push(param4.position);
                                                                                                                              if(!_loc29_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_.col1);
                                                                                                                                    if(_loc28_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       §§push(_loc7_.x);
                                                                                                                                       if(!(_loc29_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                          §§push(_loc8_.col2);
                                                                                                                                          if(!(_loc29_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             §§push(_loc7_.y);
                                                                                                                                             if(_loc28_ || param2)
                                                                                                                                             {
                                                                                                                                                addr860:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc29_ && param2))
                                                                                                                                                {
                                                                                                                                                   addr869:
                                                                                                                                                   _loc13_ = Number(§§pop() + §§pop());
                                                                                                                                                   if(!_loc28_)
                                                                                                                                                   {
                                                                                                                                                      continue loop3;
                                                                                                                                                   }
                                                                                                                                                   addr875:
                                                                                                                                                   §§push(param4.position.y);
                                                                                                                                                   if(_loc28_)
                                                                                                                                                   {
                                                                                                                                                      addr881:
                                                                                                                                                      §§push(_loc8_.col1.y);
                                                                                                                                                      §§push(_loc7_.x);
                                                                                                                                                      if(!(_loc29_ && param1))
                                                                                                                                                      {
                                                                                                                                                         addr899:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc28_)
                                                                                                                                                         {
                                                                                                                                                            addr896:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            §§push(_loc8_.col2.y);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr899);
                                                                                                                                                   }
                                                                                                                                                   _loc14_ = Number(§§pop());
                                                                                                                                                   if(_loc28_ || param1)
                                                                                                                                                   {
                                                                                                                                                      this.§_-hn§[_loc6_].x = _loc13_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc9_;
                                                                                                                                                      if(_loc28_ || param2)
                                                                                                                                                      {
                                                                                                                                                         addr943:
                                                                                                                                                         this.§_-hn§[_loc6_].y = _loc14_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc10_;
                                                                                                                                                         if(_loc28_ || param2)
                                                                                                                                                         {
                                                                                                                                                            _loc6_++;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop3;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr943);
                                                                                                                                                }
                                                                                                                                                §§goto(addr881);
                                                                                                                                             }
                                                                                                                                             §§goto(addr899);
                                                                                                                                          }
                                                                                                                                          §§goto(addr896);
                                                                                                                                       }
                                                                                                                                       §§goto(addr860);
                                                                                                                                    }
                                                                                                                                    §§goto(addr881);
                                                                                                                                 }
                                                                                                                                 §§goto(addr869);
                                                                                                                              }
                                                                                                                              §§goto(addr875);
                                                                                                                           }
                                                                                                                           §§goto(addr943);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr985:
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           _loc7_ = param1.§_-Pv§;
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                              §§push(_loc8_.col1);
                                                                                                                              if(!_loc29_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 §§push(_loc7_.x);
                                                                                                                                 if(_loc28_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    §§push(_loc8_.col2);
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(!_loc29_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc7_.y);
                                                                                                                                          if(_loc28_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc29_)
                                                                                                                                             {
                                                                                                                                                _loc9_ = §§pop() + §§pop();
                                                                                                                                                if(_loc28_)
                                                                                                                                                {
                                                                                                                                                   addr1029:
                                                                                                                                                   §§push(_loc8_.col1.y);
                                                                                                                                                   §§push(_loc7_.x);
                                                                                                                                                   if(!_loc29_)
                                                                                                                                                   {
                                                                                                                                                      addr1034:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      §§push(_loc8_.col2.y);
                                                                                                                                                      if(_loc28_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr1045:
                                                                                                                                                         §§push(§§pop() * _loc7_.y);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!_loc29_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      _loc10_ = §§pop();
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1045);
                                                                                                                                                }
                                                                                                                                                _loc8_ = param4.R;
                                                                                                                                                _loc7_ = param1.m_localPoint;
                                                                                                                                                §§push(param4.position);
                                                                                                                                                if(!_loc29_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   if(!_loc29_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_.col1);
                                                                                                                                                      if(!_loc29_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         if(_loc28_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_.x);
                                                                                                                                                            if(!_loc29_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                               §§push(_loc8_.col2);
                                                                                                                                                               if(!_loc29_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  §§push(_loc7_.y);
                                                                                                                                                                  if(!(_loc29_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!_loc29_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1107:
                                                                                                                                                                           _loc11_ = Number(§§pop());
                                                                                                                                                                           §§push(param4.position.y);
                                                                                                                                                                           if(!(_loc29_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr1120:
                                                                                                                                                                              §§push(_loc8_.col1.y);
                                                                                                                                                                              §§push(_loc7_.x);
                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1125:
                                                                                                                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1131:
                                                                                                                                                                                    §§push(_loc8_.col2.y);
                                                                                                                                                                                    if(_loc28_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1142:
                                                                                                                                                                                       §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                                                                                                       if(_loc28_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1150:
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                                                                       if(_loc28_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§_-u5§);
                                                                                                                                                                                          if(!(_loc29_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                   addr1177:
                                                                                                                                                                                                   §§push(this.§_-u5§);
                                                                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                                                                   if(_loc28_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1186:
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   if(!_loc29_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc6_ = §§pop();
                                                                                                                                                                                                         if(!_loc29_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1195:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1397:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1401:
                                                                                                                                                                                                         break loop4;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      for(; §§pop() < param1.§_-Tu§; §§goto(addr1397))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc8_ = param2.R;
                                                                                                                                                                                                         _loc7_ = param1.§_-hn§[_loc6_].m_localPoint;
                                                                                                                                                                                                         if(!(_loc29_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(param2.position);
                                                                                                                                                                                                            if(!(_loc29_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                               §§push(_loc8_.col1);
                                                                                                                                                                                                               if(!(_loc29_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                  if(_loc28_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc7_.x);
                                                                                                                                                                                                                     if(!_loc29_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!_loc29_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1249:
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           §§push(_loc8_.col2);
                                                                                                                                                                                                                           if(!_loc29_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                                                                              §§push(_loc7_.y);
                                                                                                                                                                                                                              if(!_loc29_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1259:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(_loc28_ || param3)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(!(_loc29_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       if(!(_loc29_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc13_ = §§pop();
                                                                                                                                                                                                                                          if(!(_loc28_ || param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1293:
                                                                                                                                                                                                                                          §§push(param2.position.y);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1296:
                                                                                                                                                                                                                                       §§push(_loc8_.col1.y);
                                                                                                                                                                                                                                       if(!_loc29_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc7_.x);
                                                                                                                                                                                                                                          if(!(_loc29_ && param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(_loc28_ || param3)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1316:
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(!(_loc29_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1329:
                                                                                                                                                                                                                                                   §§push(Number(§§pop() + _loc8_.col2.y * _loc7_.y));
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                _loc14_ = §§pop();
                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   this.§_-hn§[_loc6_].x = _loc13_ + 0.5 * (param5 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param3) * _loc9_;
                                                                                                                                                                                                                                                   if(!_loc29_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1363:
                                                                                                                                                                                                                                                      this.§_-hn§[_loc6_].y = _loc14_ + 0.5 * (param5 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param3) * _loc10_;
                                                                                                                                                                                                                                                      if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   _loc6_++;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1329);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1316);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1329);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1316);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1259);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1249);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1296);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1293);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1363);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1401);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1195);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1186);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1177);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1401);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1142);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1142);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1150);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1142);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1125);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1131);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1142);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1125);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1120);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1107);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1045);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1034);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1029);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  break loop4;
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr978);
                                                                                                      }
                                                                                                      §§goto(addr778);
                                                                                                   }
                                                                                                   addr729:
                                                                                                   §§push(_loc8_.col1.y);
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      addr757:
                                                                                                      §§push(_loc7_.x);
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         addr743:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                      if(_loc28_ || param2)
                                                                                                      {
                                                                                                         addr766:
                                                                                                         §§goto(addr767);
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      §§goto(addr767);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc29_ && param3))
                                                                                                   {
                                                                                                      addr752:
                                                                                                      §§goto(addr757);
                                                                                                      §§push(_loc8_.col2.y);
                                                                                                      §§push(_loc7_.y);
                                                                                                   }
                                                                                                   §§goto(addr766);
                                                                                                }
                                                                                                §§goto(addr752);
                                                                                             }
                                                                                             §§goto(addr743);
                                                                                          }
                                                                                          §§goto(addr752);
                                                                                       }
                                                                                       §§goto(addr767);
                                                                                    }
                                                                                    §§goto(addr757);
                                                                                 }
                                                                                 §§goto(addr729);
                                                                              }
                                                                              §§goto(addr719);
                                                                           }
                                                                           §§goto(addr786);
                                                                        }
                                                                        §§goto(addr634);
                                                                     }
                                                                     §§goto(addr637);
                                                                  }
                                                                  §§goto(addr618);
                                                               }
                                                               §§goto(addr634);
                                                            }
                                                            §§goto(addr606);
                                                         }
                                                         §§goto(addr628);
                                                      }
                                                      §§goto(addr618);
                                                   }
                                                   §§goto(addr628);
                                                }
                                             }
                                             §§goto(addr613);
                                          case 2:
                                             §§goto(addr985);
                                       }
                                       param4.R;
                                       return;
                                       addr1476:
                                    }
                                    else
                                    {
                                       §§goto(addr1471);
                                    }
                                 }
                              }
                              else
                              {
                                 addr1460:
                                 if(b2Manifold.§_-77§ !== _loc27_)
                                 {
                                    §§goto(addr1476);
                                    §§push(3);
                                 }
                              }
                              §§goto(addr1476);
                           }
                           §§goto(addr1460);
                        }
                     }
                     §§goto(addr1476);
                  }
                  §§goto(addr1450);
               }
               §§goto(addr1471);
            }
            §§goto(addr1453);
         }
         §§goto(addr1476);
      }
   }
}
