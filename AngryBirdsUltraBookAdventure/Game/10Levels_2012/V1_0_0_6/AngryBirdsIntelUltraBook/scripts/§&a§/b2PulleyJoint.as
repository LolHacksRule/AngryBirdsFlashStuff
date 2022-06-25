package §&a§
{
   import §#V§.b2Body;
   import §#V§.b2TimeStep;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §;%§.b2Mat22;
   import §;%§.b2Math;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §@!A§:Number = 2.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §@!A§ = 2;
         }
      }
      
      private var §0K§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §?A§:Number;
      
      private var §=G§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §?!A§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §<<§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §1!f§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_)
         {
            this.m_groundAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               addr445:
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
               }
            }
            addr450:
         }
         loop2:
         while(true)
         {
            this.m_localAnchor2 = new b2Vec2();
            while(true)
            {
               this.m_u1 = new b2Vec2();
               loop4:
               while(true)
               {
                  this.m_u2 = new b2Vec2();
                  loop5:
                  while(true)
                  {
                     if(_loc6_)
                     {
                        super(param1);
                        continue loop4;
                     }
                     §§goto(addr450);
                     addr132:
                     if(_loc5_ && _loc3_)
                     {
                        continue;
                     }
                     this.§<<§ = 0;
                     while(true)
                     {
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 break;
                              }
                              this.m_limitImpulse1 = 0;
                              continue;
                           }
                           loop32:
                           while(_loc6_ || _loc3_)
                           {
                              §§push(this);
                              §§push(b2Math);
                              §§push(param1.§"!<§);
                              §§push(this.§?A§);
                              if(!_loc5_)
                              {
                                 §§push(b2internal::@!A);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    addr107:
                                    §§push(§§pop() - §§pop());
                                    if(_loc6_)
                                    {
                                       §§push(this.§=G§);
                                    }
                                    §§pop().m_maxLength2 = §§pop().§=!@§(§§pop(),§§pop());
                                    while(true)
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          addr116:
                                          if(_loc6_ || _loc2_)
                                          {
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                if(_loc6_)
                                                {
                                                   §§goto(addr132);
                                                }
                                                else
                                                {
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(this.m_groundAnchor2);
                                                      while(true)
                                                      {
                                                         §§push(param1.§]k§);
                                                         addr298:
                                                         addr313:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            addr299:
                                                            while(true)
                                                            {
                                                               §§push(this.§0K§);
                                                               addr301:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().m_xf);
                                                                  addr302:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().position);
                                                                     addr303:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr304:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           addr305:
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§push(this.m_groundAnchor2);
                                                         if(!_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(param1.§]k§);
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§push(§§pop().y);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(this.§0K§);
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§push(§§pop().m_xf);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop().position);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr277:
                                                                           §§push(§§pop() - §§pop());
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              if(!(_loc6_ || _loc2_))
                                                                              {
                                                                                 §§goto(addr299);
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              loop27:
                                                                              while(true)
                                                                              {
                                                                                 this.m_localAnchor1.SetV(param1.§4!%§);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_ || _loc2_)
                                                                                    {
                                                                                       this.m_localAnchor2.SetV(param1.§=!I§);
                                                                                       break loop32;
                                                                                    }
                                                                                    break;
                                                                                    addr42:
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       continue loop27;
                                                                                    }
                                                                                 }
                                                                                 addr384:
                                                                                 addr374:
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.m_groundAnchor1);
                                                                                    if(_loc5_ && _loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(param1.§>y§);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!(_loc5_ && _loc2_))
                                                                                             {
                                                                                                §§push(this.§0K§);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop().m_xf);
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop().position);
                                                                                                      if(_loc6_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            addr369:
                                                                                                            §§pop().y = §§pop() - §§pop();
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                         }
                                                                                                         addr381:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         addr383:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr380:
                                                                                                   }
                                                                                                   §§goto(addr381);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                   addr379:
                                                                                                }
                                                                                                §§goto(addr380);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr377:
                                                                                             }
                                                                                             §§goto(addr379);
                                                                                          }
                                                                                          §§goto(addr383);
                                                                                       }
                                                                                       §§goto(addr369);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr376:
                                                                                    }
                                                                                    §§goto(addr377);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr376);
                                                                                    §§goto(addr384);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr305);
                                                                        }
                                                                        §§goto(addr304);
                                                                     }
                                                                     §§goto(addr303);
                                                                  }
                                                                  §§goto(addr302);
                                                               }
                                                               §§goto(addr301);
                                                            }
                                                            §§goto(addr277);
                                                         }
                                                         §§goto(addr298);
                                                      }
                                                   }
                                                }
                                             }
                                             while(!(_loc5_ && _loc3_))
                                             {
                                                §§goto(addr313);
                                             }
                                             continue loop4;
                                             addr306:
                                          }
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(param1.§`P§);
                                             if(_loc6_ || param1)
                                             {
                                                §§push(this.§=G§);
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§push(§§pop() * param1.§'=§);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().§?A§ = §§pop();
                                             §§goto(addr116);
                                          }
                                          addr219:
                                       }
                                       while(_loc6_)
                                       {
                                          §§push(this);
                                          §§push(b2Math);
                                          §§push(param1.§0#§);
                                          §§push(this.§?A§);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(this.§=G§);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(§§pop() * b2internal::@!A);
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§pop().m_maxLength1 = §§pop().§=!@§(§§pop(),§§pop());
                                          continue loop32;
                                       }
                                       continue loop2;
                                    }
                                    continue loop5;
                                    addr109:
                                 }
                                 §§push(§§pop() / §§pop());
                              }
                              §§goto(addr107);
                           }
                           while(true)
                           {
                              this.§=G§ = param1.§ N§;
                              §§goto(addr219);
                              §§goto(addr168);
                           }
                           addr168:
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr445);
                  }
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::>0.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(this.§<<§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  addr42:
                  §§push(this.m_u2.x);
                  if(!_loc3_)
                  {
                     addr58:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_)
                     {
                        addr61:
                        §§push(this.§<<§);
                        if(!(_loc3_ && this))
                        {
                           §§goto(addr82);
                        }
                        addr82:
                        §§push(§§pop() * §§pop());
                        if(!(_loc3_ && param1))
                        {
                           addr78:
                           §§push(this.m_u2.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr61);
               }
               §§goto(addr58);
            }
            §§goto(addr82);
         }
         §§goto(addr42);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §8H§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§0K§.m_xf.position.Copy();
         if(_loc3_)
         {
            _loc1_.§'!<§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §]!7§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Vec2 = this.§0K§.m_xf.position.Copy();
         if(_loc2_ || this)
         {
            _loc1_.§'!<§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::>0.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§0K§.m_xf.position.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(_loc7_)
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§0K§.m_xf.position.y);
            if(_loc7_)
            {
               §§push(§§pop() + this.m_groundAnchor1.y);
               if(!(_loc6_ && _loc2_))
               {
                  addr66:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc1_.x);
               if(!_loc6_)
               {
                  §§push(§§pop() - _loc2_);
                  if(!(_loc6_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop() - _loc3_);
                  if(!(_loc6_ && _loc3_))
                  {
                     addr111:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               }
               §§goto(addr111);
            }
            §§goto(addr66);
         }
         §§goto(addr36);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::[=.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§0K§.m_xf.position.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc7_)
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§0K§.m_xf.position.y);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(_loc7_ || this)
               {
                  addr71:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc1_.x);
               if(_loc7_)
               {
                  §§push(§§pop() - _loc2_);
                  if(!_loc6_)
                  {
                     addr81:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(_loc1_.y);
                  if(_loc7_ || _loc1_)
                  {
                     §§push(§§pop() - _loc3_);
                     if(_loc7_ || _loc1_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               }
               §§goto(addr81);
            }
            §§goto(addr71);
         }
         §§goto(addr36);
      }
      
      public function §>@§() : Number
      {
         return this.§=G§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc6_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:* = NaN;
         _loc2_ = b2internal::>0;
         _loc3_ = b2internal::[=;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc27_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!(_loc27_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!_loc27_)
         {
            §§push(this.m_localAnchor1.y);
            if(_loc28_ || _loc2_)
            {
               §§push(_loc2_.m_sweep.localCenter.y);
               if(!(_loc27_ && this))
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc27_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc27_)
                     {
                        _loc6_ = §§pop();
                        addr101:
                        §§push(_loc4_.col1.x);
                        if(!_loc27_)
                        {
                           §§push(_loc5_);
                           if(!_loc27_)
                           {
                              addr128:
                              §§push(§§pop() * §§pop());
                              if(_loc28_)
                              {
                                 addr112:
                                 §§push(_loc4_.col2.x);
                                 if(!_loc27_)
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                              }
                              var _loc7_:* = §§pop();
                              if(_loc28_)
                              {
                                 §§push(_loc4_.col1.y);
                                 if(_loc28_ || _loc2_)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc27_)
                                    {
                                       addr157:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc27_)
                                       {
                                          §§push(_loc4_.col2.y);
                                          if(_loc28_)
                                          {
                                             §§push(§§pop() * _loc6_);
                                          }
                                       }
                                       §§push(Number(§§pop()));
                                       if(_loc28_)
                                       {
                                          addr160:
                                          _loc6_ = §§pop();
                                          if(!(_loc27_ && this))
                                          {
                                             addr168:
                                             §§push(_loc7_);
                                             if(!_loc27_)
                                             {
                                                addr171:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc5_ = §§pop();
                                          }
                                          _loc4_ = _loc3_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(!(_loc27_ && param1))
                                          {
                                             §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                             if(!(_loc27_ && _loc2_))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(_loc28_)
                                          {
                                             §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                             if(_loc28_ || _loc3_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc9_:* = §§pop();
                                          if(!(_loc27_ && this))
                                          {
                                             §§push(_loc4_.col1);
                                             loop0:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc28_ || _loc2_)
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc28_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc27_)
                                                      {
                                                         §§push(_loc4_.col2);
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            addr328:
                                                            while(true)
                                                            {
                                                               §§push(_loc9_);
                                                               addr329:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  addr330:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr331:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc27_ && _loc2_)
                                                                        {
                                                                           addr348:
                                                                           §§push(§§pop() + _loc5_);
                                                                           if(!(_loc27_ && param1))
                                                                           {
                                                                              addr356:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc10_:* = §§pop();
                                                                           §§push(_loc2_.m_sweep.c.y);
                                                                           if(_loc28_)
                                                                           {
                                                                              §§push(§§pop() + _loc6_);
                                                                              if(_loc28_)
                                                                              {
                                                                                 addr368:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc11_:* = §§pop();
                                                                              §§push(_loc3_.m_sweep.c.x);
                                                                              if(_loc28_)
                                                                              {
                                                                                 §§push(§§pop() + _loc8_);
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc12_:* = §§pop();
                                                                              §§push(_loc3_.m_sweep.c.y);
                                                                              if(_loc28_)
                                                                              {
                                                                                 §§push(§§pop() + _loc9_);
                                                                                 if(_loc28_ || _loc2_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc13_:* = §§pop();
                                                                              §§push(this.§0K§.m_xf.position.x);
                                                                              if(_loc28_)
                                                                              {
                                                                                 §§push(§§pop() + this.m_groundAnchor1.x);
                                                                                 if(_loc28_ || _loc2_)
                                                                                 {
                                                                                    addr417:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc14_:* = §§pop();
                                                                                 §§push(this.§0K§.m_xf.position.y);
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    §§push(§§pop() + this.m_groundAnchor1.y);
                                                                                    if(!(_loc27_ && this))
                                                                                    {
                                                                                       addr437:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc15_:* = §§pop();
                                                                                    §§push(this.§0K§.m_xf.position.x);
                                                                                    if(_loc28_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() + this.m_groundAnchor2.x);
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc16_:* = §§pop();
                                                                                    §§push(this.§0K§.m_xf.position.y);
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       §§push(§§pop() + this.m_groundAnchor2.y);
                                                                                       if(!(_loc27_ && _loc3_))
                                                                                       {
                                                                                          addr477:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc17_:* = §§pop();
                                                                                       if(_loc28_ || _loc3_)
                                                                                       {
                                                                                          §§push(this.m_u1);
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             if(!(_loc27_ && param1))
                                                                                             {
                                                                                                §§push(_loc14_);
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                   addr502:
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   §§push(_loc11_);
                                                                                                   if(_loc28_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() - _loc15_);
                                                                                                   }
                                                                                                }
                                                                                                §§pop().Set(§§pop(),§§pop());
                                                                                                if(_loc28_ || param1)
                                                                                                {
                                                                                                   addr520:
                                                                                                   §§push(this.m_u2);
                                                                                                   §§push(_loc12_);
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      §§push(_loc16_);
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         addr529:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         §§push(_loc13_);
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            §§push(§§pop() - _loc17_);
                                                                                                         }
                                                                                                      }
                                                                                                      §§pop().Set(§§pop(),§§pop());
                                                                                                      addr535:
                                                                                                      §§push(this.m_u1.§-D§());
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc18_:* = §§pop();
                                                                                                      §§push(this.m_u2.§-D§());
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc19_:* = §§pop();
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         §§push(_loc18_);
                                                                                                         if(!(_loc27_ && this))
                                                                                                         {
                                                                                                            §§push(b2Settings.b2_linearSlop);
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               if(§§pop() <= §§pop())
                                                                                                               {
                                                                                                                  §§push(this.m_u1);
                                                                                                                  if(!(_loc27_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§pop().§&!K§();
                                                                                                                     loop13:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop14:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc19_);
                                                                                                                           if(!(_loc27_ && this))
                                                                                                                           {
                                                                                                                              §§push(b2Settings.b2_linearSlop);
                                                                                                                              if(_loc28_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc28_ || this)
                                                                                                                                    {
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(this.m_u2);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       §§pop().§&!K§();
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          if(_loc28_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             addr647:
                                                                                                                                             §§push(this.§?A§);
                                                                                                                                             if(_loc28_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr656:
                                                                                                                                                §§push(_loc18_);
                                                                                                                                                if(_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc28_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   addr693:
                                                                                                                                                   var _loc20_:Number;
                                                                                                                                                   §§push(_loc20_ = §§pop());
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc28_)
                                                                                                                                                            {
                                                                                                                                                               this.§1!f§ = b2internal::#!?;
                                                                                                                                                               if(_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  this.§<<§ = 0;
                                                                                                                                                                  loop15:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     loop16:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                        if(_loc28_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.m_maxLength1);
                                                                                                                                                                              loop87:
                                                                                                                                                                              while(§§pop() < §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr793:
                                                                                                                                                                                 while(_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop15;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.m_limitState1 = b2internal::#!?;
                                                                                                                                                                                    loop79:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.m_limitImpulse1 = 0;
                                                                                                                                                                                       loop80:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          loop81:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.m_maxLength2);
                                                                                                                                                                                                if(!(_loc27_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() >= §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.m_limitState2 = b2internal::>6;
                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop80;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(!(_loc27_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr768:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.m_limitImpulse2 = 0;
                                                                                                                                                                                                                  §§goto(addr768);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr793);
                                                                                                                                                                                                            addr761:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop16;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                               if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop16;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               var _loc21_:* = §§pop();
                                                                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                                                                               if(_loc28_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.m_u2.y);
                                                                                                                                                                                                                  if(_loc28_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(_loc28_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr896:
                                                                                                                                                                                                                           §§push(§§pop() * this.m_u2.x);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        if(!(_loc27_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr908:
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     var _loc22_:* = §§pop();
                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                        §§push(_loc2_.§-7§);
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc2_.§,!o§);
                                                                                                                                                                                                                           if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1662:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1660:
                                                                                                                                                                                                                                    §§push(§§pop() * _loc21_);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().m_limitMass1 = §§pop() + §§pop();
                                                                                                                                                                                                                                 loop17:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                                                                    §§push(_loc3_.§-7§);
                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc3_.§,!o§);
                                                                                                                                                                                                                                       if(_loc28_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                          if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1621:
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(_loc28_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc22_);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop().m_limitMass2 = §§pop() + §§pop();
                                                                                                                                                                                                                                             loop18:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                §§push(this.m_limitMass1);
                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§=G§);
                                                                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§=G§);
                                                                                                                                                                                                                                                      if(_loc28_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1585:
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.m_limitMass2);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().§?!A§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                         loop19:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this.m_limitMass1 = 1 / this.m_limitMass1;
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               this.m_limitMass2 = 1 / this.m_limitMass2;
                                                                                                                                                                                                                                                               loop21:
                                                                                                                                                                                                                                                               for(; !(_loc27_ && this); if(_loc27_ && _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                               },§§goto(addr969))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  this.§?!A§ = 1 / this.§?!A§;
                                                                                                                                                                                                                                                                  loop22:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(param1.§#!P§)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                                                                           §§push(this.§<<§);
                                                                                                                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * param1.§ !o§);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().§<<§ = §§pop();
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        loop24:
                                                                                                                                                                                                                                                                        while(_loc28_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                                                                           §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * param1.§ !o§);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().m_limitImpulse1 = §§pop();
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                                                                                                                 §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * param1.§ !o§);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§pop().m_limitImpulse2 = §§pop();
                                                                                                                                                                                                                                                                                 continue loop17;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop24;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop19;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     this.§<<§ = 0;
                                                                                                                                                                                                                                                                     loop23:
                                                                                                                                                                                                                                                                     while(!(_loc27_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           this.m_limitImpulse1 = 0;
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break loop22;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1508);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    loop75:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc27_ && _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(this.§<<§);
                                                                                                                                                                                                                                                                                       loop48:
                                                                                                                                                                                                                                                                                       for(; !_loc27_; while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc28_ || this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop48;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1410);
                                                                                                                                                                                                                                                                                             §§push(this.m_u2);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1462);
                                                                                                                                                                                                                                                                                       })
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                                                                                                                          loop68:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                                                             loop61:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1438:
                                                                                                                                                                                                                                                                                                   if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this.m_u1);
                                                                                                                                                                                                                                                                                                      if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                         loop62:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            addr1456:
                                                                                                                                                                                                                                                                                                            loop59:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                               loop60:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                  loop73:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(this.§=G§);
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                        loop69:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(this.§<<§);
                                                                                                                                                                                                                                                                                                                           if(_loc28_ || this)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop60;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                                                    if(_loc27_ && param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!(_loc28_ || this))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop62;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                          continue loop48;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1465:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(this.m_u1);
                                                                                                                                                                                                                                                                                                                                    addr1468:
                                                                                                                                                                                                                                                                                                                                    loop63:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                       addr1469:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                          addr1470:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                             addr1471:
                                                                                                                                                                                                                                                                                                                                             addr1462:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                continue loop75;
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1438);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                break loop48;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop63;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1413:
                                                                                                                                                                                                                                                                                                                              _loc25_ = §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                              addr1411:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc27_ && this)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop73;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§push(this.§=G§);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc27_ && param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop48;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(!(_loc28_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop69;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(_loc27_ && param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop68;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                    if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(this.§<<§);
                                                                                                                                                                                                                                                                                                                                          if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1300:
                                                                                                                                                                                                                                                                                                                                                   if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                                                                      if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1316:
                                                                                                                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop61;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc27_ && param1)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§push(this.m_u2);
                                                                                                                                                                                                                                                                                                                                                            if(_loc28_ || this)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1338:
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1344:
                                                                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc28_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue loop59;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        _loc26_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                        loop50:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc2_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                           loop51:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc2_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                                 loop53:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc2_.§-7§);
                                                                                                                                                                                                                                                                                                                                                                                    loop54:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                                                       loop55:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          loop56:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                             loop57:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                addr1239:
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc2_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                   addr1200:
                                                                                                                                                                                                                                                                                                                                                                                                   loop28:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop51;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc2_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                      loop29:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                                         loop30:
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc2_.§-7§);
                                                                                                                                                                                                                                                                                                                                                                                                            loop31:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                                                                                  loop32:
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop55;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1214:
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1217:
                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop18;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop50;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop50;
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1217:
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop57;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop57;
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1095:
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1103:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                 break loop22;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc3_.§-7§);
                                                                                                                                                                                                                                                                                                                                                                                                                                    loop40:
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc25_);
                                                                                                                                                                                                                                                                                                                                                                                                                                          loop41:
                                                                                                                                                                                                                                                                                                                                                                                                                                          for(; !_loc27_; §§push(_loc26_),if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                             continue loop40;
                                                                                                                                                                                                                                                                                                                                                                                                                                          })
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1070:
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      continue loop41;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   continue loop31;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop32;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       continue loop56;
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1088:
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1095);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop56;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop53;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop53;
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1129:
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop28;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1040:
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc28_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop29;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1128:
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1129);
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1040);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1157:
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc3_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop28;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1196:
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1214);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1217);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop30;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop55;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop54;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop54;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop51;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1470);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1344);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1410:
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1411);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1344);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1338);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1411);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1344);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1469);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1316);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1376);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1344);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1300);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1376:
                                                                                                                                                                                                                                                                                                                              addr1414:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1389);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1413);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1468);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1471);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1456);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1465);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1239);
                                                                                                                                                                                                                                                                              addr969:
                                                                                                                                                                                                                                                                              this.m_limitImpulse2 = 0;
                                                                                                                                                                                                                                                                              if(!(_loc28_ || this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop23;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr913);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1414);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr913:
                                                                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1155);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1032:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1200);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc28_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                                                                                                                        §§push(_loc3_.m_angularVelocity);
                                                                                                                                                                                                                                                                        if(_loc28_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc3_.§,!o§);
                                                                                                                                                                                                                                                                           if(_loc28_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                                                                                                                              if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc26_);
                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1018:
                                                                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                                                                       if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1028:
                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop() * _loc25_);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1028);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1031:
                                                                                                                                                                                                                                                                                    §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                    addr1030:
                                                                                                                                                                                                                                                                                    §§goto(addr1032);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1028);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1018);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1030);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1031);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1217);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1585);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1621);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1660);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1662);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr983);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr896);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr908);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop81;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.m_limitState2 = b2internal::#!?;
                                                                                                                                                                                                            §§goto(addr761);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop79;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop87;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr857:
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                if(_loc28_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr866);
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr865:
                                                                                                                                                                                          §§goto(addr866);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              this.m_limitState1 = b2internal::>6;
                                                                                                                                                                              §§goto(addr775);
                                                                                                                                                                           }
                                                                                                                                                                           addr790:
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(this.m_u1.y);
                                                                                                                                                                     if(_loc28_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr837:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc28_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                           if(!(_loc27_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr853:
                                                                                                                                                                              §§push(§§pop() * this.m_u1.x);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr857);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr865);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr853);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr795);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr758);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            this.§1!f§ = b2internal::>6;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr804);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr837);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr790);
                                                                                                                                                }
                                                                                                                                                addr676:
                                                                                                                                                §§push(§§pop() * _loc19_);
                                                                                                                                                if(_loc28_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr685:
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc28_ || this)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr693);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.m_u1);
                                                                                                                                                addr642:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().§%G§(1 / _loc18_);
                                                                                                                                                   addr646:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop14;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr640:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr646);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr606:
                                                                                                                                       §§pop().§%G§(1 / _loc19_);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr647);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr646);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr693);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(this.§=G§);
                                                                                                                        if(_loc28_ || this)
                                                                                                                        {
                                                                                                                           §§goto(addr676);
                                                                                                                        }
                                                                                                                        §§goto(addr685);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr642);
                                                                                                               }
                                                                                                               §§goto(addr640);
                                                                                                            }
                                                                                                            §§goto(addr685);
                                                                                                         }
                                                                                                         §§goto(addr656);
                                                                                                      }
                                                                                                      §§goto(addr646);
                                                                                                   }
                                                                                                   §§goto(addr529);
                                                                                                }
                                                                                                §§goto(addr535);
                                                                                             }
                                                                                             §§goto(addr502);
                                                                                          }
                                                                                          §§goto(addr535);
                                                                                       }
                                                                                       §§goto(addr520);
                                                                                    }
                                                                                    §§goto(addr477);
                                                                                 }
                                                                                 §§goto(addr437);
                                                                              }
                                                                              §§goto(addr417);
                                                                           }
                                                                           §§goto(addr368);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr327:
                                                      }
                                                      while(true)
                                                      {
                                                         _loc7_ = §§pop();
                                                         addr340:
                                                         while(true)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr331);
                                                      }
                                                   }
                                                   §§goto(addr348);
                                                }
                                                §§goto(addr331);
                                             }
                                          }
                                          §§goto(addr248);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc28_)
                                    {
                                       §§goto(addr157);
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr168);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc28_ || _loc3_)
                           {
                              §§goto(addr128);
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr112);
               }
            }
            §§goto(addr128);
         }
         §§goto(addr101);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc4_:b2Mat22 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc2_:b2Body = b2internal::>0;
         var _loc3_:b2Body = b2internal::[=;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!(_loc21_ && param1))
            {
               addr70:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc22_)
            {
               §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
               if(!_loc21_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc4_.col1.x);
            if(!(_loc21_ && this))
            {
               §§push(_loc5_);
               if(_loc22_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc21_)
                  {
                     addr107:
                     §§push(_loc4_.col2.x);
                     if(_loc22_)
                     {
                        addr112:
                        §§push(§§pop() * _loc6_);
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc21_ && _loc2_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc7_:* = §§pop();
                  if(!(_loc21_ && _loc3_))
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc22_ || _loc2_)
                     {
                        §§push(_loc5_);
                        if(!(_loc21_ && param1))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc21_ && _loc3_))
                           {
                              §§push(_loc4_.col2.y);
                              if(_loc22_)
                              {
                                 addr164:
                                 §§push(§§pop() + §§pop() * _loc6_);
                                 if(_loc22_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc21_)
                                    {
                                       addr170:
                                       _loc6_ = §§pop();
                                       addr183:
                                       if(_loc22_)
                                       {
                                          §§push(_loc7_);
                                          if(_loc22_ || param1)
                                          {
                                             addr181:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       _loc4_ = _loc3_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(!(_loc21_ && this))
                                       {
                                          §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                          if(_loc22_ || _loc2_)
                                          {
                                             addr210:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc8_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(!_loc21_)
                                          {
                                             §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                             if(_loc22_)
                                             {
                                                addr224:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc9_:* = §§pop();
                                             if(_loc22_ || _loc3_)
                                             {
                                                §§push(_loc4_.col1);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr2314:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      addr2315:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr2316:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.col2);
                                                            addr2318:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr2319:
                                                               while(true)
                                                               {
                                                                  §§push(_loc9_);
                                                                  addr2320:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr2321:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr2322:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr2323:
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr1740);
                                          }
                                          §§goto(addr224);
                                       }
                                       §§goto(addr210);
                                    }
                                    _loc5_ = §§pop();
                                    §§goto(addr183);
                                 }
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr170);
               }
               §§goto(addr112);
            }
            §§goto(addr107);
         }
         §§goto(addr70);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
