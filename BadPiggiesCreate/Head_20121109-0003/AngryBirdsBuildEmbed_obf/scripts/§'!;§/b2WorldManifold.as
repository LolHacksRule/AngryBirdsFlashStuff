package §'!;§
{
   import §<!B§.*;
   import §?s§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §<!S§:b2Vec2;
      
      public var §`?§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!S§ = new b2Vec2();
            if(!_loc3_)
            {
               super();
               if(_loc2_ || _loc1_)
               {
                  addr53:
                  this.§`?§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
               }
            }
            var _loc1_:int = 0;
            while(_loc1_ < b2Settings.b2_maxManifoldPoints)
            {
               this.§`?§[_loc1_] = new b2Vec2();
               if(!_loc3_)
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
         §§goto(addr53);
      }
      
      public function §6!V§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(_loc28_)
         {
            if(param1.§+!X§ == 0)
            {
               if(_loc28_ || param2)
               {
                  §§goto(addr73);
               }
            }
            §§push(param1.§5!Z§);
            if(_loc28_ || param3)
            {
               var _loc27_:* = §§pop();
               if(!_loc29_)
               {
                  §§push(b2Manifold.§;!P§);
                  if(_loc28_)
                  {
                     §§push(_loc27_);
                     if(_loc28_)
                     {
                        if(§§pop() === §§pop())
                        {
                           §§push(_loc28_ || this ? 0 : 1);
                        }
                        else
                        {
                           §§push(b2Manifold.§ !N§);
                           if(_loc28_ || param2)
                           {
                              §§push(_loc27_);
                              if(!(_loc29_ && param1))
                              {
                                 addr1549:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc29_)
                                    {
                                       §§goto(addr1552);
                                    }
                                    else
                                    {
                                       §§goto(addr1564);
                                    }
                                 }
                                 else
                                 {
                                    addr1556:
                                    §§push(b2Manifold.§%!5§);
                                    §§push(_loc27_);
                                 }
                                 §§goto(addr1564);
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr1564);
                              }
                              else
                              {
                                 addr1564:
                                 loop4:
                                 switch(2)
                                 {
                                    case 0:
                                       _loc8_ = param2.R;
                                       _loc7_ = param1.m_localPoint;
                                       if(!(_loc29_ && param2))
                                       {
                                          §§push(param2.position);
                                          if(!_loc29_)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc29_)
                                             {
                                                §§push(_loc8_.col1);
                                                if(_loc28_ || param1)
                                                {
                                                   §§push(§§pop().x);
                                                   §§push(_loc7_.x);
                                                   if(_loc28_)
                                                   {
                                                      §§push(§§pop() + §§pop() * §§pop());
                                                      if(_loc28_ || param1)
                                                      {
                                                         §§push(_loc8_.col2);
                                                         if(_loc28_ || param3)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc29_)
                                                            {
                                                               §§push(_loc7_.y);
                                                               if(_loc28_ || param1)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc29_ && param2))
                                                                  {
                                                                     addr150:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc29_ && param2))
                                                                     {
                                                                        addr159:
                                                                        _loc15_ = §§pop();
                                                                        if(_loc28_)
                                                                        {
                                                                           addr164:
                                                                           §§push(param2.position.y);
                                                                           if(!_loc29_)
                                                                           {
                                                                              addr169:
                                                                              §§push(_loc8_.col1.y);
                                                                              §§push(_loc7_.x);
                                                                              if(_loc28_ || param1)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    addr192:
                                                                                    addr182:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       addr190:
                                                                                       §§push(_loc8_.col2.y * _loc7_.y);
                                                                                    }
                                                                                    _loc16_ = §§pop();
                                                                                    addr194:
                                                                                    _loc8_ = param4.R;
                                                                                    _loc7_ = param1.§`?§[0].m_localPoint;
                                                                                    if(!(_loc29_ && param3))
                                                                                    {
                                                                                       §§push(param4.position);
                                                                                       if(_loc28_ || param3)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          §§push(_loc8_.col1);
                                                                                          if(!(_loc29_ && param2))
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             §§push(_loc7_.x);
                                                                                             if(!(_loc29_ && param2))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc29_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc29_ && param1))
                                                                                                   {
                                                                                                      §§push(_loc8_.col2);
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         addr264:
                                                                                                         §§push(§§pop().x * _loc7_.y);
                                                                                                         if(!(_loc29_ && param3))
                                                                                                         {
                                                                                                            addr272:
                                                                                                            _loc17_ = §§pop() + §§pop();
                                                                                                            §§push(param4.position.y);
                                                                                                            §§push(_loc8_.col1.y);
                                                                                                         }
                                                                                                         §§push(§§pop() * _loc7_.x);
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc28_ || param2)
                                                                                                            {
                                                                                                               addr296:
                                                                                                               §§push(_loc8_.col2.y);
                                                                                                               if(!(_loc29_ && param3))
                                                                                                               {
                                                                                                                  §§push(_loc7_.y);
                                                                                                                  if(_loc28_)
                                                                                                                  {
                                                                                                                     _loc18_ = §§pop() + §§pop() * §§pop();
                                                                                                                     §§push(_loc17_);
                                                                                                                     §§push(_loc15_);
                                                                                                                     if(!(_loc29_ && param2))
                                                                                                                     {
                                                                                                                        addr322:
                                                                                                                        §§push(Number(§§pop() - §§pop()));
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           _loc19_ = §§pop();
                                                                                                                           §§push(_loc18_ - _loc16_);
                                                                                                                           if(_loc28_ || param3)
                                                                                                                           {
                                                                                                                              _loc20_ = §§pop();
                                                                                                                              §§push(_loc19_);
                                                                                                                              if(!_loc29_)
                                                                                                                              {
                                                                                                                                 §§push(_loc19_);
                                                                                                                                 if(_loc28_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       addr352:
                                                                                                                                       §§push(_loc20_ * _loc20_);
                                                                                                                                       if(!_loc29_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop() + §§pop()));
                                                                                                                                          if(_loc28_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc28_)
                                                                                                                                             {
                                                                                                                                                addr364:
                                                                                                                                                _loc21_ = §§pop();
                                                                                                                                                if(§§pop() > Number.MIN_VALUE * Number.MIN_VALUE)
                                                                                                                                                {
                                                                                                                                                   _loc26_ = Math.sqrt(_loc21_);
                                                                                                                                                   §§push(this.§<!S§);
                                                                                                                                                   if(!(_loc29_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                      if(!(_loc29_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc26_);
                                                                                                                                                         if(_loc28_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            if(!(_loc29_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               §§push(this.§<!S§);
                                                                                                                                                               if(!_loc29_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                  if(!(_loc29_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     addr424:
                                                                                                                                                                     §§pop().y = §§pop() / _loc26_;
                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        addr459:
                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                        §§push(param3);
                                                                                                                                                                        if(!_loc29_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§<!S§);
                                                                                                                                                                           if(!_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                              if(!_loc29_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!(_loc29_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr480:
                                                                                                                                                                                    _loc22_ = §§pop() + §§pop();
                                                                                                                                                                                    addr478:
                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                    if(_loc28_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param3);
                                                                                                                                                                                       if(!_loc29_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§<!S§);
                                                                                                                                                                                          if(!(_loc29_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr501:
                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                             if(_loc28_ || param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr511:
                                                                                                                                                                                                §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc23_ = §§pop();
                                                                                                                                                                                                   addr515:
                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                   §§push(param5);
                                                                                                                                                                                                   if(_loc28_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr524:
                                                                                                                                                                                                      §§push(this.§<!S§);
                                                                                                                                                                                                      if(!(_loc29_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr535:
                                                                                                                                                                                                         §§push(§§pop() - §§pop() * §§pop().x);
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr538:
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            if(_loc28_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr546:
                                                                                                                                                                                                               _loc24_ = §§pop();
                                                                                                                                                                                                               if(!(_loc29_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr554:
                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                  if(_loc28_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr568:
                                                                                                                                                                                                                     _loc25_ = §§pop() - param5 * this.§<!S§.y;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr568);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               this.§`?§[0].x = 0.5 * (_loc22_ + _loc24_);
                                                                                                                                                                                                               this.§`?§[0].y = 0.5 * (_loc23_ + _loc25_);
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr568);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr535);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr568);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr535);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr568);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr524);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr568);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr501);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr478);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr515);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr424);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr451:
                                                                                                                                                                  §§pop().y = 0;
                                                                                                                                                                  addr450:
                                                                                                                                                                  if(_loc28_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr459);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr554);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr424);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(this.§<!S§);
                                                                                                                                                   if(!(_loc29_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§push(1);
                                                                                                                                                      if(!(_loc29_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         if(_loc28_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr450);
                                                                                                                                                            §§push(this.§<!S§);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr554);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr451);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr451);
                                                                                                                                             }
                                                                                                                                             §§goto(addr568);
                                                                                                                                          }
                                                                                                                                          §§goto(addr546);
                                                                                                                                       }
                                                                                                                                       §§goto(addr364);
                                                                                                                                    }
                                                                                                                                    §§goto(addr480);
                                                                                                                                 }
                                                                                                                                 §§goto(addr364);
                                                                                                                              }
                                                                                                                              §§goto(addr511);
                                                                                                                           }
                                                                                                                           §§goto(addr538);
                                                                                                                        }
                                                                                                                        §§goto(addr352);
                                                                                                                     }
                                                                                                                     §§goto(addr480);
                                                                                                                  }
                                                                                                                  §§goto(addr511);
                                                                                                               }
                                                                                                               §§goto(addr535);
                                                                                                            }
                                                                                                            §§goto(addr546);
                                                                                                         }
                                                                                                         §§goto(addr480);
                                                                                                      }
                                                                                                      §§goto(addr296);
                                                                                                   }
                                                                                                   §§goto(addr322);
                                                                                                }
                                                                                                §§goto(addr272);
                                                                                             }
                                                                                             §§goto(addr264);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr272);
                                                                                    }
                                                                                    §§goto(addr459);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§goto(addr190);
                                                                           }
                                                                        }
                                                                        §§goto(addr194);
                                                                     }
                                                                     §§goto(addr192);
                                                                  }
                                                                  §§goto(addr182);
                                                               }
                                                               §§goto(addr190);
                                                            }
                                                            §§goto(addr150);
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr190);
                                                }
                                                §§goto(addr169);
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr192);
                                    case 1:
                                       _loc8_ = param2.R;
                                       _loc7_ = param1.§]!h§;
                                       if(!(_loc29_ && param2))
                                       {
                                          §§push(_loc8_.col1);
                                          if(!_loc29_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc28_)
                                             {
                                                §§push(_loc7_.x);
                                                if(_loc28_ || param2)
                                                {
                                                   addr624:
                                                   §§push(§§pop() * §§pop());
                                                   §§push(_loc8_.col2);
                                                   if(_loc28_ || this)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc28_)
                                                      {
                                                         addr636:
                                                         §§push(_loc7_.y);
                                                         if(_loc28_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc29_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc29_)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  if(!(_loc29_ && param3))
                                                                  {
                                                                     addr677:
                                                                     §§push(_loc8_.col1.y);
                                                                     §§push(_loc7_.x);
                                                                     if(_loc28_)
                                                                     {
                                                                        addr662:
                                                                        §§push(§§pop() * §§pop());
                                                                        §§push(_loc8_.col2.y);
                                                                        if(!(_loc29_ && param2))
                                                                        {
                                                                           addr673:
                                                                           §§push(§§pop() * _loc7_.y);
                                                                        }
                                                                     }
                                                                     _loc10_ = §§pop() + §§pop();
                                                                  }
                                                                  _loc8_ = param2.R;
                                                                  _loc7_ = param1.m_localPoint;
                                                                  if(!_loc29_)
                                                                  {
                                                                     §§push(param2.position);
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!(_loc29_ && param1))
                                                                        {
                                                                           §§push(_loc8_.col1);
                                                                           if(_loc28_)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(!_loc29_)
                                                                              {
                                                                                 §§push(_loc7_.x);
                                                                                 if(_loc28_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc29_ && param1))
                                                                                       {
                                                                                          addr728:
                                                                                          §§push(_loc8_.col2);
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             §§push(_loc7_.y);
                                                                                             if(_loc28_ || this)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc28_)
                                                                                                   {
                                                                                                      _loc11_ = §§pop();
                                                                                                      if(_loc28_ || param2)
                                                                                                      {
                                                                                                         addr762:
                                                                                                         §§push(param2.position.y);
                                                                                                         §§push(_loc8_.col1.y);
                                                                                                         §§push(_loc7_.x);
                                                                                                         if(!_loc29_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc29_ && param2))
                                                                                                            {
                                                                                                               addr788:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               §§push(_loc8_.col2.y);
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr794:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc29_)
                                                                                                               {
                                                                                                                  addr798:
                                                                                                                  _loc12_ = §§pop();
                                                                                                                  if(!(_loc29_ && param3))
                                                                                                                  {
                                                                                                                     §§push(this.§<!S§);
                                                                                                                     if(!(_loc29_ && param3))
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        if(!_loc29_)
                                                                                                                        {
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           addr1061:
                                                                                                                           if(!(_loc29_ && param1))
                                                                                                                           {
                                                                                                                              addr828:
                                                                                                                              §§push(this.§<!S§);
                                                                                                                              §§push(_loc10_);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        addr830:
                                                                                                                        §§push(0);
                                                                                                                        if(_loc28_ || param2)
                                                                                                                        {
                                                                                                                           _loc6_ = §§pop();
                                                                                                                           if(!_loc29_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                              }
                                                                                                                              addr1057:
                                                                                                                           }
                                                                                                                           §§goto(addr1061);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() >= param1.§+!X§)
                                                                                                                           {
                                                                                                                              §§goto(addr1061);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(param4.R);
                                                                                                                              if(!(_loc29_ && param2))
                                                                                                                              {
                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                 _loc7_ = param1.§`?§[_loc6_].m_localPoint;
                                                                                                                                 if(!(_loc28_ || this))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§push(param4.position);
                                                                                                                                 if(_loc28_ || param3)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(!_loc29_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_.col1);
                                                                                                                                       if(_loc28_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          §§push(_loc7_.x);
                                                                                                                                          if(!(_loc29_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                             if(_loc28_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(_loc8_.col2);
                                                                                                                                                if(_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   if(_loc28_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_.y);
                                                                                                                                                      if(_loc28_ || param3)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc28_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!(_loc29_ && param1))
                                                                                                                                                            {
                                                                                                                                                               _loc13_ = Number(§§pop());
                                                                                                                                                               if(_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  addr946:
                                                                                                                                                                  §§push(param4.position.y);
                                                                                                                                                                  if(_loc28_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     addr954:
                                                                                                                                                                     §§push(_loc8_.col1.y);
                                                                                                                                                                     if(!(_loc29_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc7_.x);
                                                                                                                                                                        if(!_loc29_)
                                                                                                                                                                        {
                                                                                                                                                                           addr969:
                                                                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                           if(_loc28_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr979:
                                                                                                                                                                              §§push(_loc8_.col2.y);
                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr986:
                                                                                                                                                                                 _loc14_ = §§pop() + §§pop() * _loc7_.y;
                                                                                                                                                                                 addr985:
                                                                                                                                                                                 addr984:
                                                                                                                                                                                 if(!(_loc29_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§`?§[_loc6_].x = _loc13_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc9_;
                                                                                                                                                                                    if(!(_loc28_ || this))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 this.§`?§[_loc6_].y = _loc14_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc10_;
                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr985);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr986);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr984);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr969);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr986);
                                                                                                                                                               }
                                                                                                                                                               _loc6_++;
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr954);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr969);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr986);
                                                                                                                                                }
                                                                                                                                                §§goto(addr979);
                                                                                                                                             }
                                                                                                                                             §§goto(addr986);
                                                                                                                                          }
                                                                                                                                          §§goto(addr969);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr954);
                                                                                                                                 }
                                                                                                                                 §§goto(addr946);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr1065:
                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                 _loc7_ = param1.§]!h§;
                                                                                                                                 if(!_loc29_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_.col1);
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(_loc28_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc7_.x);
                                                                                                                                          if(!(_loc29_ && param3))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc29_ && this))
                                                                                                                                             {
                                                                                                                                                addr1097:
                                                                                                                                                §§push(_loc8_.col2);
                                                                                                                                                if(!_loc29_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   if(_loc28_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_.y);
                                                                                                                                                      if(_loc28_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc28_ || param3)
                                                                                                                                                         {
                                                                                                                                                            addr1116:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!_loc29_)
                                                                                                                                                            {
                                                                                                                                                               addr1119:
                                                                                                                                                               _loc9_ = §§pop();
                                                                                                                                                               addr1154:
                                                                                                                                                               if(_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  addr1125:
                                                                                                                                                                  §§push(_loc8_.col1.y);
                                                                                                                                                               }
                                                                                                                                                               _loc8_ = param4.R;
                                                                                                                                                               _loc7_ = param1.m_localPoint;
                                                                                                                                                               if(_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param4.position);
                                                                                                                                                                  if(!_loc29_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_.col1);
                                                                                                                                                                        if(!_loc29_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           if(!_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc7_.x);
                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                 if(!_loc29_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc8_.col2);
                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       §§push(_loc7_.y);
                                                                                                                                                                                       if(_loc28_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1204:
                                                                                                                                                                                             _loc11_ = §§pop();
                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1214:
                                                                                                                                                                                                §§push(param4.position.y);
                                                                                                                                                                                                §§push(_loc8_.col1.y);
                                                                                                                                                                                                §§push(_loc7_.x);
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1218:
                                                                                                                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1222:
                                                                                                                                                                                                      §§push(_loc8_.col2.y);
                                                                                                                                                                                                      if(_loc28_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1234:
                                                                                                                                                                                                         §§push(§§pop() * _loc7_.y);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(_loc28_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1244:
                                                                                                                                                                                                         _loc12_ = §§pop();
                                                                                                                                                                                                         §§push(this.§<!S§);
                                                                                                                                                                                                         if(!(_loc29_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                               if(_loc28_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1265:
                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                  if(_loc28_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1275:
                                                                                                                                                                                                                     §§push(this.§<!S§);
                                                                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1279:
                                                                                                                                                                                                                        §§pop().y = -§§pop();
                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                        if(_loc28_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc6_ = §§pop();
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1486:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        for(; §§pop() < param1.§+!X§; §§goto(addr1486))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc8_ = param2.R;
                                                                                                                                                                                                                           _loc7_ = param1.§`?§[_loc6_].m_localPoint;
                                                                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(param2.position);
                                                                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                                                                              if(!_loc29_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc8_.col1);
                                                                                                                                                                                                                                 if(_loc28_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                    §§push(_loc7_.x);
                                                                                                                                                                                                                                    if(_loc28_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          if(!(_loc29_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc8_.col2);
                                                                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1346:
                                                                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                                                                §§push(_loc7_.y);
                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!_loc29_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                                                                                      if(!(_loc29_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1362:
                                                                                                                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                                                                                                                         if(_loc28_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1373:
                                                                                                                                                                                                                                                            §§push(param2.position.y);
                                                                                                                                                                                                                                                            §§push(_loc8_.col1.y);
                                                                                                                                                                                                                                                            §§push(_loc7_.x);
                                                                                                                                                                                                                                                            if(_loc28_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1385:
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(!(_loc29_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  if(!(_loc29_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1415:
                                                                                                                                                                                                                                                                     §§push(_loc8_.col2.y);
                                                                                                                                                                                                                                                                     if(!(_loc29_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1411:
                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc7_.y);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     _loc14_ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        this.§`?§[_loc6_].x = _loc13_ + 0.5 * (param5 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param3) * _loc9_;
                                                                                                                                                                                                                                                                        if(!(_loc29_ && param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1452:
                                                                                                                                                                                                                                                                           this.§`?§[_loc6_].y = _loc14_ + 0.5 * (param5 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param3) * _loc10_;
                                                                                                                                                                                                                                                                           if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        _loc6_++;
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1415);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1411);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1452);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1373);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1411);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1415);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1362);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1346);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1385);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1373);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1415);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1373);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1279);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break loop4;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1279);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1265);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1275);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1244);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1234);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1279);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1222);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1218);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1222);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1204);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1218);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1214);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1244);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1214);
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc7_.x);
                                                                                                                                                            if(_loc28_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr1135:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc28_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  addr1145:
                                                                                                                                                                  §§push(_loc8_.col2.y);
                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1148:
                                                                                                                                                                     §§push(§§pop() * _loc7_.y);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               _loc10_ = §§pop();
                                                                                                                                                               §§goto(addr1154);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1148);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1135);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1148);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1116);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1145);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1119);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1116);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1097);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1125);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1119);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr828);
                                                                                                               }
                                                                                                               §§goto(addr798);
                                                                                                            }
                                                                                                            addr793:
                                                                                                            §§goto(addr794);
                                                                                                            §§push(§§pop() * _loc7_.y);
                                                                                                         }
                                                                                                         §§goto(addr793);
                                                                                                      }
                                                                                                      §§goto(addr830);
                                                                                                   }
                                                                                                   §§goto(addr798);
                                                                                                }
                                                                                                §§goto(addr794);
                                                                                             }
                                                                                             §§goto(addr793);
                                                                                          }
                                                                                          §§goto(addr788);
                                                                                       }
                                                                                       §§goto(addr798);
                                                                                    }
                                                                                    §§goto(addr788);
                                                                                 }
                                                                                 §§goto(addr793);
                                                                              }
                                                                              §§goto(addr788);
                                                                           }
                                                                           §§goto(addr762);
                                                                        }
                                                                        §§goto(addr728);
                                                                     }
                                                                     §§goto(addr762);
                                                                  }
                                                                  §§goto(addr1061);
                                                               }
                                                               §§goto(addr677);
                                                            }
                                                         }
                                                         §§goto(addr673);
                                                      }
                                                   }
                                                   §§goto(addr662);
                                                }
                                                §§goto(addr636);
                                             }
                                             §§goto(addr624);
                                          }
                                       }
                                       §§goto(addr677);
                                    case 2:
                                       §§goto(addr1065);
                                 }
                                 param4.R;
                                 return;
                                 §§push(3);
                              }
                              §§goto(addr1564);
                           }
                           §§goto(addr1556);
                        }
                        §§goto(addr1564);
                     }
                     §§goto(addr1549);
                  }
               }
            }
            §§goto(addr1564);
         }
         addr73:
      }
   }
}
