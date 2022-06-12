package §8k§
{
   import §#]§.b2Mat22;
   import §#]§.b2Math;
   import §#]§.b2Vec2;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §+>§:Number = 2.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §+>§ = 2;
         }
      }
      
      private var §#!x§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §3!A§:Number;
      
      private var §9!+§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §?!"§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §0!y§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §4p§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && _loc2_))
         {
            this.m_groundAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.m_u1 = new b2Vec2();
                        while(true)
                        {
                           this.m_u2 = new b2Vec2();
                           while(true)
                           {
                              super(param1);
                              while(_loc5_)
                              {
                                 this.§#!x§ = b2internal::8!Z.m_world.m_groundBody;
                                 while(true)
                                 {
                                    §§push(this.m_groundAnchor1);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1.§@"@§);
                                       addr352:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr353:
                                          while(true)
                                          {
                                             §§push(this.§#!x§);
                                             addr355:
                                             while(true)
                                             {
                                                §§push(§§pop().m_xf);
                                                addr356:
                                                while(true)
                                                {
                                                   §§push(§§pop().position);
                                                   addr357:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr358:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr359:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 loop28:
                                 for(; !(_loc6_ && this); loop30:
                                 while(_loc5_ || _loc3_)
                                 {
                                    this.§9!+§ = param1.§""3§;
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc6_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(this);
                                          §§push(param1.§4o§);
                                          if(!_loc6_)
                                          {
                                             §§push(this.§9!+§);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() * param1.§!!<§);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().§3!A§ = §§pop();
                                          while(!_loc6_)
                                          {
                                             continue loop3;
                                          }
                                          §§goto(addr346);
                                       }
                                       break;
                                       addr43:
                                       if(_loc5_ || param1)
                                       {
                                          return;
                                       }
                                    }
                                    §§goto(addr273);
                                    while(true)
                                    {
                                       if(!(_loc5_ || this))
                                       {
                                          continue loop30;
                                       }
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       §§push(this);
                                       §§push(b2Math);
                                       §§push(param1.§;A§);
                                       §§push(this.§3!A§);
                                       if(_loc5_)
                                       {
                                          §§push(b2internal::+>);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc6_ && param1))
                                             {
                                                addr110:
                                                §§push(§§pop() / this.§9!+§);
                                             }
                                             §§pop().m_maxLength2 = §§pop().§]"=§(§§pop(),§§pop());
                                             continue;
                                          }
                                       }
                                       §§goto(addr110);
                                    }
                                    continue loop1;
                                 })
                                 {
                                    while(true)
                                    {
                                       this.m_localAnchor2.SetV(param1.§^!J§);
                                       continue loop28;
                                    }
                                 }
                              }
                           }
                        }
                        if(_loc6_ && _loc3_)
                        {
                           continue;
                        }
                        §§push(this);
                        §§push(b2Math);
                        §§push(param1.§,"6§);
                        §§push(this.§3!A§);
                        if(_loc5_)
                        {
                           §§push(this.§9!+§);
                           if(_loc5_)
                           {
                              §§push(§§pop() * b2internal::+>);
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().m_maxLength1 = §§pop().§]"=§(§§pop(),§§pop());
                        §§goto(addr139);
                     }
                  }
               }
               if(_loc6_ && param1)
               {
                  continue;
               }
               this.m_limitImpulse1 = 0;
               §§goto(addr55);
            }
         }
         §§goto(addr221);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::8!Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4"0.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§0!y§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  §§push(this.m_u2.x);
                  if(_loc2_)
                  {
                     addr63:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_)
                     {
                        §§push(this.§0!y§);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr87);
                        }
                        §§push(§§pop() * §§pop());
                     }
                  }
                  addr87:
                  §§push(§§pop() * §§pop());
                  if(!(_loc3_ && this))
                  {
                     §§push(this.m_u2.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
            }
         }
         §§goto(addr63);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §@n§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§#!x§.m_xf.position.Copy();
         if(!_loc2_)
         {
            _loc1_.§&3§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §=r§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§#!x§.m_xf.position.Copy();
         if(_loc3_ || _loc2_)
         {
            _loc1_.§&3§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::8!Z.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§#!x§.m_xf.position.x);
         if(!(_loc6_ && this))
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!(_loc6_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§#!x§.m_xf.position.y);
         if(_loc7_ || this)
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(!_loc6_)
            {
               addr76:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() - _loc2_);
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(!_loc6_)
            {
               §§push(§§pop() - _loc3_);
               if(_loc7_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         }
         §§goto(addr76);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::4"0.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§#!x§.m_xf.position.x);
         if(!_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(!(_loc7_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§#!x§.m_xf.position.y);
         if(_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor2.y);
            if(_loc6_ || this)
            {
               addr70:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() - _loc2_);
               if(_loc6_)
               {
                  addr95:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(!_loc7_)
               {
                  §§push(§§pop() - _loc3_);
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr95);
         }
         §§goto(addr70);
      }
      
      public function §`A§() : Number
      {
         return this.§9!+§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc6_:* = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         _loc2_ = b2internal::8!Z;
         _loc3_ = b2internal::4"0;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc27_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!(_loc28_ && _loc2_))
            {
               addr63:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!(_loc28_ && this))
            {
               §§push(this.m_localAnchor1.y);
               if(_loc27_)
               {
                  §§push(_loc2_.m_sweep.localCenter.y);
                  if(_loc27_ || _loc2_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc28_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc27_ || _loc2_)
                        {
                           _loc6_ = §§pop();
                           addr100:
                           §§push(_loc4_.col1.x);
                           if(_loc27_)
                           {
                              §§push(_loc5_);
                              if(!_loc28_)
                              {
                                 addr108:
                                 §§push(§§pop() * §§pop());
                                 if(_loc27_)
                                 {
                                    addr111:
                                    §§push(_loc4_.col2.x);
                                    if(_loc27_)
                                    {
                                       addr116:
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc27_)
                                    {
                                       addr122:
                                       var _loc7_:* = Number(§§pop());
                                       if(_loc27_)
                                       {
                                          §§push(_loc4_.col1.y);
                                          if(!(_loc28_ && param1))
                                          {
                                             §§push(_loc5_);
                                             if(_loc27_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc28_ && this))
                                                {
                                                   §§push(_loc4_.col2.y);
                                                   if(!(_loc28_ && this))
                                                   {
                                                      addr158:
                                                      §§push(§§pop() + §§pop() * _loc6_);
                                                      if(_loc27_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc27_ || this)
                                                         {
                                                         }
                                                         addr186:
                                                         _loc5_ = Number(§§pop());
                                                         _loc4_ = _loc3_.m_xf.R;
                                                         §§push(this.m_localAnchor2.x);
                                                         if(_loc27_)
                                                         {
                                                            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                                            if(_loc27_ || _loc2_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc8_:* = §§pop();
                                                         §§push(this.m_localAnchor2.y);
                                                         if(_loc27_)
                                                         {
                                                            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                            if(!_loc28_)
                                                            {
                                                               addr223:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc9_:* = §§pop();
                                                            if(_loc27_)
                                                            {
                                                               §§push(_loc4_.col1);
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!(_loc28_ && _loc3_))
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc28_ && _loc2_))
                                                                        {
                                                                           addr351:
                                                                           §§push(_loc4_.col2);
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr356:
                                                                                    loop1:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       loop2:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop3:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             loop4:
                                                                                             while(true)
                                                                                             {
                                                                                                loop5:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_.col1);
                                                                                                   if(_loc28_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop().y);
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§push(_loc8_);
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         if(_loc28_ && _loc3_)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         if(!(_loc27_ || this))
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         loop6:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_.col2);
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!(_loc28_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(_loc9_);
                                                                                                               if(!(_loc28_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc28_ && this)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr372:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc27_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr380:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop7:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc9_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc28_ && this)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     if(_loc28_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     if(!(_loc27_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(!(_loc27_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           §§push(_loc2_.m_sweep.c.x);
                                                                                                                           if(_loc27_ || this)
                                                                                                                           {
                                                                                                                              §§goto(addr372);
                                                                                                                              §§push(_loc5_);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr380);
                                                                                                         }
                                                                                                         continue loop11;
                                                                                                         addr296:
                                                                                                      }
                                                                                                      §§goto(addr372);
                                                                                                   }
                                                                                                   §§goto(addr296);
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr356);
                                                                  }
                                                                  §§goto(addr351);
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(_loc2_.m_sweep.c.y);
                                                               if(_loc27_)
                                                               {
                                                                  §§push(§§pop() + _loc6_);
                                                                  if(!(_loc28_ && _loc2_))
                                                                  {
                                                                     addr397:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc11_:* = §§pop();
                                                                  §§push(_loc3_.m_sweep.c.x);
                                                                  if(!(_loc28_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() + _loc8_);
                                                                     if(_loc27_ || param1)
                                                                     {
                                                                        addr419:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc12_:* = §§pop();
                                                                     §§push(_loc3_.m_sweep.c.y);
                                                                     if(!(_loc28_ && param1))
                                                                     {
                                                                        §§push(§§pop() + _loc9_);
                                                                        if(_loc27_)
                                                                        {
                                                                           addr436:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc13_:* = §§pop();
                                                                        §§push(this.§#!x§.m_xf.position.x);
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(§§pop() + this.m_groundAnchor1.x);
                                                                           if(_loc27_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc14_:* = §§pop();
                                                                        §§push(this.§#!x§.m_xf.position.y);
                                                                        if(_loc27_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() + this.m_groundAnchor1.y);
                                                                           if(!_loc28_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc15_:* = §§pop();
                                                                        §§push(this.§#!x§.m_xf.position.x);
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(§§pop() + this.m_groundAnchor2.x);
                                                                           if(_loc27_ || this)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc16_:* = §§pop();
                                                                        §§push(this.§#!x§.m_xf.position.y);
                                                                        if(_loc27_ || param1)
                                                                        {
                                                                           §§push(§§pop() + this.m_groundAnchor2.y);
                                                                           if(!(_loc28_ && _loc2_))
                                                                           {
                                                                              addr516:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc17_:* = §§pop();
                                                                           if(!_loc28_)
                                                                           {
                                                                              §§push(this.m_u1);
                                                                              if(_loc27_ || param1)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 if(!(_loc28_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc14_);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       addr541:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       §§push(_loc11_);
                                                                                       if(_loc27_ || this)
                                                                                       {
                                                                                          §§push(§§pop() - _loc15_);
                                                                                       }
                                                                                    }
                                                                                    §§pop().Set(§§pop(),§§pop());
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       addr554:
                                                                                       §§push(this.m_u2);
                                                                                       §§push(_loc12_);
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             addr563:
                                                                                             §§push(§§pop() - §§pop());
                                                                                             §§push(_loc13_);
                                                                                             if(!(_loc28_ && this))
                                                                                             {
                                                                                                addr571:
                                                                                                §§push(§§pop() - _loc17_);
                                                                                             }
                                                                                             §§pop().Set(§§pop(),§§pop());
                                                                                             §§push(this.m_u1.§ !O§());
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc18_:* = §§pop();
                                                                                             §§push(this.m_u2.§ !O§());
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc19_:* = §§pop();
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                §§push(_loc18_);
                                                                                                if(!(_loc28_ && _loc3_))
                                                                                                {
                                                                                                   §§push(b2Settings.b2_linearSlop);
                                                                                                   loop12:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() <= §§pop())
                                                                                                      {
                                                                                                         §§push(this.m_u1);
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            §§pop().§;v§();
                                                                                                            loop13:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop14:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc19_);
                                                                                                                  if(!(_loc28_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(b2Settings.b2_linearSlop);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        §§push(this.m_u2);
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           §§pop().§;v§();
                                                                                                                           if(_loc27_ || this)
                                                                                                                           {
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 continue loop13;
                                                                                                                              }
                                                                                                                              if(!(_loc28_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 addr686:
                                                                                                                                 addr676:
                                                                                                                                 §§push(this.§3!A§);
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(this.§9!+§);
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    addr690:
                                                                                                                                    §§push(§§pop() * _loc19_);
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       addr698:
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       §§push(§§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 var _loc20_:* = §§pop();
                                                                                                                                 if(!(_loc28_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc27_ || param1)
                                                                                                                                    {
                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             this.§4p§ = b2internal::2!3;
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                this.§0!y§ = 0;
                                                                                                                                                addr723:
                                                                                                                                             }
                                                                                                                                             loop18:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                loop19:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.m_maxLength1);
                                                                                                                                                      if(!(_loc28_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                         {
                                                                                                                                                            this.m_limitState1 = b2internal::9!i;
                                                                                                                                                            loop20:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc28_ && _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  while(_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     this.m_limitState1 = b2internal::2!3;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop19;
                                                                                                                                                                  addr827:
                                                                                                                                                               }
                                                                                                                                                               loop21:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                  if(_loc27_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.m_maxLength2);
                                                                                                                                                                     if(_loc27_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           this.m_limitState2 = b2internal::9!i;
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc27_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr853:
                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr876:
                                                                                                                                                                                       §§push(this.m_u1.y);
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr861:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc27_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                          addr879:
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr879);
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr876);
                                                                                                                                                                                       §§push(§§pop() * this.m_u1.x);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr876);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr793:
                                                                                                                                                                              }
                                                                                                                                                                              this.m_limitImpulse2 = 0;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop20;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc28_ && _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc28_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop20;
                                                                                                                                                                              }
                                                                                                                                                                              this.m_limitState2 = b2internal::2!3;
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 this.m_limitImpulse1 = 0;
                                                                                                                                                                                 continue loop21;
                                                                                                                                                                              }
                                                                                                                                                                              addr832:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr793);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr876);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               var _loc21_:* = §§pop();
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(!(_loc28_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.m_u2.y);
                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                        if(!(_loc28_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr905:
                                                                                                                                                                           §§push(§§pop() * this.m_u2.x);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(_loc27_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr918:
                                                                                                                                                                        var _loc22_:* = §§pop();
                                                                                                                                                                        if(!(_loc28_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this);
                                                                                                                                                                           §§push(_loc2_.§["A§);
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc2_.§"g§);
                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                 if(_loc27_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1711:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc27_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1709:
                                                                                                                                                                                       §§push(§§pop() * _loc21_);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().m_limitMass1 = §§pop() + §§pop();
                                                                                                                                                                                    loop26:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                       §§push(_loc3_.§["A§);
                                                                                                                                                                                       if(_loc27_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc3_.§"g§);
                                                                                                                                                                                          if(_loc27_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc22_);
                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1670:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().m_limitMass2 = §§pop() + §§pop();
                                                                                                                                                                                                loop27:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this);
                                                                                                                                                                                                   §§push(this.m_limitMass1);
                                                                                                                                                                                                   if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§9!+§);
                                                                                                                                                                                                      if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§9!+§);
                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1640:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1638:
                                                                                                                                                                                                               §§push(§§pop() * this.m_limitMass2);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().§?!"§ = §§pop() + §§pop();
                                                                                                                                                                                                            loop28:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.m_limitMass1 = 1 / this.m_limitMass1;
                                                                                                                                                                                                               loop29:
                                                                                                                                                                                                               while(!_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.m_limitMass2 = 1 / this.m_limitMass2;
                                                                                                                                                                                                                  loop30:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§?!"§ = 1 / this.§?!"§;
                                                                                                                                                                                                                     loop31:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!param1.§'i§)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§0!y§ = 0;
                                                                                                                                                                                                                           loop32:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.m_limitImpulse1 = 0;
                                                                                                                                                                                                                              loop33:
                                                                                                                                                                                                                              while(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop27;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop29;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       loop35:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc28_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                loop36:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§0!y§);
                                                                                                                                                                                                                                                      loop37:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                                                                                                                         loop38:
                                                                                                                                                                                                                                                         while(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                            loop39:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.m_u1);
                                                                                                                                                                                                                                                                  if(_loc27_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                                                                     loop40:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        loop41:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           addr1496:
                                                                                                                                                                                                                                                                           loop42:
                                                                                                                                                                                                                                                                           while(_loc27_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc24_ = §§pop();
                                                                                                                                                                                                                                                                              loop43:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§9!+§);
                                                                                                                                                                                                                                                                                 loop44:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§0!y§);
                                                                                                                                                                                                                                                                                          loop45:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                   loop49:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop37;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1517:
                                                                                                                                                                                                                                                                                                      addr1459:
                                                                                                                                                                                                                                                                                                      loop47:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc28_ && param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop41;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         _loc25_ = §§pop();
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(this.§9!+§);
                                                                                                                                                                                                                                                                                                            if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(this.§0!y§);
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ || _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop39;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop49;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ || this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1392:
                                                                                                                                                                                                                                                                                                                        _loc26_ = §§pop();
                                                                                                                                                                                                                                                                                                                        continue loop43;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop44;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop39;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1370:
                                                                                                                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop45;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop40;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(_loc28_ && this)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              break loop47;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                           if(_loc28_ && _loc3_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop47;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop47;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1441:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                        break loop42;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1365:
                                                                                                                                                                                                                                                                                                                     §§push(this.m_u2);
                                                                                                                                                                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr1370);
                                                                                                                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1440:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1441);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(this.m_u1);
                                                                                                                                                                                                                                                                                                                     addr1516:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                        break loop47;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1514:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1392);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1518);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop42;
                                                                                                                                                                                                                                                                                                addr1419:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1458);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(-§§pop());
                                                                                                                                                                                                                                                                                             break loop38;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1508:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1419);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop36;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1516);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1496);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1514);
                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1517);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break loop36;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(this.§0!y§);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1538:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1508);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop30;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc3_.§="8§);
                                                                                                                                                                                                                                             if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc3_.§="8§);
                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                      if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc3_.§["A§);
                                                                                                                                                                                                                                                            if(_loc27_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc27_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc27_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc26_);
                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc27_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1121:
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 loop66:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc3_.§["A§);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1178:
                                                                                                                                                                                                                                                                                             §§push(_loc25_);
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      addr1188:
                                                                                                                                                                                                                                                                                                      while(!(_loc27_ || _loc2_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         loop60:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                            addr1290:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     break loop60;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                                                                                                                                                                  §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                  if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc2_.§"g§);
                                                                                                                                                                                                                                                                                                                     if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                        if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                           if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1256:
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                 if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * _loc23_);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.§="8§);
                                                                                                                                                                                                                                                                                                                                 addr1145:
                                                                                                                                                                                                                                                                                                                                 loop71:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_.§="8§);
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                             continue loop66;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr1300:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                             addr1301:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc2_.§["A§);
                                                                                                                                                                                                                                                                                                                                                loop63:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                   addr1304:
                                                                                                                                                                                                                                                                                                                                                   loop52:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                      addr1305:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                            addr1307:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc2_.§="8§);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1275:
                                                                                                                                                                                                                                                                                                                                                            if(_loc28_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc2_.§["A§);
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop63;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1286:
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                  addr1288:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop60;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1286);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop52;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1154:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    loop58:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc2_.§="8§);
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop60;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1275);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr1272:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1298:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             break loop58;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr1298:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop71;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1300);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1259:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1256);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1307);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop28;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                      continue loop35;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1187:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1287);
                                                                                                                                                                                                                                                                                                §§goto(addr1178);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1179:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1284);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1171:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1301);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1304);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1179);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1305);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1288);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1171);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1187);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1121);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1188);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1121);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1272);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1154);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1145);
                                                                                                                                                                                                                                             §§goto(addr1298);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1259);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    return;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr927:
                                                                                                                                                                                                                                 addr927:
                                                                                                                                                                                                                                 addr1046:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.m_limitImpulse2 = 0;
                                                                                                                                                                                                                                    if(!(_loc28_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop32;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop33;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr927);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1044:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1046);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                           §§push(this.§0!y§);
                                                                                                                                                                                                                           if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * param1.§ ,§);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().§0!y§ = §§pop();
                                                                                                                                                                                                                           continue loop31;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop26;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1638);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1640);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1670);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1709);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1711);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr983);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr918);
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr905);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr918);
                                                                                                                                                               §§goto(addr832);
                                                                                                                                                            }
                                                                                                                                                            continue loop18;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr827);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr861);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr880);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr723);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          this.§4p§ = b2internal::9!i;
                                                                                                                                       }
                                                                                                                                       §§goto(addr848);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr861);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.m_u1);
                                                                                                                                    addr671:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().§8`§(1 / _loc18_);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr669:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr646:
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§goto(addr676);
                                                                                                                                 addr648:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop14;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr642:
                                                                                                                           §§pop().§8`§(1 / _loc19_);
                                                                                                                        }
                                                                                                                        §§goto(addr646);
                                                                                                                     }
                                                                                                                     addr683:
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        §§goto(addr676);
                                                                                                                     }
                                                                                                                     §§goto(addr698);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(_loc18_);
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  §§goto(addr683);
                                                                                                               }
                                                                                                               §§goto(addr690);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr671);
                                                                                                      }
                                                                                                      §§goto(addr669);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr686);
                                                                                             }
                                                                                             §§goto(addr648);
                                                                                          }
                                                                                          §§goto(addr571);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr563);
                                                                                 }
                                                                                 §§goto(addr541);
                                                                              }
                                                                              §§goto(addr563);
                                                                           }
                                                                           §§goto(addr554);
                                                                        }
                                                                        §§goto(addr516);
                                                                     }
                                                                     §§goto(addr436);
                                                                  }
                                                                  §§goto(addr419);
                                                               }
                                                               §§goto(addr397);
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                         §§goto(addr223);
                                                         addr185:
                                                      }
                                                   }
                                                   §§goto(addr158);
                                                }
                                                _loc6_ = §§pop();
                                                if(_loc27_ || _loc2_)
                                                {
                                                   addr177:
                                                   §§push(_loc7_);
                                                   if(_loc27_ || this)
                                                   {
                                                      §§goto(addr185);
                                                   }
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr158);
                                          }
                                          §§goto(addr186);
                                       }
                                       §§goto(addr177);
                                    }
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr111);
                        }
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr108);
               }
               §§goto(addr122);
            }
            §§goto(addr100);
         }
         §§goto(addr63);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
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
         var _loc2_:b2Body = b2internal::8!Z;
         var _loc3_:b2Body = b2internal::4"0;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!(_loc22_ && this))
            {
               addr69:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!(_loc22_ && _loc2_))
            {
               §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
               if(_loc21_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc4_.col1.x);
            if(_loc21_)
            {
               §§push(_loc5_);
               if(!_loc22_)
               {
                  addr121:
                  §§push(§§pop() * §§pop());
                  if(_loc21_)
                  {
                     §§push(_loc4_.col2.x);
                     if(_loc21_ || _loc3_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                  }
                  var _loc7_:* = Number(§§pop());
                  if(_loc21_)
                  {
                     §§push(_loc4_.col1.y);
                     if(!_loc22_)
                     {
                        §§push(_loc5_);
                        if(!_loc22_)
                        {
                           addr146:
                           §§push(§§pop() * §§pop());
                           if(!_loc22_)
                           {
                              §§push(_loc4_.col2.y);
                              if(!_loc22_)
                              {
                                 §§push(§§pop() * _loc6_);
                              }
                           }
                           §§push(Number(§§pop()));
                           if(_loc21_)
                           {
                              _loc6_ = §§pop();
                              if(_loc21_ || param1)
                              {
                                 addr157:
                                 §§push(_loc7_);
                                 if(_loc21_)
                                 {
                                    addr161:
                                    _loc5_ = Number(§§pop());
                                 }
                                 §§goto(addr161);
                              }
                              _loc4_ = _loc3_.m_xf.R;
                              §§push(this.m_localAnchor2.x);
                              if(_loc21_ || _loc3_)
                              {
                                 §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                 if(!_loc22_)
                                 {
                                    addr184:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc8_:* = §§pop();
                                 §§push(this.m_localAnchor2.y);
                                 if(!(_loc22_ && param1))
                                 {
                                    §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                    if(!_loc22_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc9_:* = §§pop();
                                 if(_loc21_)
                                 {
                                    §§push(_loc4_.col1);
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr2223:
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          addr2224:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             addr2225:
                                             while(true)
                                             {
                                                §§push(_loc4_.col2);
                                                addr2227:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr2228:
                                                   while(true)
                                                   {
                                                      §§push(_loc9_);
                                                      addr2229:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr2230:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr2231:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr2232:
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
                                 §§goto(addr1987);
                              }
                              §§goto(addr184);
                           }
                           §§goto(addr161);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc22_)
                        {
                           §§goto(addr146);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr157);
               }
               §§push(§§pop() + §§pop());
               if(!_loc21_)
               {
               }
            }
            §§goto(addr121);
         }
         §§goto(addr69);
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
