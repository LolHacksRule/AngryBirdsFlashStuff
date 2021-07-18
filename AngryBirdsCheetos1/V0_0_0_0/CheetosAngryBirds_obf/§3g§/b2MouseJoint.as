package §3g§
{
   import §&!"§.b2Body;
   import §&!"§.b2TimeStep;
   import §9"§.b2Mat22;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §3Y§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §9!F§:b2Vec2;
      
      private var §-!K§:b2Vec2;
      
      private var §8v§:b2Vec2;
      
      private var §#!&§:b2Mat22;
      
      private var §0I§:b2Vec2;
      
      private var §9Z§:Number;
      
      private var §"g§:Number;
      
      private var §6!L§:Number;
      
      private var §8S§:Number;
      
      private var §;!8§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc4_:b2Mat22 = null;
         if(!(_loc5_ && param1))
         {
            this.§3Y§ = new b2Mat22();
         }
         while(true)
         {
            this.K1 = new b2Mat22();
            loop1:
            for(; !_loc5_; if(!(_loc6_ || param1))
            {
               continue;
            },this.§0I§ = new b2Vec2(),§§goto(addr93))
            {
               this.K2 = new b2Mat22();
               loop2:
               while(true)
               {
                  this.§9!F§ = new b2Vec2();
                  while(true)
                  {
                     this.§-!K§ = new b2Vec2();
                     continue loop2;
                     addr116:
                     loop5:
                     while(_loc6_ || _loc2_)
                     {
                        this.§#!&§ = new b2Mat22();
                        while(true)
                        {
                           if(_loc6_)
                           {
                              continue loop1;
                           }
                           continue loop5;
                           addr65:
                           if(_loc5_ && _loc2_)
                           {
                              continue;
                           }
                           if(false)
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(this.§-!K§);
                                 loop10:
                                 while(true)
                                 {
                                    §§pop().SetV(param1.target);
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(this.§-!K§);
                                          if(_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop10;
                                             }
                                             §§push(§§pop().x);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() - b2internal::;B.m_xf.position.x);
                                                if(!_loc5_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc6_)
                                                   {
                                                      addr50:
                                                      _loc2_ = §§pop();
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      addr58:
                                                      if(_loc5_ && _loc2_)
                                                      {
                                                         while(_loc6_)
                                                         {
                                                            super(param1);
                                                            while(true)
                                                            {
                                                               continue loop9;
                                                            }
                                                            §§goto(addr58);
                                                         }
                                                         continue loop2;
                                                         addr93:
                                                      }
                                                      §§goto(addr65);
                                                   }
                                                   addr167:
                                                   addr185:
                                                   §§push(§§pop() - b2internal::;B.m_xf.position.y);
                                                   if(!_loc5_)
                                                   {
                                                      addr184:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   _loc4_ = b2internal::;B.m_xf.R;
                                                   if(!_loc5_)
                                                   {
                                                      addr353:
                                                      §§push(this.§9!F§);
                                                      §§push(_loc2_);
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         addr348:
                                                         §§push(§§pop() * _loc4_.col1.x + _loc3_ * _loc4_.col1.y);
                                                      }
                                                      §§pop().x = §§pop();
                                                   }
                                                   addr354:
                                                   §§push(this.§9!F§);
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§push(_loc4_.col2.x);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc6_ || this)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           §§push(_loc4_.col2.y);
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr304:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    addr314:
                                                                                    §§pop().y = §§pop() + §§pop();
                                                                                    addr315:
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       this.§9Z§ = param1.§5!-§;
                                                                                       this.§8v§.§^!#§();
                                                                                       this.§"g§ = param1.§5X§;
                                                                                       this.§6!L§ = param1.§@N§;
                                                                                       addr252:
                                                                                       addr246:
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             this.§8S§ = 0;
                                                                                             addr211:
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   this.§;!8§ = 0;
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§goto(addr315);
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                   §§goto(addr211);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr252);
                                                                                          }
                                                                                          §§goto(addr246);
                                                                                       }
                                                                                       addr241:
                                                                                       §§goto(addr241);
                                                                                    }
                                                                                    §§goto(addr354);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr348);
                                                                     }
                                                                     §§goto(addr304);
                                                                  }
                                                                  §§goto(addr353);
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                         §§goto(addr348);
                                                      }
                                                      §§goto(addr314);
                                                   }
                                                   §§goto(addr353);
                                                }
                                                §§goto(addr50);
                                             }
                                             §§goto(addr184);
                                          }
                                          break;
                                       }
                                       §§goto(addr87);
                                    }
                                    addr164:
                                    §§push(§§pop().y);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr167);
                                    }
                                    §§goto(addr185);
                                 }
                              }
                              continue;
                           }
                           §§goto(addr164);
                           §§push(this.§-!K§);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§-!K§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;B.GetWorldPoint(this.§9!F§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || param1)
         {
            §§push(this.§8v§.x);
            if(!(_loc2_ && this))
            {
               addr47:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() * this.§8v§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr47);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §%S§() : b2Vec2
      {
         return this.§-!K§;
      }
      
      public function §8!R§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(b2internal::;B.IsAwake() == false)
            {
               if(!(_loc3_ && _loc2_))
               {
                  b2internal::;B.SetAwake(true);
                  addr69:
                  while(true)
                  {
                  }
                  addr69:
               }
               §§goto(addr69);
            }
            while(true)
            {
               this.§-!K§ = param1;
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr69);
            }
            return;
         }
         §§goto(addr69);
      }
      
      public function §!'§() : Number
      {
         return this.§9Z§;
      }
      
      public function §]4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9Z§ = param1;
         }
      }
      
      public function §3K§() : Number
      {
         return this.§"g§;
      }
      
      public function §?!D§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§"g§ = param1;
         }
      }
      
      public function §,!&§() : Number
      {
         return this.§6!L§;
      }
      
      public function §8!G§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§6!L§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::;B;
         §§push(_loc2_.GetMass());
         if(_loc14_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(_loc14_ || _loc3_)
         {
            §§push(§§pop() * this.§"g§);
            if(!_loc13_)
            {
               addr54:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(2 * _loc3_);
            if(_loc14_)
            {
               §§push(this.§6!L§);
               if(_loc14_ || this)
               {
                  addr83:
                  §§push(§§pop() * §§pop());
                  if(!(_loc13_ && param1))
                  {
                     §§push(_loc4_);
                  }
                  var _loc5_:* = §§pop();
                  §§push(_loc3_);
                  if(!_loc13_)
                  {
                     §§push(_loc4_);
                     if(!_loc13_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc13_)
                        {
                           addr94:
                           §§push(§§pop() * _loc4_);
                           if(!(_loc13_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc6_:* = §§pop();
                        if(_loc14_)
                        {
                           §§push(this);
                           §§push(param1.§%G§);
                           if(_loc14_ || this)
                           {
                              §§push(_loc5_);
                              if(_loc14_)
                              {
                                 §§push(param1.§%G§);
                                 if(_loc14_ || this)
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§pop().§;!8§ = §§pop();
                        }
                        while(true)
                        {
                           while(true)
                           {
                              §§push(this);
                              if(_loc14_ || this)
                              {
                                 §§push(this.§;!8§);
                                 if(!(_loc13_ && param1))
                                 {
                                    if(§§pop() != 0)
                                    {
                                       addr164:
                                       §§push(1 / this.§;!8§);
                                       if(!(_loc13_ && _loc2_))
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc14_)
                                          {
                                          }
                                          addr183:
                                          §§pop().§;!8§ = §§pop();
                                          do
                                          {
                                             §§push(this);
                                             §§push(param1.§%G§);
                                             if(_loc14_)
                                             {
                                                §§push(_loc6_);
                                                if(!(_loc13_ && this))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc13_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(this.§;!8§);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          while(§§pop().§8S§ = §§pop(), !(_loc14_ || _loc3_));
                                          
                                          if(!_loc14_)
                                          {
                                             break;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          _loc7_ = _loc2_.m_xf.R;
                                          §§push(this.§9!F§.x);
                                          if(!(_loc13_ && _loc2_))
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                             if(!_loc13_)
                                             {
                                                addr235:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc8_:* = §§pop();
                                             §§push(this.§9!F§.y);
                                             if(!_loc13_)
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                if(!_loc13_)
                                                {
                                                   addr249:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc9_:* = §§pop();
                                                §§push(_loc7_.col1.x);
                                                if(!(_loc13_ && _loc2_))
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc14_ || _loc2_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc14_)
                                                      {
                                                         addr272:
                                                         §§push(_loc7_.col2.x);
                                                         if(!_loc13_)
                                                         {
                                                            addr277:
                                                            §§push(§§pop() * _loc9_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc14_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc10_:* = §§pop();
                                                      if(_loc14_)
                                                      {
                                                         §§push(_loc7_.col1);
                                                         while(true)
                                                         {
                                                            §§push(§§pop().y);
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_.col2.y);
                                                                     if(!_loc13_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * _loc9_);
                                                                        }
                                                                        addr1057:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc14_ || this)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc10_);
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr1043:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    addr1044:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.§]m§);
                                                                                       while(_loc14_)
                                                                                       {
                                                                                          continue loop5;
                                                                                          if(_loc14_ || _loc2_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr1057);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr982);
                                                   }
                                                   §§goto(addr277);
                                                }
                                                §§goto(addr272);
                                             }
                                             §§goto(addr249);
                                          }
                                          §§goto(addr235);
                                       }
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(_loc14_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr164);
                           }
                        }
                     }
                  }
                  §§goto(addr94);
               }
               §§push(§§pop() * §§pop());
               if(_loc14_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr83);
         }
         §§goto(addr54);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::;B;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§9!F§.x);
         if(!_loc15_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!(_loc15_ && _loc3_))
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(this.§9!F§.y);
            if(!(_loc15_ && _loc2_))
            {
               §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
               if(!_loc15_)
               {
                  addr68:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(!(_loc15_ && _loc2_))
               {
                  §§push(_loc3_.col1);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().x);
                     if(_loc16_)
                     {
                        §§push(_loc6_);
                        if(!(_loc15_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           loop1:
                           while(true)
                           {
                              §§push(_loc3_.col2);
                              loop2:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 if(!_loc15_)
                                 {
                                    §§push(_loc7_);
                                    if(_loc16_ || param1)
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop3:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop4:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr200:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                loop6:
                                                while(true)
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.col1);
                                                      if(_loc15_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().y);
                                                      if(!_loc15_)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(_loc6_);
                                                         if(!(_loc15_ && _loc2_))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc16_ || _loc2_)
                                                            {
                                                               §§push(_loc3_.col2);
                                                               if(_loc15_ && _loc2_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§push(§§pop().y);
                                                               if(_loc16_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                            }
                                                            addr235:
                                                            var _loc8_:* = §§pop();
                                                            §§push(_loc2_.§%=§.y);
                                                            if(!(_loc15_ && _loc2_))
                                                            {
                                                               §§push(_loc2_.m_angularVelocity);
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(§§pop() * _loc6_);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc16_ || _loc3_)
                                                               {
                                                                  addr260:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc9_:* = §§pop();
                                                               _loc3_ = this.§#!&§;
                                                               if(!(_loc15_ && _loc3_))
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!(_loc15_ && _loc2_))
                                                                  {
                                                                     §§push(this.§8S§);
                                                                     if(!(_loc15_ && _loc2_))
                                                                     {
                                                                        §§push(this.§0I§);
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc15_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc15_ && this))
                                                                                 {
                                                                                    §§push(this.§;!8§);
                                                                                    if(_loc16_ || _loc2_)
                                                                                    {
                                                                                       §§push(this.§8v§);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc15_ && this))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc16_ || this)
                                                                                             {
                                                                                                addr342:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc15_ && _loc2_))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      if(_loc16_ || _loc3_)
                                                                                                      {
                                                                                                         addr361:
                                                                                                         §§push(_loc9_);
                                                                                                         if(_loc16_ || param1)
                                                                                                         {
                                                                                                            §§push(this.§8S§);
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               addr375:
                                                                                                               §§push(this.§0I§.y);
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        §§push(this.§;!8§);
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           addr390:
                                                                                                                           §§push(this.§8v§.y);
                                                                                                                           if(_loc16_ || this)
                                                                                                                           {
                                                                                                                              addr398:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 addr401:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc16_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr409:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!(_loc15_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr427:
                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                       addr428:
                                                                                                                                       §§push(_loc3_.col1.x);
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          addr433:
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          if(!(_loc15_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr441:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc16_ || this)
                                                                                                                                             {
                                                                                                                                                addr449:
                                                                                                                                                §§push(_loc3_.col2.x);
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   addr454:
                                                                                                                                                   §§push(§§pop() * _loc5_);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!(_loc15_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr464:
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      addr467:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr467);
                                                                                                                                          }
                                                                                                                                          §§goto(addr454);
                                                                                                                                       }
                                                                                                                                       var _loc10_:* = §§pop();
                                                                                                                                       §§push(_loc3_.col1.y);
                                                                                                                                       if(!(_loc15_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc16_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.col2.y);
                                                                                                                                                if(_loc16_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr500:
                                                                                                                                                   §§push(§§pop() * _loc5_);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                   if(!(_loc15_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr513:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             var _loc11_:* = §§pop();
                                                                                                                                             §§push(this.§8v§.x);
                                                                                                                                             if(!(_loc15_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             var _loc12_:* = §§pop();
                                                                                                                                             §§push(this.§8v§.y);
                                                                                                                                             if(!(_loc15_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             var _loc13_:* = §§pop();
                                                                                                                                             if(_loc16_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§8v§);
                                                                                                                                                if(_loc16_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§8v§);
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!(_loc15_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  addr580:
                                                                                                                                                                  §§push(this.§8v§);
                                                                                                                                                                  §§push(this.§8v§.y);
                                                                                                                                                                  if(!(_loc15_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr590:
                                                                                                                                                                     §§pop().y = §§pop() + _loc11_;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr590);
                                                                                                                                                               }
                                                                                                                                                               §§push(param1.§%G§);
                                                                                                                                                               if(!(_loc15_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * this.§9Z§);
                                                                                                                                                                  if(!(_loc15_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr610:
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  var _loc14_:* = §§pop();
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§8v§);
                                                                                                                                                                     loop10:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().§?a§());
                                                                                                                                                                        addr817:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                           addr818:
                                                                                                                                                                           loop12:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * _loc14_);
                                                                                                                                                                              loop13:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§8v§);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                          if(!(_loc15_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() / this.§8v§.§8!%§());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§?Q§(§§pop());
                                                                                                                                                                                          addr752:
                                                                                                                                                                                          if(!(_loc16_ || _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(!(_loc15_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr775:
                                                                                                                                                                                                      if(_loc16_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr783:
                                                                                                                                                                                                         _loc11_ = Number(§§pop());
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc2_.§%=§);
                                                                                                                                                                                                            loop23:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc2_.§%=§);
                                                                                                                                                                                                               addr723:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc2_.§]m§);
                                                                                                                                                                                                                     if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr736:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr737:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr738:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                     addr739:
                                                                                                                                                                                                                     loop28:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop23;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr848:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr785:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§8v§);
                                                                                                                                                                                                                              continue loop10;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop28;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr811);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr783);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(!_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc16_ || this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop12;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr811);
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                                addr801:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr812);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr783);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr848);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr785);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr717);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr610);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr590);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr580);
                                                                                                                                          }
                                                                                                                                          §§goto(addr500);
                                                                                                                                       }
                                                                                                                                       §§goto(addr513);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr464);
                                                                                                                              }
                                                                                                                              §§goto(addr441);
                                                                                                                           }
                                                                                                                           §§goto(addr454);
                                                                                                                        }
                                                                                                                        §§goto(addr401);
                                                                                                                     }
                                                                                                                     §§goto(addr409);
                                                                                                                  }
                                                                                                                  §§goto(addr454);
                                                                                                               }
                                                                                                               §§goto(addr398);
                                                                                                            }
                                                                                                            §§goto(addr401);
                                                                                                         }
                                                                                                         §§goto(addr433);
                                                                                                      }
                                                                                                      §§goto(addr428);
                                                                                                   }
                                                                                                   §§goto(addr449);
                                                                                                }
                                                                                                §§goto(addr409);
                                                                                             }
                                                                                             §§goto(addr401);
                                                                                          }
                                                                                          §§goto(addr398);
                                                                                       }
                                                                                       §§goto(addr390);
                                                                                    }
                                                                                    §§goto(addr342);
                                                                                 }
                                                                                 §§goto(addr467);
                                                                              }
                                                                              §§goto(addr342);
                                                                           }
                                                                           §§goto(addr454);
                                                                        }
                                                                        §§goto(addr375);
                                                                     }
                                                                     §§goto(addr390);
                                                                  }
                                                                  §§goto(addr427);
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                            §§goto(addr260);
                                                         }
                                                         addr216:
                                                         §§push(-§§pop());
                                                         if(!(_loc15_ && _loc3_))
                                                         {
                                                            addr224:
                                                            §§push(§§pop() * _loc7_);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr166:
                                                         if(_loc15_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         _loc7_ = §§pop();
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc16_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc15_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  if(!_loc16_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!(_loc16_ || this))
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     §§push(_loc2_.§%=§.x);
                                                                     if(_loc16_ || _loc3_)
                                                                     {
                                                                        break loop8;
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                               }
                                                               addr234:
                                                               §§goto(addr235);
                                                               §§push(Number(§§pop()));
                                                            }
                                                            break;
                                                         }
                                                         §§push(_loc2_.m_angularVelocity);
                                                         if(_loc16_)
                                                         {
                                                            §§goto(addr216);
                                                         }
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         §§goto(addr234);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr224);
                                 }
                              }
                           }
                        }
                        §§goto(addr224);
                     }
                     §§goto(addr235);
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr68);
         }
         §§goto(addr49);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
