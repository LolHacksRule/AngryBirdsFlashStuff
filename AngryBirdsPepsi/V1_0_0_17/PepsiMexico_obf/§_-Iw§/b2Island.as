package §_-Iw§
{
   import §_-1N§.*;
   import §_-Ja§.*;
   import §_-a5§.*;
   import §_-lh§.*;
   import §_-qg§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §_-fX§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || b2Island)
         {
            §_-fX§ = new b2ContactImpulse();
         }
      }
      
      private var §_-sB§;
      
      private var §_-BZ§:b2ContactListener;
      
      private var §_-Ul§:b2ContactSolver;
      
      b2internal var §_-SV§:Vector.<b2Body>;
      
      b2internal var §_-LO§:Vector.<b2Contact>;
      
      b2internal var §_-O2§:Vector.<b2Joint>;
      
      b2internal var §_-Ww§:int;
      
      b2internal var §_-LT§:int;
      
      b2internal var §_-b7§:int;
      
      private var §_-G0§:int;
      
      b2internal var §_-UT§:int;
      
      b2internal var §_-iv§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               this.§_-SV§ = new Vector.<b2Body>();
               if(_loc2_ && _loc2_)
               {
               }
               §§goto(addr75);
            }
            this.§_-LO§ = new Vector.<b2Contact>();
            if(_loc1_ || _loc2_)
            {
               this.§_-O2§ = new Vector.<b2Joint>();
            }
         }
         addr75:
      }
      
      public function §_-lc§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(_loc8_ || param3)
         {
            this.§_-G0§ = param1;
            if(_loc8_)
            {
               this.§_-UT§ = param2;
               this.§_-iv§ = param3;
               this.§_-Ww§ = 0;
               this.§_-b7§ = 0;
               this.§_-LT§ = 0;
               if(_loc8_ || param2)
               {
                  addr49:
                  this.§_-sB§ = param4;
                  this.§_-BZ§ = param5;
                  this.§_-Ul§ = param6;
                  if(_loc9_)
                  {
                  }
                  §§goto(addr65);
               }
               _loc7_ = int(this.§_-SV§.length);
               addr65:
               loop0:
               while(true)
               {
                  §§push(_loc7_);
                  if(!(_loc9_ && param1))
                  {
                     §§push(param1);
                     if(!(_loc9_ && param3))
                     {
                        if(§§pop() < §§pop())
                        {
                           continue;
                        }
                        if(_loc8_)
                        {
                           addr106:
                           §§push(int(this.§_-LO§.length));
                           if(_loc8_ || param1)
                           {
                              _loc7_ = §§pop();
                              if(!(_loc9_ && param2))
                              {
                                 loop1:
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    if(!_loc9_)
                                    {
                                       addr185:
                                       while(true)
                                       {
                                          §§push(param2);
                                          if(_loc8_ || param3)
                                          {
                                             addr183:
                                             if(§§pop() >= §§pop())
                                             {
                                                §§push(int(this.§_-O2§.length));
                                                if(!_loc9_)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(_loc8_ || this)
                                                   {
                                                      addr161:
                                                   }
                                                }
                                                break loop0;
                                             }
                                             this.§_-LO§[_loc7_] = null;
                                             if(_loc8_)
                                             {
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                break loop0;
                                             }
                                             addr183:
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             this.§_-O2§[_loc7_] = null;
                                             if(!(_loc9_ && this))
                                             {
                                                _loc7_++;
                                                §§goto(addr183);
                                             }
                                          }
                                          §§goto(addr186);
                                       }
                                       addr138:
                                       addr185:
                                    }
                                    break loop0;
                                 }
                                 addr135:
                              }
                              while(true)
                              {
                                 _loc7_++;
                                 §§goto(addr135);
                              }
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr185);
                  }
                  break;
               }
               while(true)
               {
                  §§goto(addr185);
                  §§goto(addr183);
               }
               addr186:
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function §_-jU§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-Ww§ = 0;
            if(!_loc1_)
            {
               this.§_-b7§ = 0;
               if(!_loc1_)
               {
                  addr33:
                  this.§_-LT§ = 0;
               }
               return;
            }
         }
         §§goto(addr33);
      }
      
      public function §_-B-§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:b2Joint = null;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         if(_loc18_)
         {
            _loc4_ = 0;
         }
         while(_loc4_ < this.§_-Ww§)
         {
            if((_loc6_ = this.§_-SV§[_loc4_]).§_-ww§() == b2Body.b2_dynamicBody)
            {
               §§push(_loc6_.§_-ZZ§);
               if(_loc18_ || param3)
               {
                  §§push(_loc6_.§_-ZZ§);
                  if(!_loc19_)
                  {
                     §§push(§§pop().x);
                     if(_loc18_ || this)
                     {
                        §§push(param1.§_-h8§);
                        if(_loc18_)
                        {
                           §§push(param2.x);
                           if(_loc18_)
                           {
                              §§push(_loc6_.§_-eZ§);
                              if(_loc18_ || param3)
                              {
                                 §§push(_loc6_.§return§);
                                 if(!_loc19_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc18_ || param2)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc18_ || this)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc19_ && param1))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc18_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc19_)
                                                {
                                                   addr131:
                                                   §§pop().x = §§pop();
                                                   §§push(_loc6_.§_-ZZ§);
                                                   if(!(_loc19_ && param3))
                                                   {
                                                      addr143:
                                                      §§push(_loc6_.§_-ZZ§.y);
                                                      if(_loc18_ || this)
                                                      {
                                                         §§push(param1.§_-h8§);
                                                         if(_loc18_ || param2)
                                                         {
                                                            addr160:
                                                            §§push(param2.y);
                                                            if(!_loc19_)
                                                            {
                                                               addr173:
                                                               §§push(_loc6_.§_-eZ§);
                                                               if(!_loc19_)
                                                               {
                                                                  addr168:
                                                                  §§push(§§pop() * _loc6_.§return§.y);
                                                               }
                                                               §§push(§§pop() * (§§pop() + §§pop()));
                                                            }
                                                            §§goto(addr173);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc18_ || param2)
                                                         {
                                                            addr182:
                                                            §§pop().y = §§pop();
                                                            if(_loc18_ || param1)
                                                            {
                                                               §§push(_loc6_);
                                                               §§push(_loc6_.m_angularVelocity);
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  §§push(param1.§_-h8§);
                                                                  if(!(_loc19_ && this))
                                                                  {
                                                                     §§push(_loc6_.§_-DZ§);
                                                                     if(!(_loc19_ && param3))
                                                                     {
                                                                        addr230:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc19_ && this))
                                                                        {
                                                                           addr228:
                                                                           §§push(§§pop() * _loc6_.§_-0C§);
                                                                        }
                                                                        §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                        if(_loc18_)
                                                                        {
                                                                           addr248:
                                                                           addr235:
                                                                           §§push(_loc6_.§_-ZZ§);
                                                                           §§push(b2Math);
                                                                           §§push(1);
                                                                           §§push(param1.§_-h8§);
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(§§pop() * _loc6_.§_-rl§);
                                                                           }
                                                                           §§pop().§_-6z§(§§pop().§_-Gj§(§§pop() - §§pop(),0,1));
                                                                           §§push(_loc6_);
                                                                           §§push(_loc6_.m_angularVelocity);
                                                                           if(_loc18_ || param3)
                                                                           {
                                                                              §§push(b2Math);
                                                                              §§push(1);
                                                                              §§push(param1.§_-h8§);
                                                                              if(!(_loc19_ && this))
                                                                              {
                                                                                 §§push(§§pop() * _loc6_.§_-1p§);
                                                                              }
                                                                              §§push(§§pop() * §§pop().§_-Gj§(§§pop() - §§pop(),0,1));
                                                                           }
                                                                           §§pop().m_angularVelocity = §§pop();
                                                                           addr279:
                                                                           _loc4_++;
                                                                        }
                                                                        continue;
                                                                     }
                                                                  }
                                                                  §§goto(addr228);
                                                               }
                                                               §§goto(addr230);
                                                            }
                                                            §§goto(addr279);
                                                         }
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr235);
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr160);
                                          }
                                          §§goto(addr173);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr143);
               }
            }
            §§goto(addr248);
         }
         if(!_loc19_)
         {
            §§push(this.§_-Ul§);
            if(!(_loc19_ && param2))
            {
               §§pop().§_-lc§(param1,this.§_-LO§,this.§_-b7§,this.§_-sB§);
               addr303:
               §§push(this.§_-Ul§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            §§push(0);
            if(!_loc19_)
            {
               _loc4_ = §§pop();
               loop1:
               while(true)
               {
                  §§push(_loc4_);
                  if(!_loc19_)
                  {
                     if(§§pop() < this.§_-LT§)
                     {
                        (_loc7_ = this.§_-O2§[_loc4_]).InitVelocityConstraints(param1);
                        if(!(_loc19_ && param3))
                        {
                           _loc4_++;
                        }
                        continue;
                     }
                     _loc4_ = 0;
                     if(_loc19_ && param2)
                     {
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                        §§push(param1.§_-yW§);
                        if(_loc18_ || this)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc18_)
                              {
                                 §§push(0);
                                 if(_loc18_ || param1)
                                 {
                                    _loc4_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                    }
                                    addr417:
                                 }
                                 while(§§pop() < this.§_-LT§)
                                 {
                                    (_loc7_ = this.§_-O2§[_loc4_]).§_-qd§();
                                    if(!_loc19_)
                                    {
                                       _loc4_++;
                                    }
                                    §§goto(addr417);
                                 }
                                 if(_loc18_ || param3)
                                 {
                                    _loc8_.§_-qd§();
                                    _loc4_ = 0;
                                    while(_loc4_ < this.§_-Ww§)
                                    {
                                       if((_loc6_ = this.§_-SV§[_loc4_]).§_-ww§() != b2Body.b2_staticBody)
                                       {
                                          §§push(param1.§_-h8§);
                                          §§push(_loc6_.§_-ZZ§);
                                          if(!(_loc19_ && param3))
                                          {
                                             §§push(§§pop() * §§pop().x);
                                             if(_loc18_ || param1)
                                             {
                                                _loc9_ = §§pop();
                                                addr472:
                                                §§push(param1.§_-h8§ * _loc6_.§_-ZZ§.y);
                                                if(_loc18_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc18_)
                                                   {
                                                      _loc10_ = §§pop();
                                                      §§push(_loc9_);
                                                      if(_loc18_)
                                                      {
                                                         §§push(§§pop() * _loc9_);
                                                         §§push(_loc10_);
                                                         §§push(_loc10_);
                                                         if(_loc18_ || param3)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc18_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(b2Settings.b2_maxTranslationSquared);
                                                                  if(!(_loc19_ && this))
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        §§push(_loc6_.§_-ZZ§);
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§pop().Normalize();
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(_loc6_.§_-ZZ§);
                                                                              if(_loc18_)
                                                                              {
                                                                                 addr521:
                                                                                 §§push(_loc6_.§_-ZZ§);
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc18_ || this)
                                                                                    {
                                                                                       §§push(b2Settings.b2_maxTranslation);
                                                                                       if(_loc18_ || this)
                                                                                       {
                                                                                          §§push(param1.§_-0w§);
                                                                                          if(_loc18_ || param3)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   addr567:
                                                                                                   addr565:
                                                                                                   §§push(_loc6_.§_-ZZ§);
                                                                                                   §§push(_loc6_.§_-ZZ§.y);
                                                                                                   if(_loc19_ && this)
                                                                                                   {
                                                                                                   }
                                                                                                   addr583:
                                                                                                   §§pop().y = §§pop();
                                                                                                   §§push(Number(param1.§_-h8§ * _loc6_.m_angularVelocity));
                                                                                                   §§push(Number(param1.§_-h8§ * _loc6_.m_angularVelocity));
                                                                                                   if(_loc18_ || param1)
                                                                                                   {
                                                                                                      addr598:
                                                                                                      §§push(_loc11_ = §§pop());
                                                                                                      if(_loc18_ || param3)
                                                                                                      {
                                                                                                         addr614:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         §§push(b2Settings.b2_maxRotationSquared);
                                                                                                      }
                                                                                                      if(§§pop() > §§pop())
                                                                                                      {
                                                                                                         addr620:
                                                                                                         if(_loc6_.m_angularVelocity < 0)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            §§push(b2Settings.b2_maxRotation);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               if(_loc18_ || param1)
                                                                                                               {
                                                                                                                  addr635:
                                                                                                                  §§push(§§pop() * param1.§_-0w§);
                                                                                                               }
                                                                                                               §§pop().m_angularVelocity = §§pop();
                                                                                                               addr651:
                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                               if(!(_loc19_ && this))
                                                                                                               {
                                                                                                                  §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr669:
                                                                                                                     §§push(_loc6_.m_sweep);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().a);
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           §§pop().a0 = §§pop();
                                                                                                                           addr677:
                                                                                                                           §§push(_loc6_.m_sweep);
                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop().c);
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.m_sweep);
                                                                                                                                 if(_loc18_ || param3)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().c);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§_-h8§);
                                                                                                                                          if(_loc18_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.§_-ZZ§);
                                                                                                                                             if(!(_loc19_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc18_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr733:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            addr745:
                                                                                                                                                            addr744:
                                                                                                                                                            addr742:
                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                            §§push(_loc6_.m_sweep.c.y);
                                                                                                                                                            if(_loc19_ && param1)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr762:
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            addr765:
                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                            §§push(_loc6_.m_sweep.a);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr770:
                                                                                                                                                               §§push(param1.§_-h8§);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().a = §§pop();
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               _loc6_.§_-Z9§();
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  addr785:
                                                                                                                                                                  _loc4_++;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr765);
                                                                                                                                                      }
                                                                                                                                                      §§push(param1.§_-h8§);
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         addr760:
                                                                                                                                                         §§push(§§pop() * _loc6_.§_-ZZ§.y);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr762);
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr760);
                                                                                                                                          }
                                                                                                                                          §§goto(addr733);
                                                                                                                                       }
                                                                                                                                       §§goto(addr762);
                                                                                                                                    }
                                                                                                                                    §§goto(addr745);
                                                                                                                                 }
                                                                                                                                 §§goto(addr744);
                                                                                                                              }
                                                                                                                              §§goto(addr742);
                                                                                                                           }
                                                                                                                           §§goto(addr745);
                                                                                                                        }
                                                                                                                        §§goto(addr770);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr745);
                                                                                                               }
                                                                                                               §§goto(addr669);
                                                                                                            }
                                                                                                            §§goto(addr635);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            §§push(b2Settings.b2_maxRotation);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(§§pop() * param1.§_-0w§);
                                                                                                            }
                                                                                                            §§pop().m_angularVelocity = §§pop();
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr785);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr651);
                                                                                                   }
                                                                                                   §§goto(addr614);
                                                                                                }
                                                                                                §§push(b2Settings.b2_maxTranslation);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                }
                                                                                                addr582:
                                                                                                §§goto(addr583);
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             §§push(param1.§_-0w§);
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                       §§goto(addr582);
                                                                                    }
                                                                                    §§goto(addr583);
                                                                                 }
                                                                                 §§goto(addr567);
                                                                              }
                                                                              §§goto(addr565);
                                                                           }
                                                                           §§goto(addr677);
                                                                        }
                                                                        §§goto(addr521);
                                                                     }
                                                                  }
                                                                  §§goto(addr567);
                                                               }
                                                               §§goto(addr620);
                                                            }
                                                         }
                                                         §§goto(addr598);
                                                      }
                                                   }
                                                   §§goto(addr567);
                                                }
                                             }
                                             §§goto(addr620);
                                          }
                                          §§goto(addr472);
                                       }
                                       §§goto(addr785);
                                    }
                                    §§push(0);
                                    if(_loc18_ || param3)
                                    {
                                       _loc4_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          §§push(param1.§_-Pe§);
                                          addr916:
                                          loop8:
                                          while(true)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
                                                if(!(_loc19_ && param1))
                                                {
                                                   _loc13_ = true;
                                                   §§push(0);
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(!(_loc19_ && this))
                                                      {
                                                         addr872:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc18_ || param1)
                                                            {
                                                               break loop1;
                                                            }
                                                            §§goto(addr994);
                                                         }
                                                         addr872:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr950);
                                                   addr817:
                                                }
                                                break;
                                             }
                                             if(!(_loc19_ && this))
                                             {
                                                addr924:
                                                this.§_-2l§(_loc8_.§_-MT§);
                                                if(!(_loc19_ && param2))
                                                {
                                                   addr936:
                                                   if(param3)
                                                   {
                                                      if(_loc18_ || this)
                                                      {
                                                         addr944:
                                                         _loc15_ = Number(Number.MAX_VALUE);
                                                         if(_loc18_)
                                                         {
                                                            addr950:
                                                            §§push(b2Settings.b2_linearSleepTolerance);
                                                            §§push(b2Settings.b2_linearSleepTolerance);
                                                            if(_loc18_ || param3)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc18_ || this)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc18_ || param3)
                                                                  {
                                                                     _loc16_ = §§pop();
                                                                     addr978:
                                                                     §§push(b2Settings.b2_angularSleepTolerance);
                                                                     §§push(b2Settings.b2_angularSleepTolerance);
                                                                     if(!_loc19_)
                                                                     {
                                                                        addr985:
                                                                        §§push(Number(§§pop() * §§pop()));
                                                                        if(!(_loc19_ && param3))
                                                                        {
                                                                           _loc17_ = §§pop();
                                                                           addr995:
                                                                           _loc4_ = 0;
                                                                           addr994:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 if(§§pop() >= this.§_-Ww§)
                                                                                 {
                                                                                    addr1179:
                                                                                    if(_loc15_ >= b2Settings.b2_timeToSleep)
                                                                                    {
                                                                                       if(_loc18_ || param1)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       break loop8;
                                                                                    }
                                                                                    break loop8;
                                                                                 }
                                                                                 §§push((_loc6_ = this.§_-SV§[_loc4_]).§_-ww§());
                                                                                 if(_loc18_ || param2)
                                                                                 {
                                                                                    §§push(b2Body.b2_staticBody);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       if(§§pop() != §§pop())
                                                                                       {
                                                                                          §§push(_loc6_.§_-Il§);
                                                                                          if(!(_loc19_ && param2))
                                                                                          {
                                                                                             addr1028:
                                                                                             §§push(b2Body.§_-Iv§);
                                                                                             if(_loc18_ || param3)
                                                                                             {
                                                                                                addr1037:
                                                                                                §§push(§§pop() & §§pop());
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         _loc6_.§_-5g§ = 0;
                                                                                                         §§push(Number(0));
                                                                                                         if(!(_loc19_ && param3))
                                                                                                         {
                                                                                                            _loc15_ = §§pop();
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               addr1059:
                                                                                                               §§push((_loc6_.§_-Il§ & b2Body.§_-Iv§) == 0);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(!(_loc19_ && param2))
                                                                                                                           {
                                                                                                                              §§push(_loc6_.m_angularVelocity);
                                                                                                                              if(_loc18_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.m_angularVelocity);
                                                                                                                                 if(_loc18_ || param3)
                                                                                                                                 {
                                                                                                                                    addr1101:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    §§push(_loc17_);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       addr1104:
                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          addr1107:
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc19_ && param1)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr1127:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   _loc6_.§_-5g§ = 0;
                                                                                                                                                }
                                                                                                                                                addr1133:
                                                                                                                                                §§push(0);
                                                                                                                                                if(!(_loc19_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      addr1161:
                                                                                                                                                      _loc15_ = §§pop();
                                                                                                                                                      if(_loc18_ || param3)
                                                                                                                                                      {
                                                                                                                                                         addr1169:
                                                                                                                                                         _loc4_++;
                                                                                                                                                      }
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1169);
                                                                                                                                                }
                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                §§goto(addr1169);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                §§push(_loc6_.§_-5g§);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + param1.§_-h8§);
                                                                                                                                                }
                                                                                                                                                §§pop().§_-5g§ = §§pop();
                                                                                                                                                addr1155:
                                                                                                                                                §§push(Number(b2Math.§_-cD§(_loc15_,_loc6_.§_-5g§)));
                                                                                                                                             }
                                                                                                                                             §§goto(addr1161);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1127);
                                                                                                                                       }
                                                                                                                                       §§pop();
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          addr1126:
                                                                                                                                          §§goto(addr1127);
                                                                                                                                          §§push(b2Math.§_-Ly§(_loc6_.§_-ZZ§,_loc6_.§_-ZZ§) > _loc16_);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1133);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1126);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1104);
                                                                                                                              }
                                                                                                                              §§goto(addr1126);
                                                                                                                           }
                                                                                                                           §§goto(addr1133);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1107);
                                                                                                               }
                                                                                                               §§goto(addr1127);
                                                                                                            }
                                                                                                            §§goto(addr1155);
                                                                                                         }
                                                                                                         §§goto(addr1101);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1059);
                                                                                       }
                                                                                       §§goto(addr1169);
                                                                                    }
                                                                                    §§goto(addr1037);
                                                                                 }
                                                                                 §§goto(addr1028);
                                                                              }
                                                                              break;
                                                                           }
                                                                           _loc4_ = §§pop();
                                                                           if(_loc18_ || this)
                                                                           {
                                                                              addr1196:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ >= this.§_-Ww§)
                                                                                 {
                                                                                    break loop8;
                                                                                 }
                                                                                 (_loc6_ = this.§_-SV§[_loc4_]).SetAwake(false);
                                                                                 if(_loc18_ || param2)
                                                                                 {
                                                                                    _loc4_++;
                                                                                 }
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr1179);
                                                               }
                                                               §§goto(addr985);
                                                            }
                                                            §§goto(addr1179);
                                                         }
                                                         §§goto(addr1196);
                                                      }
                                                      §§goto(addr994);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr944);
                                             }
                                             §§goto(addr978);
                                             §§goto(addr950);
                                          }
                                          addr1226:
                                          return;
                                          addr912:
                                          _loc4_++;
                                       }
                                    }
                                    §§goto(addr995);
                                 }
                                 §§goto(addr944);
                              }
                              while(true)
                              {
                                 §§push(_loc13_);
                                 if(_loc18_)
                                 {
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc18_ || this)
                                       {
                                          addr908:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc18_)
                                                {
                                                   §§goto(addr924);
                                                }
                                                §§goto(addr995);
                                             }
                                             else
                                             {
                                                §§goto(addr912);
                                             }
                                          }
                                          addr908:
                                       }
                                       break;
                                    }
                                    §§goto(addr936);
                                    addr900:
                                 }
                                 §§goto(addr908);
                              }
                              addr897:
                           }
                           else
                           {
                              §§push(0);
                              if(_loc18_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr995);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           §§push(Boolean(_loc12_));
                           if(Boolean(_loc12_))
                           {
                              if(!(_loc19_ && param2))
                              {
                                 §§pop();
                                 §§goto(addr897);
                              }
                              §§goto(addr900);
                           }
                           §§goto(addr908);
                        }
                        else
                        {
                           _loc14_ = (_loc7_ = this.§_-O2§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
                           if(!(_loc19_ && param1))
                           {
                              §§push(Boolean(_loc13_));
                              if(Boolean(_loc13_))
                              {
                                 if(!(_loc19_ && param2))
                                 {
                                    §§pop();
                                    if(_loc18_ || this)
                                    {
                                       addr867:
                                       _loc13_ = Boolean(_loc14_);
                                       addr866:
                                       if(!_loc18_)
                                       {
                                       }
                                       §§goto(addr872);
                                    }
                                    _loc5_++;
                                    §§goto(addr872);
                                 }
                                 §§goto(addr866);
                              }
                           }
                           §§goto(addr867);
                        }
                     }
                  }
                  break;
               }
               while(true)
               {
                  §§push(this.§_-LT§);
                  if(!_loc19_)
                  {
                     §§goto(addr884);
                  }
                  §§goto(addr916);
               }
            }
            §§goto(addr817);
         }
         §§goto(addr303);
      }
      
      public function §_-4y§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = false;
         var _loc11_:* = false;
         var _loc12_:Boolean = false;
         if(!_loc13_)
         {
            §§push(this.§_-Ul§);
            if(_loc14_)
            {
               §§pop().§_-lc§(param1,this.§_-LO§,this.§_-b7§,this.§_-sB§);
               addr47:
               §§push(this.§_-Ul§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(!_loc13_)
            {
               _loc2_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               §§push(this.§_-LT§);
               if(!(_loc13_ && _loc2_))
               {
                  if(§§pop() < §§pop())
                  {
                     this.§_-O2§[_loc2_].InitVelocityConstraints(param1);
                     if(!(_loc13_ && this))
                     {
                        _loc2_++;
                     }
                     continue;
                  }
                  if(_loc14_ || this)
                  {
                     §§push(0);
                     if(_loc14_)
                     {
                        _loc2_ = §§pop();
                        if(!(_loc13_ && this))
                        {
                           while(true)
                           {
                              §§push(_loc2_);
                              loop2:
                              while(true)
                              {
                                 §§push(param1.§_-yW§);
                                 if(_loc14_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       _loc4_.SolveVelocityConstraints();
                                       §§push(0);
                                       if(_loc13_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       _loc3_ = §§pop();
                                       if(_loc14_ || this)
                                       {
                                          addr527:
                                          loop3:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(!_loc13_)
                                             {
                                                §§push(this.§_-LT§);
                                                if(!(_loc13_ && param1))
                                                {
                                                   break loop0;
                                                }
                                                break loop2;
                                             }
                                             break;
                                             addr128:
                                             while(true)
                                             {
                                                _loc3_++;
                                                continue loop3;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(this.§_-Ww§);
                                             break loop2;
                                          }
                                          addr527:
                                          addr129:
                                       }
                                    }
                                    addr151:
                                    _loc2_ = 0;
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       addr526:
                                       while(true)
                                       {
                                          §§goto(addr527);
                                       }
                                       addr526:
                                    }
                                    addr530:
                                    §§push(0.75);
                                    if(!_loc13_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc5_:* = §§pop();
                                    §§push(0);
                                    if(!(_loc13_ && this))
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc14_)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             addr647:
                                             loop10:
                                             while(true)
                                             {
                                                §§push(param1.§_-Pe§);
                                                loop9:
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      §§push(Boolean(_loc4_.SolvePositionConstraints(_loc5_)));
                                                      if(_loc14_)
                                                      {
                                                         _loc10_ = §§pop();
                                                         §§push(true);
                                                      }
                                                      _loc11_ = §§pop();
                                                      if(_loc14_ || _loc3_)
                                                      {
                                                         §§push(0);
                                                         if(!(_loc14_ || param1))
                                                         {
                                                            continue loop10;
                                                         }
                                                         addr572:
                                                         _loc3_ = §§pop();
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc14_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§push(this.§_-LT§);
                                                               if(_loc13_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(_loc14_)
                                                                  {
                                                                     addr634:
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc14_ || _loc3_)
                                                                     {
                                                                        addr630:
                                                                        §§push(§§pop() && _loc11_);
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        addr650:
                                                                        this.§_-2l§(_loc4_.§_-MT§);
                                                                        break loop9;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr631);
                                                               }
                                                               else
                                                               {
                                                                  _loc12_ = this.§_-O2§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
                                                                  §§push(Boolean(_loc11_));
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc13_ && this))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§pop();
                                                                           §§push(_loc12_);
                                                                           if(!(_loc13_ && _loc3_))
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr634);
                                                                           }
                                                                        }
                                                                        _loc11_ = Boolean(§§pop());
                                                                        _loc3_++;
                                                                        continue;
                                                                     }
                                                                     §§goto(addr630);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr634);
                                                                  }
                                                               }
                                                               §§goto(addr634);
                                                            }
                                                            continue loop10;
                                                            §§goto(addr572);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr650);
                                                }
                                                return;
                                             }
                                          }
                                       }
                                       §§goto(addr573);
                                    }
                                    §§goto(addr647);
                                 }
                                 break;
                              }
                              while(§§pop() < §§pop())
                              {
                                 if((_loc6_ = this.§_-SV§[_loc2_]).§_-ww§() == b2Body.b2_staticBody)
                                 {
                                    if(!_loc13_)
                                    {
                                       addr525:
                                       _loc2_++;
                                    }
                                    else
                                    {
                                       addr403:
                                       §§push(_loc6_.m_sweep);
                                       if(_loc14_)
                                       {
                                          §§push(_loc6_.m_sweep);
                                          if(_loc14_ || _loc2_)
                                          {
                                             §§push(§§pop().a);
                                             if(_loc14_ || this)
                                             {
                                                §§pop().a0 = §§pop();
                                                §§push(_loc6_.m_sweep);
                                                if(!_loc13_)
                                                {
                                                   §§push(§§pop().c);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(_loc6_.m_sweep);
                                                      if(!(_loc13_ && this))
                                                      {
                                                         §§push(§§pop().c);
                                                         if(_loc14_ || this)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc13_)
                                                            {
                                                               §§push(param1.§_-h8§);
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(_loc6_.§_-ZZ§);
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc13_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc14_ || _loc2_)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§push(_loc6_.m_sweep);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    addr485:
                                                                                    §§push(§§pop().c);
                                                                                    §§push(_loc6_.m_sweep.c.y);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       addr502:
                                                                                       §§push(param1.§_-h8§);
                                                                                       if(!(_loc13_ && _loc3_))
                                                                                       {
                                                                                          addr497:
                                                                                          §§push(§§pop() * _loc6_.§_-ZZ§.y);
                                                                                       }
                                                                                       §§pop().y = §§pop() + §§pop();
                                                                                       if(_loc13_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr526);
                                                                                    }
                                                                                    §§goto(addr502);
                                                                                 }
                                                                                 addr507:
                                                                                 §§push(_loc6_.m_sweep.a);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    addr520:
                                                                                    §§push(param1.§_-h8§);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                    }
                                                                                    §§pop().a = §§pop() + §§pop();
                                                                                    _loc6_.§_-Z9§();
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§goto(addr525);
                                                                                    }
                                                                                    §§goto(addr526);
                                                                                 }
                                                                                 §§goto(addr520);
                                                                              }
                                                                              addr505:
                                                                              §§goto(addr507);
                                                                              §§push(_loc6_.m_sweep);
                                                                           }
                                                                           §§goto(addr502);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr497);
                                                            }
                                                            §§goto(addr502);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr485);
                                             }
                                             §§goto(addr520);
                                          }
                                          §§goto(addr507);
                                       }
                                       §§goto(addr485);
                                    }
                                    §§goto(addr526);
                                 }
                                 else
                                 {
                                    §§push(param1.§_-h8§);
                                    if(_loc14_)
                                    {
                                       §§push(_loc6_.§_-ZZ§);
                                       if(_loc14_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc13_ && _loc2_))
                                          {
                                             _loc7_ = §§pop() * §§pop();
                                             if(_loc14_ || _loc3_)
                                             {
                                                §§push(param1.§_-h8§);
                                                if(_loc14_ || _loc2_)
                                                {
                                                   addr213:
                                                   §§push(_loc6_.§_-ZZ§.y);
                                                   if(_loc14_)
                                                   {
                                                      §§push(Number(§§pop() * §§pop()));
                                                      if(!_loc13_)
                                                      {
                                                         _loc8_ = §§pop();
                                                         if(_loc14_ || _loc3_)
                                                         {
                                                            §§push(_loc7_ * _loc7_);
                                                            if(_loc14_ || _loc3_)
                                                            {
                                                               addr238:
                                                               §§push(_loc8_);
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!_loc13_)
                                                                  {
                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                     if(_loc14_ || _loc3_)
                                                                     {
                                                                        addr253:
                                                                        if(§§pop() > b2Settings.b2_maxTranslationSquared)
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(_loc6_.§_-ZZ§);
                                                                              if(_loc14_ || _loc2_)
                                                                              {
                                                                                 §§pop().Normalize();
                                                                                 §§push(_loc6_.§_-ZZ§);
                                                                                 if(!(_loc13_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc6_.§_-ZZ§);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          §§push(b2Settings.b2_maxTranslation);
                                                                                          if(_loc14_ || param1)
                                                                                          {
                                                                                             §§push(param1.§_-0w§);
                                                                                             if(_loc14_ || _loc2_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   addr305:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         addr315:
                                                                                                         §§push(_loc6_.§_-ZZ§);
                                                                                                         §§push(_loc6_.§_-ZZ§.y);
                                                                                                         if(!(_loc13_ && this))
                                                                                                         {
                                                                                                            addr338:
                                                                                                            addr330:
                                                                                                            §§push(b2Settings.b2_maxTranslation);
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               addr334:
                                                                                                               §§push(§§pop() * param1.§_-0w§);
                                                                                                            }
                                                                                                            §§pop().y = §§pop() * §§pop();
                                                                                                            §§push(param1.§_-h8§);
                                                                                                            §§push(_loc6_.m_angularVelocity);
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               addr349:
                                                                                                               _loc9_ = §§pop() * §§pop();
                                                                                                               addr346:
                                                                                                               §§push(_loc9_);
                                                                                                               §§push(_loc9_);
                                                                                                               if(_loc14_ || _loc2_)
                                                                                                               {
                                                                                                                  addr357:
                                                                                                                  if(§§pop() * §§pop() > b2Settings.b2_maxRotationSquared)
                                                                                                                  {
                                                                                                                     addr364:
                                                                                                                     if(_loc6_.m_angularVelocity < 0)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        §§push(b2Settings.b2_maxRotation);
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * param1.§_-0w§);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§pop().m_angularVelocity = §§pop();
                                                                                                                        addr394:
                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                           §§goto(addr403);
                                                                                                                        }
                                                                                                                        §§goto(addr507);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        §§push(b2Settings.b2_maxRotation);
                                                                                                                        if(_loc14_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * param1.§_-0w§);
                                                                                                                        }
                                                                                                                        §§pop().m_angularVelocity = §§pop();
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           §§goto(addr394);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr526);
                                                                                                                  }
                                                                                                                  §§goto(addr394);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr364);
                                                                                                         }
                                                                                                         §§goto(addr338);
                                                                                                      }
                                                                                                      §§goto(addr520);
                                                                                                   }
                                                                                                   §§goto(addr338);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr334);
                                                                                          }
                                                                                          §§goto(addr305);
                                                                                       }
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                    §§goto(addr315);
                                                                                 }
                                                                              }
                                                                              §§goto(addr315);
                                                                           }
                                                                           §§goto(addr394);
                                                                        }
                                                                        §§goto(addr338);
                                                                     }
                                                                     §§goto(addr346);
                                                                  }
                                                                  §§goto(addr349);
                                                               }
                                                               §§goto(addr357);
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                   §§goto(addr364);
                                                }
                                                §§goto(addr349);
                                             }
                                             §§goto(addr505);
                                          }
                                          §§goto(addr253);
                                       }
                                       §§goto(addr213);
                                    }
                                    §§goto(addr238);
                                 }
                              }
                              addr144:
                              _loc2_++;
                           }
                        }
                        §§goto(addr530);
                     }
                     §§goto(addr527);
                  }
                  §§goto(addr128);
               }
               break;
            }
            while(true)
            {
               if(§§pop() >= §§pop())
               {
                  if(_loc14_)
                  {
                     §§goto(addr144);
                  }
                  break;
               }
               this.§_-O2§[_loc3_].SolveVelocityConstraints(param1);
               §§goto(addr128);
               §§goto(addr129);
            }
            §§goto(addr151);
         }
         §§goto(addr47);
      }
      
      public function §_-2l§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(_loc6_ || this)
         {
            if(this.§_-BZ§ == null)
            {
               if(!(_loc7_ && _loc3_))
               {
                  §§goto(addr39);
               }
            }
            var _loc2_:int = 0;
            loop0:
            for(; _loc2_ < this.§_-b7§; _loc2_++)
            {
               _loc3_ = this.§_-LO§[_loc2_];
               _loc4_ = param1[_loc2_];
               if(!_loc7_)
               {
                  §§push(0);
                  if(_loc6_)
                  {
                     _loc5_ = §§pop();
                     addr98:
                     while(true)
                     {
                        §§push(_loc5_);
                     }
                     addr98:
                  }
                  while(true)
                  {
                     if(§§pop() >= _loc4_.§_-Ws§)
                     {
                        if(!(_loc7_ && this))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§push(§_-fX§);
                     if(_loc6_ || _loc3_)
                     {
                        §§pop().§_-WN§[_loc5_] = _loc4_.points[_loc5_].normalImpulse;
                        §§push(§_-fX§);
                     }
                     §§pop().§_-bO§[_loc5_] = _loc4_.points[_loc5_].tangentImpulse;
                     §§goto(addr98);
                  }
                  this.§_-BZ§.PostSolve(_loc3_,§_-fX§);
                  addr109:
                  continue;
               }
               while(true)
               {
                  _loc5_++;
                  if(_loc6_)
                  {
                     §§goto(addr98);
                  }
                  §§goto(addr109);
               }
            }
            return;
         }
         addr39:
      }
      
      public function §_-J2§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            param1.§_-ZU§ = this.§_-Ww§;
         }
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§_-Ww§ + 1;
         _loc3_.§_-Ww§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§_-Ww§;
         this.§_-SV§[_loc2_] = param1;
      }
      
      public function §_-T4§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§_-b7§++;
         this.§_-LO§[_loc2_] = param1;
      }
      
      public function §_-ZD§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§_-LT§++;
         this.§_-O2§[_loc2_] = param1;
      }
   }
}
