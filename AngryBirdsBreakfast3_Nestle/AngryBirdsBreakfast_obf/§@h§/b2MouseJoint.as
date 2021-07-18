package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Mat22;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §,e§:b2Vec2;
      
      private var §]g§:b2Vec2;
      
      private var §6!h§:b2Vec2;
      
      private var §'q§:b2Mat22;
      
      private var §!!,§:b2Vec2;
      
      private var §!]§:Number;
      
      private var §@@§:Number;
      
      private var §`!X§:Number;
      
      private var § "§:Number;
      
      private var §]!7§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         if(!_loc6_)
         {
            this.K = new b2Mat22();
            loop0:
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               while(true)
               {
                  this.K2 = new b2Mat22();
                  loop2:
                  for(; !_loc6_; while(_loc5_ || _loc3_)
                  {
                     if(_loc5_)
                     {
                        this.§6!h§ = new b2Vec2();
                        while(_loc5_)
                        {
                           this.§'q§ = new b2Mat22();
                           while(true)
                           {
                              this.§!!,§ = new b2Vec2();
                              addr104:
                              while(_loc5_)
                              {
                              }
                           }
                        }
                        continue;
                        addr118:
                     }
                     continue loop1;
                  })
                  {
                     this.§,e§ = new b2Vec2();
                     while(true)
                     {
                        this.§]g§ = new b2Vec2();
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            super(param1);
            loop9:
            while(true)
            {
               addr71:
               while(true)
               {
                  §§push(this.§]g§);
                  if(_loc5_ || _loc2_)
                  {
                     §§pop().SetV(param1.target);
                     continue loop9;
                  }
                  addr163:
                  §§push(§§pop().y);
                  if(_loc5_ || _loc3_)
                  {
                     addr189:
                     §§push(§§pop() - b2internal::[!n.m_xf.position.y);
                     if(!_loc6_)
                     {
                        addr188:
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     _loc4_ = b2internal::[!n.m_xf.R;
                     if(_loc5_ || this)
                     {
                        addr350:
                        addr354:
                        addr353:
                        addr371:
                        addr372:
                        addr349:
                        §§push(this.§,e§);
                        §§push(_loc2_ * _loc4_.col1.x);
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           addr370:
                           §§push(§§pop() * _loc4_.col1.y);
                        }
                        §§pop().x = §§pop() + §§pop();
                        addr373:
                        §§push(this.§,e§);
                        if(_loc5_ || this)
                        {
                           §§push(_loc2_);
                           if(!(_loc6_ && _loc3_))
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(_loc4_.col2.x);
                                 if(_loc5_ || this)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§push(_loc3_);
                                             if(_loc5_)
                                             {
                                                addr324:
                                                §§push(_loc4_.col2.y);
                                                if(_loc5_ || this)
                                                {
                                                   addr335:
                                                   §§push(§§pop() + §§pop() * §§pop());
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§pop().y = §§pop();
                                                         this.§!]§ = param1.§6g§;
                                                         addr266:
                                                         addr346:
                                                         if(_loc5_)
                                                         {
                                                            this.§6!h§.§>![§();
                                                            this.§@@§ = param1.§<!f§;
                                                            addr253:
                                                            addr260:
                                                            if(_loc5_)
                                                            {
                                                               this.§`!X§ = param1.dampingRatio;
                                                               this.§ "§ = 0;
                                                               addr232:
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     this.§]!7§ = 0;
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(!(_loc5_ || param1))
                                                                           {
                                                                              §§goto(addr266);
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr253);
                                                                     }
                                                                     §§goto(addr232);
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               addr247:
                                                               §§goto(addr247);
                                                            }
                                                            §§goto(addr346);
                                                            addr268:
                                                         }
                                                         §§goto(addr373);
                                                      }
                                                      §§goto(addr350);
                                                   }
                                                   §§goto(addr354);
                                                }
                                                §§goto(addr370);
                                             }
                                          }
                                          §§goto(addr335);
                                       }
                                       §§goto(addr353);
                                    }
                                    §§goto(addr371);
                                 }
                                 §§goto(addr324);
                              }
                              §§goto(addr372);
                           }
                           §§goto(addr335);
                        }
                        §§goto(addr349);
                     }
                     §§goto(addr268);
                  }
                  §§goto(addr188);
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§]g§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!n.GetWorldPoint(this.§,e§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§6!h§.x);
            if(_loc3_)
            {
               addr37:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() * this.§6!h§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr37);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §^!'§() : b2Vec2
      {
         return this.§]g§;
      }
      
      public function §"+§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(b2internal::[!n.IsAwake() == false)
            {
               if(_loc2_ || this)
               {
                  b2internal::[!n.SetAwake(true);
               }
               while(true)
               {
               }
               addr69:
            }
            while(true)
            {
               this.§]g§ = param1;
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr69);
            }
         }
      }
      
      public function §,!B§() : Number
      {
         return this.§!]§;
      }
      
      public function §"j§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§!]§ = param1;
         }
      }
      
      public function §@!9§() : Number
      {
         return this.§@@§;
      }
      
      public function §`!d§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§@@§ = param1;
         }
      }
      
      public function §@!#§() : Number
      {
         return this.§`!X§;
      }
      
      public function §@!6§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`!X§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal::[!n;
         §§push(_loc2_.GetMass());
         if(!(_loc14_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(_loc13_)
         {
            §§push(§§pop() * this.§@@§);
            if(_loc13_ || this)
            {
               addr53:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(2 * _loc3_);
            if(_loc13_ || _loc2_)
            {
               §§push(this.§`!X§);
               if(!_loc14_)
               {
                  addr76:
                  §§push(§§pop() * §§pop());
                  if(!_loc14_)
                  {
                     §§push(_loc4_);
                  }
                  var _loc5_:Number = §§pop();
                  §§push(_loc3_);
                  if(_loc13_)
                  {
                     §§push(_loc4_);
                     if(!(_loc14_ && _loc2_))
                     {
                        addr96:
                        addr97:
                        §§push(§§pop() * §§pop());
                        if(!_loc14_)
                        {
                           §§push(_loc4_);
                        }
                        var _loc6_:Number = §§pop();
                        if(_loc13_ || this)
                        {
                           §§push(this);
                           §§push(param1.§"!n§);
                           if(_loc13_ || this)
                           {
                              §§push(_loc5_);
                              if(_loc13_)
                              {
                                 §§push(param1.§"!n§);
                                 if(_loc13_)
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§pop().§]!7§ = §§pop();
                           loop0:
                           while(true)
                           {
                              addr138:
                              while(true)
                              {
                                 §§push(this);
                                 if(_loc13_ || this)
                                 {
                                    §§push(this.§]!7§);
                                    if(_loc13_ || _loc2_)
                                    {
                                       if(§§pop() != 0)
                                       {
                                          addr158:
                                          §§push(1 / this.§]!7§);
                                          if(!(_loc14_ && this))
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc14_)
                                             {
                                                addr182:
                                                §§pop().§]!7§ = §§pop();
                                                do
                                                {
                                                   §§push(this);
                                                   §§push(param1.§"!n§);
                                                   if(_loc13_)
                                                   {
                                                      §§push(_loc6_);
                                                      if(!(_loc14_ && this))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc13_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(this.§]!7§);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                while(§§pop().§ "§ = §§pop(), !_loc13_);
                                                
                                                continue loop0;
                                                addr172:
                                             }
                                             §§goto(addr182);
                                          }
                                          addr181:
                                          §§push(Number(§§pop()));
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(!(_loc14_ && this))
                                          {
                                             §§goto(addr181);
                                          }
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr158);
                              }
                           }
                        }
                        while(false)
                        {
                           §§goto(addr138);
                        }
                        _loc7_ = _loc2_.m_xf.R;
                        §§push(this.§,e§.x);
                        if(!_loc14_)
                        {
                           §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                           if(_loc13_ || _loc2_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc8_:* = §§pop();
                        §§push(this.§,e§.y);
                        if(_loc13_ || _loc2_)
                        {
                           §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                           if(_loc13_)
                           {
                              addr248:
                              §§push(Number(§§pop()));
                           }
                           var _loc9_:* = §§pop();
                           §§push(_loc7_.col1.x);
                           if(!_loc14_)
                           {
                              §§push(_loc8_);
                              if(!_loc14_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc14_ && _loc2_))
                                 {
                                    §§push(_loc7_.col2.x);
                                    if(_loc13_ || _loc3_)
                                    {
                                       addr278:
                                       §§push(§§pop() + §§pop() * _loc9_);
                                       if(_loc13_)
                                       {
                                          addr281:
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr278);
                                 }
                                 var _loc10_:* = §§pop();
                                 if(_loc13_)
                                 {
                                    §§push(_loc7_.col1);
                                    while(true)
                                    {
                                       §§push(§§pop().y);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          if(!(_loc14_ && param1))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc14_ && param1))
                                             {
                                                §§push(_loc7_.col2.y);
                                                if(!(_loc14_ && _loc3_))
                                                {
                                                   addr1083:
                                                   §§push(§§pop() * _loc9_);
                                                }
                                                §§push(§§pop() + §§pop());
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                addr1086:
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                _loc9_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop10:
                                                      while(!(_loc14_ && _loc3_))
                                                      {
                                                         _loc8_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§ c§);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop13:
                                                               while(!(_loc14_ && this))
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     _loc11_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§"k§);
                                                                        if(!(_loc14_ && _loc3_))
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           if(_loc14_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        if(!_loc13_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(_loc14_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        _loc12_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(this.K1);
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().col1);
                                                                              addr993:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 addr994:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    addr995:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.K1);
                                                                                       continue loop16;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(!(_loc14_ && _loc2_))
                                                                           {
                                                                              §§goto(addr955);
                                                                              §§push(this.K1);
                                                                           }
                                                                        }
                                                                        while(_loc13_ || this)
                                                                        {
                                                                           §§goto(addr893);
                                                                           §§push(this.K2);
                                                                        }
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr1086);
                                                               }
                                                               continue loop7;
                                                            }
                                                            if(!(_loc13_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr504);
                                                            §§push(this.§6!h§);
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr1083);
                                       }
                                    }
                                 }
                                 §§goto(addr417);
                              }
                              §§goto(addr278);
                           }
                           §§goto(addr281);
                        }
                        §§goto(addr248);
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc14_)
                     {
                        §§goto(addr96);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr96);
               }
               §§push(§§pop() * §§pop());
               if(!_loc13_)
               {
               }
            }
            §§goto(addr76);
         }
         §§goto(addr53);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::[!n;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§,e§.x);
         if(!_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!(_loc16_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§,e§.y);
         if(!_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         if(_loc15_ || _loc3_)
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
                  if(_loc15_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc16_)
                     {
                        §§push(_loc3_.col2);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(!_loc16_)
                           {
                              §§push(_loc7_);
                              if(!_loc16_)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc15_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc16_)
                                       {
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             loop5:
                                             while(true)
                                             {
                                                addr101:
                                                while(true)
                                                {
                                                   §§push(_loc3_.col1);
                                                   if(_loc16_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop().y);
                                                   if(_loc16_ && _loc2_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(!_loc15_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(_loc6_);
                                                   if(!(_loc16_ && _loc3_))
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc15_ || this)
                                                      {
                                                         continue loop2;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr228:
                                                      §§push(§§pop() + §§pop() * _loc7_);
                                                      if(_loc15_)
                                                      {
                                                         break loop3;
                                                      }
                                                   }
                                                }
                                                continue loop0;
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc16_ && this)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(_loc4_);
                                                   if(!_loc15_)
                                                   {
                                                      break;
                                                   }
                                                   addr76:
                                                   if(!(_loc16_ && _loc2_))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc16_ && _loc3_)
                                                      {
                                                         break loop3;
                                                      }
                                                      continue;
                                                   }
                                                   addr163:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc16_ && param1)
                                                      {
                                                         break loop3;
                                                      }
                                                      _loc7_ = §§pop();
                                                      continue loop8;
                                                      §§goto(addr76);
                                                   }
                                                }
                                                §§push(_loc2_.m_angularVelocity);
                                                if(!(_loc16_ && this))
                                                {
                                                   addr225:
                                                   §§push(-§§pop());
                                                   if(_loc16_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr228);
                                             }
                                          }
                                          addr204:
                                       }
                                       addr234:
                                       var _loc8_:* = §§pop();
                                       §§push(_loc2_.§;!A§.y);
                                       if(_loc15_)
                                       {
                                          §§push(_loc2_.m_angularVelocity);
                                          if(!(_loc16_ && _loc3_))
                                          {
                                             §§push(§§pop() * _loc6_);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc15_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc9_:* = §§pop();
                                       _loc3_ = this.§'q§;
                                       if(_loc15_)
                                       {
                                          §§push(_loc8_);
                                          if(!(_loc16_ && _loc3_))
                                          {
                                             §§push(this.§ "§);
                                             if(_loc15_)
                                             {
                                                §§push(this.§!!,§);
                                                if(_loc15_ || _loc2_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc15_ || param1)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc15_ || param1)
                                                         {
                                                            addr302:
                                                            §§push(this.§]!7§);
                                                            if(!_loc16_)
                                                            {
                                                               §§push(this.§6!h§);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc15_)
                                                                  {
                                                                     addr313:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc16_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc16_ && _loc3_))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc16_ && _loc3_))
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    §§push(this.§ "§);
                                                                                    if(_loc15_ || this)
                                                                                    {
                                                                                       addr354:
                                                                                       §§push(this.§!!,§.y);
                                                                                       if(_loc15_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc15_ || _loc2_)
                                                                                          {
                                                                                          }
                                                                                          addr430:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc15_ || param1)
                                                                                          {
                                                                                             addr445:
                                                                                             addr438:
                                                                                             §§push(_loc3_.col2.x);
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                addr444:
                                                                                                §§push(§§pop() * _loc5_);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc16_ && _loc2_))
                                                                                             {
                                                                                                addr453:
                                                                                                §§push(-§§pop());
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                }
                                                                                                addr457:
                                                                                                var _loc10_:* = §§pop();
                                                                                                §§push(_loc3_.col1.y);
                                                                                                if(!(_loc16_ && param1))
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   if(!(_loc16_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         addr479:
                                                                                                         §§push(_loc3_.col2.y);
                                                                                                         if(_loc15_ || _loc2_)
                                                                                                         {
                                                                                                            addr489:
                                                                                                            §§push(§§pop() * _loc5_);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                            if(_loc15_ || _loc3_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr503:
                                                                                                            var _loc11_:* = §§pop();
                                                                                                            §§push(this.§6!h§.x);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc12_:* = §§pop();
                                                                                                            §§push(this.§6!h§.y);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc13_:* = §§pop();
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               §§push(this.§6!h§);
                                                                                                               if(_loc15_ || param1)
                                                                                                               {
                                                                                                                  §§push(this.§6!h§);
                                                                                                                  if(!(_loc16_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     if(_loc15_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                        if(_loc15_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc16_ && this))
                                                                                                                           {
                                                                                                                              addr562:
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              addr580:
                                                                                                                              if(_loc15_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr574:
                                                                                                                                 §§push(this.§6!h§);
                                                                                                                                 §§push(this.§6!h§.y);
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    addr578:
                                                                                                                                    §§push(§§pop() + _loc11_);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§push(param1.§"!n§);
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * this.§!]§);
                                                                                                                                 if(_loc15_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr594:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc14_:* = §§pop();
                                                                                                                                 if(_loc15_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§6!h§);
                                                                                                                                    loop10:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§&l§());
                                                                                                                                       loop11:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          loop12:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * _loc14_);
                                                                                                                                             loop13:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§6!h§);
                                                                                                                                                      addr814:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(!(_loc16_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / this.§6!h§.Length());
                                                                                                                                                         }
                                                                                                                                                         §§pop().§",§(§§pop());
                                                                                                                                                         addr837:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr662:
                                                                                                                                                            if(!(_loc16_ && param1))
                                                                                                                                                            {
                                                                                                                                                               return;
                                                                                                                                                               addr669:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr812:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§6!h§);
                                                                                                                                                   loop18:
                                                                                                                                                   for(; _loc15_; while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§6!h§);
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         continue loop10;
                                                                                                                                                      }
                                                                                                                                                      continue loop18;
                                                                                                                                                   },§§goto(addr802))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                         while(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               addr779:
                                                                                                                                                               if(_loc16_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               _loc11_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc2_.§;!A§);
                                                                                                                                                                     loop24:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc2_.§;!A§);
                                                                                                                                                                        addr724:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           if(_loc15_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc2_.§ c§);
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 addr737:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              addr738:
                                                                                                                                                                           }
                                                                                                                                                                           addr739:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              continue loop24;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr812);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr837);
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                            if(!(_loc15_ || this))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               continue loop13;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc16_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               addr776:
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop11;
                                                                                                                                                               }
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr779);
                                                                                                                                                         }
                                                                                                                                                         continue loop12;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc10_ = §§pop();
                                                                                                                                                         continue loop18;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr814);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       if(!(_loc15_ || this))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr758);
                                                                                                                                          }
                                                                                                                                          §§goto(addr803);
                                                                                                                                       }
                                                                                                                                       §§goto(addr776);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr740);
                                                                                                                              }
                                                                                                                              §§goto(addr594);
                                                                                                                           }
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           §§goto(addr580);
                                                                                                                        }
                                                                                                                        §§goto(addr578);
                                                                                                                     }
                                                                                                                     §§goto(addr562);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr574);
                                                                                                            }
                                                                                                            §§goto(addr562);
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      §§goto(addr503);
                                                                                                   }
                                                                                                   §§goto(addr489);
                                                                                                }
                                                                                                §§goto(addr479);
                                                                                             }
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          §§goto(addr457);
                                                                                       }
                                                                                       §§goto(addr444);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc16_ && this))
                                                                                    {
                                                                                       §§push(this.§]!7§);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          addr384:
                                                                                          §§push(this.§6!h§.y);
                                                                                          if(!(_loc16_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                addr395:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc16_ && _loc2_))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!(_loc16_ && param1))
                                                                                                   {
                                                                                                      addr421:
                                                                                                      _loc5_ = §§pop();
                                                                                                      addr422:
                                                                                                      §§push(_loc3_.col1.x);
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         addr427:
                                                                                                         §§push(_loc4_);
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            §§goto(addr430);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr445);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr457);
                                                                                             }
                                                                                             §§goto(addr430);
                                                                                          }
                                                                                          §§goto(addr444);
                                                                                       }
                                                                                       §§goto(addr430);
                                                                                    }
                                                                                    §§goto(addr438);
                                                                                 }
                                                                                 §§goto(addr453);
                                                                              }
                                                                              §§goto(addr422);
                                                                           }
                                                                           §§goto(addr421);
                                                                        }
                                                                        §§goto(addr453);
                                                                     }
                                                                     §§goto(addr395);
                                                                  }
                                                                  §§goto(addr444);
                                                               }
                                                               §§goto(addr384);
                                                            }
                                                            §§goto(addr444);
                                                         }
                                                         §§goto(addr427);
                                                      }
                                                      §§goto(addr430);
                                                   }
                                                   §§goto(addr313);
                                                }
                                                §§goto(addr354);
                                             }
                                             §§goto(addr430);
                                          }
                                          §§goto(addr302);
                                       }
                                       §§goto(addr421);
                                    }
                                    break;
                                 }
                                 §§goto(addr234);
                                 §§push(Number(§§pop()));
                                 addr198:
                              }
                              §§goto(addr228);
                           }
                           §§goto(addr198);
                        }
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr225);
               }
            }
         }
         §§goto(addr99);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
