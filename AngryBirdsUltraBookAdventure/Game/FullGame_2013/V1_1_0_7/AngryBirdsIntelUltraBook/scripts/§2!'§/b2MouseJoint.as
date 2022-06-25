package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Mat22;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §+!K§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §1!,§:b2Vec2;
      
      private var §]!A§:b2Vec2;
      
      private var §&""§:b2Vec2;
      
      private var §"X§:b2Mat22;
      
      private var §&!w§:b2Vec2;
      
      private var §>!z§:Number;
      
      private var §=§:Number;
      
      private var §#!d§:Number;
      
      private var §[^§:Number;
      
      private var §4z§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc4_:b2Mat22 = null;
         if(_loc5_)
         {
            this.§+!K§ = new b2Mat22();
            while(true)
            {
               this.K1 = new b2Mat22();
               addr150:
               while(true)
               {
                  this.K2 = new b2Mat22();
               }
               addr52:
               if(!(_loc5_ || _loc3_))
               {
                  continue;
               }
               if(false)
               {
                  loop9:
                  while(true)
                  {
                     §§push(this.§]!A§);
                     if(!(_loc6_ && param1))
                     {
                        §§pop().SetV(param1.target);
                        while(true)
                        {
                           if(!(_loc6_ && this))
                           {
                              if(!_loc6_)
                              {
                                 addr83:
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push(this.§]!A§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() - b2internal::4!d.m_xf.position.x);
                                          if(!_loc6_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc6_)
                                             {
                                                _loc2_ = §§pop();
                                                if(!_loc5_)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc5_ || _loc3_))
                                                {
                                                   break loop9;
                                                }
                                                §§goto(addr52);
                                             }
                                             addr184:
                                             var _loc3_:Number = §§pop();
                                             _loc4_ = b2internal::4!d.m_xf.R;
                                             addr183:
                                             if(!_loc6_)
                                             {
                                                addr352:
                                                addr327:
                                                §§push(this.§1!,§);
                                                §§push(_loc2_);
                                                if(_loc5_ || param1)
                                                {
                                                   addr338:
                                                   §§push(§§pop() * _loc4_.col1.x);
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr347:
                                                      §§push(§§pop() + _loc3_ * _loc4_.col1.y);
                                                   }
                                                }
                                                §§pop().x = §§pop();
                                                addr353:
                                                §§push(this.§1!,§);
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§push(_loc4_.col2.x);
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            addr285:
                                                            §§push(_loc3_);
                                                            if(_loc5_)
                                                            {
                                                               §§push(_loc4_.col2.y);
                                                               if(!_loc6_)
                                                               {
                                                                  addr294:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           addr306:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              §§pop().y = §§pop();
                                                                              this.§>!z§ = param1.§6""§;
                                                                              this.§&""§.§+J§();
                                                                              addr253:
                                                                              if(_loc5_)
                                                                              {
                                                                                 this.§=§ = param1.§'S§;
                                                                                 addr226:
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       this.§#!d§ = param1.§&!u§;
                                                                                       addr218:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          this.§[^§ = 0;
                                                                                          addr210:
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             this.§4z§ = 0;
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§goto(addr218);
                                                                                                }
                                                                                                return;
                                                                                                addr205:
                                                                                             }
                                                                                             §§goto(addr210);
                                                                                          }
                                                                                          §§goto(addr226);
                                                                                       }
                                                                                       §§goto(addr253);
                                                                                    }
                                                                                    §§goto(addr353);
                                                                                 }
                                                                                 §§goto(addr253);
                                                                              }
                                                                              addr314:
                                                                              §§goto(addr314);
                                                                           }
                                                                           §§goto(addr352);
                                                                        }
                                                                        §§goto(addr338);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr347);
                                                            }
                                                            §§goto(addr294);
                                                         }
                                                         §§goto(addr306);
                                                      }
                                                      §§goto(addr294);
                                                   }
                                                   §§goto(addr285);
                                                }
                                                §§goto(addr327);
                                             }
                                             §§goto(addr205);
                                          }
                                          addr176:
                                          §§push(§§pop() - b2internal::4!d.m_xf.position.y);
                                          if(_loc5_)
                                          {
                                             §§goto(addr183);
                                          }
                                       }
                                       §§goto(addr184);
                                    }
                                    addr158:
                                    §§push(§§pop().y);
                                    if(_loc5_ || this)
                                    {
                                       §§goto(addr176);
                                    }
                                    §§goto(addr184);
                                 }
                                 break;
                              }
                              while(_loc5_)
                              {
                                 this.§"X§ = new b2Mat22();
                                 break loop9;
                              }
                              while(true)
                              {
                                 this.§]!A§ = new b2Vec2();
                                 loop4:
                                 while(true)
                                 {
                                    this.§&""§ = new b2Vec2();
                                    §§goto(addr124);
                                    addr103:
                                    while(true)
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          if(_loc6_)
                                          {
                                             break;
                                             addr95:
                                          }
                                          super(param1);
                                          while(_loc5_)
                                          {
                                             continue loop9;
                                          }
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr150);
                                 }
                              }
                              addr124:
                              addr138:
                           }
                           §§goto(addr95);
                        }
                        while(true)
                        {
                           this.§1!,§ = new b2Vec2();
                           §§goto(addr138);
                           §§goto(addr83);
                        }
                        addr144:
                     }
                     §§goto(addr158);
                  }
                  while(true)
                  {
                     this.§&!w§ = new b2Vec2();
                     §§goto(addr103);
                     §§goto(addr45);
                  }
               }
               §§goto(addr158);
               §§push(this.§]!A§);
            }
         }
         §§goto(addr144);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§]!A§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4!d.GetWorldPoint(this.§1!,§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§&""§.x);
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr41);
            }
            §§goto(addr49);
         }
         addr41:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            addr49:
            §§push(§§pop() * this.§&""§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §0" §() : b2Vec2
      {
         return this.§]!A§;
      }
      
      public function §^!Z§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(b2internal::4!d.IsAwake() == false)
            {
               while(true)
               {
                  b2internal::4!d.SetAwake(true);
                  addr59:
                  while(true)
                  {
                  }
                  addr44:
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  return;
                  addr51:
               }
            }
            while(true)
            {
               this.§]!A§ = param1;
               if(!(_loc2_ || param1))
               {
                  continue;
               }
               §§goto(addr44);
            }
            §§goto(addr51);
         }
         §§goto(addr59);
      }
      
      public function §=!3§() : Number
      {
         return this.§>!z§;
      }
      
      public function §1!1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>!z§ = param1;
         }
      }
      
      public function §!K§() : Number
      {
         return this.§=§;
      }
      
      public function §3!D§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§=§ = param1;
         }
      }
      
      public function §?!Y§() : Number
      {
         return this.§#!d§;
      }
      
      public function §7!F§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#!d§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal::4!d;
         §§push(_loc2_.GetMass());
         if(_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(!_loc13_)
         {
            §§push(§§pop() * this.§=§);
            if(!(_loc13_ && _loc2_))
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(2 * _loc3_);
            if(!(_loc13_ && _loc2_))
            {
               §§push(this.§#!d§);
               if(!_loc13_)
               {
                  addr83:
                  §§push(§§pop() * §§pop());
                  if(_loc14_ || param1)
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
                        if(!(_loc13_ && this))
                        {
                           addr99:
                           §§push(§§pop() * _loc4_);
                           if(!_loc13_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc6_:* = §§pop();
                        if(!_loc13_)
                        {
                           §§push(this);
                           §§push(param1.§?!C§);
                           if(_loc14_ || this)
                           {
                              §§push(_loc5_);
                              if(_loc14_ || _loc2_)
                              {
                                 §§push(param1.§?!C§);
                                 if(!(_loc13_ && param1))
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§pop().§4z§ = §§pop();
                        }
                        while(true)
                        {
                           while(true)
                           {
                              §§push(this);
                              if(_loc14_)
                              {
                                 §§push(this.§4z§);
                                 if(_loc14_)
                                 {
                                    if(§§pop() != 0)
                                    {
                                       addr159:
                                       §§push(1 / this.§4z§);
                                       if(!(_loc13_ && _loc2_))
                                       {
                                          addr170:
                                          §§push(Number(§§pop()));
                                          if(_loc13_ && this)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr187:
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(!(_loc13_ && param1))
                                       {
                                          §§goto(addr187);
                                       }
                                    }
                                    §§pop().§4z§ = §§pop();
                                    do
                                    {
                                       §§push(this);
                                       §§push(param1.§?!C§);
                                       if(!(_loc13_ && param1))
                                       {
                                          §§push(_loc6_);
                                          if(!(_loc13_ && _loc3_))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc14_ || param1))
                                             {
                                                continue;
                                             }
                                             §§push(this.§4z§);
                                          }
                                          §§push(§§pop() * §§pop());
                                       }
                                    }
                                    while(§§pop().§[^§ = §§pop(), _loc13_ && this);
                                    
                                    if(_loc13_)
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                    _loc7_ = _loc2_.m_xf.R;
                                    §§push(this.§1!,§.x);
                                    if(_loc14_ || _loc2_)
                                    {
                                       §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                       if(_loc14_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(this.§1!,§.y);
                                    if(_loc14_)
                                    {
                                       §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                       if(!_loc13_)
                                       {
                                          addr264:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc9_:* = §§pop();
                                       §§push(_loc7_.col1.x);
                                       if(!(_loc13_ && _loc3_))
                                       {
                                          §§push(_loc8_);
                                          if(_loc14_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc13_)
                                             {
                                                §§push(_loc7_.col2.x);
                                                if(_loc14_ || _loc2_)
                                                {
                                                   addr292:
                                                   §§push(§§pop() * _loc9_);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc14_)
                                                {
                                                   addr297:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc10_:* = §§pop();
                                             if(_loc14_ || _loc3_)
                                             {
                                                §§push(_loc7_.col1);
                                                while(true)
                                                {
                                                   §§push(§§pop().y);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      if(_loc14_ || param1)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc14_ || this)
                                                         {
                                                            §§push(_loc7_.col2.y);
                                                            if(_loc14_ || _loc3_)
                                                            {
                                                               addr1049:
                                                               §§push(§§pop() * _loc9_);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
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
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.§3!q§);
                                                                           if(_loc14_ || _loc3_)
                                                                           {
                                                                              if(!(_loc14_ || _loc3_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           loop11:
                                                                           while(!_loc13_)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              while(_loc14_)
                                                                              {
                                                                                 §§push(_loc2_.§2!1§);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 _loc12_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.K1);
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().col1);
                                                                                       addr962:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          addr963:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             addr964:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.K1);
                                                                                                continue loop14;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1049);
                                                   }
                                                }
                                             }
                                             §§goto(addr545);
                                          }
                                          §§goto(addr292);
                                       }
                                       §§goto(addr297);
                                    }
                                    §§goto(addr264);
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr159);
                           }
                        }
                     }
                  }
                  §§goto(addr99);
               }
               §§push(§§pop() * §§pop());
               if(!(_loc13_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr83);
         }
         §§goto(addr49);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::4!d;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§1!,§.x);
         if(!_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc15_ || this)
            {
               addr48:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(this.§1!,§.y);
            if(!(_loc16_ && param1))
            {
               §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
               if(!(_loc16_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            if(_loc15_)
            {
               §§push(_loc3_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  loop1:
                  while(true)
                  {
                     §§push(_loc6_);
                     if(!_loc16_)
                     {
                        §§push(§§pop() * §§pop());
                        loop2:
                        while(true)
                        {
                           §§push(_loc3_.col2);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(_loc15_)
                              {
                                 §§push(_loc7_);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop5:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop6:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(_loc3_.col1);
                                                   if(_loc16_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(§§pop().y);
                                                   if(_loc15_ || param1)
                                                   {
                                                      §§push(_loc6_);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc16_)
                                                         {
                                                            addr189:
                                                            _loc7_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc16_ && param1)
                                                               {
                                                                  break;
                                                               }
                                                               if(!(_loc16_ && _loc2_))
                                                               {
                                                                  continue loop2;
                                                               }
                                                               continue loop6;
                                                               addr103:
                                                               _loc6_ = §§pop();
                                                               if(!(_loc15_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc16_ && _loc3_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  addr249:
                                                                  addr249:
                                                                  addr249:
                                                                  addr249:
                                                                  §§push(_loc2_.§%!<§.x);
                                                                  if(!(_loc16_ && _loc3_))
                                                                  {
                                                                     §§push(_loc2_.m_angularVelocity);
                                                                     if(!(_loc16_ && _loc3_))
                                                                     {
                                                                        addr230:
                                                                        §§push(-§§pop());
                                                                        if(!(_loc16_ && _loc3_))
                                                                        {
                                                                           addr238:
                                                                           §§push(§§pop() * _loc7_);
                                                                           break loop8;
                                                                        }
                                                                        break loop8;
                                                                     }
                                                                     break loop8;
                                                                  }
                                                                  var _loc8_:* = §§pop();
                                                                  §§push(_loc2_.§%!<§.y);
                                                                  if(!(_loc16_ && param1))
                                                                  {
                                                                     §§push(_loc2_.m_angularVelocity);
                                                                     if(!(_loc16_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() * _loc6_);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc16_ && _loc2_))
                                                                     {
                                                                        addr279:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc9_:* = §§pop();
                                                                     _loc3_ = this.§"X§;
                                                                     if(!(_loc16_ && _loc3_))
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(!(_loc16_ && _loc3_))
                                                                        {
                                                                           §§push(this.§[^§);
                                                                           if(!(_loc16_ && _loc2_))
                                                                           {
                                                                              §§push(this.§&!w§);
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc15_ || _loc2_)
                                                                                       {
                                                                                          §§push(this.§4z§);
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             addr336:
                                                                                             §§push(this.§&""§);
                                                                                             if(!(_loc16_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   addr348:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc16_ && this))
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            if(!(_loc16_ && _loc2_))
                                                                                                            {
                                                                                                               addr370:
                                                                                                               §§push(_loc9_);
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  §§push(this.§[^§);
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     addr379:
                                                                                                                     §§push(this.§&!w§.y);
                                                                                                                     if(_loc15_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           addr390:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              addr393:
                                                                                                                              §§push(this.§4z§);
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 addr407:
                                                                                                                                 §§push(this.§&""§.y);
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    addr412:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             addr421:
                                                                                                                                             _loc5_ = §§pop();
                                                                                                                                             addr422:
                                                                                                                                             §§push(_loc3_.col1.x);
                                                                                                                                             if(!(_loc16_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                if(_loc15_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr440:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      addr443:
                                                                                                                                                      §§push(_loc3_.col2.x);
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                         addr450:
                                                                                                                                                         §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                                                         if(_loc15_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr458:
                                                                                                                                                            §§push(-§§pop());
                                                                                                                                                            if(_loc16_ && _loc2_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr467:
                                                                                                                                                            var _loc10_:* = §§pop();
                                                                                                                                                            §§push(_loc3_.col1.y);
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc15_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.col2.y);
                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        addr489:
                                                                                                                                                                        §§push(§§pop() * _loc5_);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           addr498:
                                                                                                                                                                           var _loc11_:* = Number(§§pop());
                                                                                                                                                                           §§push(this.§&""§.x);
                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           var _loc12_:* = §§pop();
                                                                                                                                                                           §§push(this.§&""§.y);
                                                                                                                                                                           if(_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           var _loc13_:* = §§pop();
                                                                                                                                                                           if(!(_loc16_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§&""§);
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§&""§);
                                                                                                                                                                                 if(_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    if(!(_loc16_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc10_);
                                                                                                                                                                                       if(!(_loc16_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(_loc15_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                             if(_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr559:
                                                                                                                                                                                                §§push(this.§&""§);
                                                                                                                                                                                                §§push(this.§&""§.y);
                                                                                                                                                                                                if(_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr564:
                                                                                                                                                                                                   §§pop().y = §§pop() + _loc11_;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr564);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(param1.§?!C§);
                                                                                                                                                                                             if(!(_loc16_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * this.§>!z§);
                                                                                                                                                                                                if(!(_loc16_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             var _loc14_:* = §§pop();
                                                                                                                                                                                             if(!_loc16_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§&""§);
                                                                                                                                                                                                loop11:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().§%!]§());
                                                                                                                                                                                                   loop12:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                      loop13:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * _loc14_);
                                                                                                                                                                                                         loop14:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§&""§);
                                                                                                                                                                                                                  addr814:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                                                                     if(!(_loc16_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() / this.§&""§.§,!t§());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().§9""§(§§pop());
                                                                                                                                                                                                                     addr827:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr812:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§&""§);
                                                                                                                                                                                                               loop19:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                                                                        addr770:
                                                                                                                                                                                                                        while(_loc15_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc16_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr785:
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              while(_loc15_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                                                                                                                    continue loop19;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc16_ && _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                                                                                                                 loop25:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc2_.§%!<§);
                                                                                                                                                                                                                                    loop26:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc2_.§%!<§);
                                                                                                                                                                                                                                       addr703:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                                                                          addr704:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc2_.§3!q§);
                                                                                                                                                                                                                                             if(!(_loc16_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc10_);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   addr675:
                                                                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                                                                   if(!(_loc15_ || param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!_loc16_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr687:
                                                                                                                                                                                                                                                      §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc16_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop19;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc15_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                                                                                                                            §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                                                                            if(!_loc16_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc2_.§2!1§);
                                                                                                                                                                                                                                                               if(_loc15_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr624:
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr617:
                                                                                                                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                                                                                                                           if(_loc15_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr620:
                                                                                                                                                                                                                                                                              §§push(§§pop() * _loc10_);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc15_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop25;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop26;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr620);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr617);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr624);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr812);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr827);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr715:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         addr716:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr715:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr714:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr715);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop12;
                                                                                                                                                                                                                              addr785:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop13;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr726:
                                                                                                                                                                                                                        continue loop14;
                                                                                                                                                                                                                        if(!(_loc15_ || this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                           if(_loc15_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr744:
                                                                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr747);
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr803);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr747);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr770);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr814);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop11;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr639);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr564);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr559);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr498);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr489);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr498);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr450);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr467);
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                §§goto(addr450);
                                                                                                                                             }
                                                                                                                                             §§goto(addr467);
                                                                                                                                          }
                                                                                                                                          §§goto(addr443);
                                                                                                                                       }
                                                                                                                                       §§goto(addr458);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr450);
                                                                                                                           }
                                                                                                                           §§goto(addr443);
                                                                                                                        }
                                                                                                                        §§goto(addr407);
                                                                                                                     }
                                                                                                                     §§goto(addr412);
                                                                                                                  }
                                                                                                                  §§goto(addr390);
                                                                                                               }
                                                                                                               §§goto(addr393);
                                                                                                            }
                                                                                                            §§goto(addr422);
                                                                                                         }
                                                                                                         §§goto(addr393);
                                                                                                      }
                                                                                                      §§goto(addr443);
                                                                                                   }
                                                                                                   §§goto(addr407);
                                                                                                }
                                                                                                §§goto(addr450);
                                                                                             }
                                                                                             §§goto(addr407);
                                                                                          }
                                                                                          §§goto(addr390);
                                                                                       }
                                                                                       §§goto(addr421);
                                                                                    }
                                                                                    §§goto(addr440);
                                                                                 }
                                                                                 §§goto(addr348);
                                                                              }
                                                                              §§goto(addr379);
                                                                           }
                                                                           §§goto(addr336);
                                                                        }
                                                                        §§goto(addr443);
                                                                     }
                                                                     §§goto(addr370);
                                                                  }
                                                                  §§goto(addr279);
                                                               }
                                                            }
                                                            addr248:
                                                            §§goto(addr249);
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   if(_loc16_ && _loc2_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(_loc16_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(_loc3_.col2);
                                                   if(_loc16_ && _loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(§§pop().y);
                                                   if(!_loc16_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§goto(addr238);
                                                }
                                                addr240:
                                                §§push(§§pop() + §§pop());
                                                if(_loc15_ || _loc3_)
                                                {
                                                   §§goto(addr248);
                                                }
                                                §§goto(addr249);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr238);
                           }
                        }
                     }
                     §§goto(addr240);
                  }
               }
            }
            §§goto(addr118);
         }
         §§goto(addr48);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
