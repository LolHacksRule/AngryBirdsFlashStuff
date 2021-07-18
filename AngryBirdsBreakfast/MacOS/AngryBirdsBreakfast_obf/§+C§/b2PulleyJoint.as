package §+C§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Mat22;
   import §6Z§.b2Math;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §9!2§:Number = 2.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §9!2§ = 2;
         }
      }
      
      private var §=G§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §%!x§:Number;
      
      private var §+!H§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §9z§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §0!F§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §'t§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && _loc3_))
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  while(true)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     loop3:
                     for(; _loc6_ || param1; if(!(_loc6_ || _loc2_))
                     {
                        continue;
                     },if(_loc5_)
                     {
                        continue loop1;
                     },§§goto(addr58))
                     {
                        this.m_u1 = new b2Vec2();
                        while(true)
                        {
                           this.m_u2 = new b2Vec2();
                           while(_loc6_)
                           {
                              super(param1);
                              while(true)
                              {
                                 this.§=G§ = b2internal::[Z.m_world.m_groundBody;
                                 while(true)
                                 {
                                    §§push(this.m_groundAnchor1);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1.§4g§);
                                       addr369:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(this.§=G§);
                                             while(true)
                                             {
                                                §§push(§§pop().m_xf);
                                                addr380:
                                                while(true)
                                                {
                                                   §§push(§§pop().position);
                                                   addr381:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr382:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                   }
                                                }
                                             }
                                             addr379:
                                          }
                                          addr383:
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             continue loop8;
                                          }
                                       }
                                    }
                                    if(_loc5_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    §§push(this.m_groundAnchor2);
                                    loop17:
                                    while(true)
                                    {
                                       §§push(param1.§2l§);
                                       addr291:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr292:
                                          while(true)
                                          {
                                             §§push(this.§=G§);
                                             addr294:
                                             while(true)
                                             {
                                                §§push(§§pop().m_xf);
                                                addr295:
                                                while(true)
                                                {
                                                   §§push(§§pop().position);
                                                   addr296:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr297:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr298:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop17;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr102:
                                 if(!(_loc6_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 this.m_limitImpulse1 = 0;
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       addr65:
                                       if(_loc5_ && this)
                                       {
                                          break;
                                       }
                                       §§goto(addr72);
                                    }
                                    addr135:
                                    addr58:
                                    while(true)
                                    {
                                       this.§0!F§ = 0;
                                       addr98:
                                       while(!_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§goto(addr102);
                                          }
                                          else
                                          {
                                             §§goto(addr285);
                                          }
                                       }
                                       §§goto(addr204);
                                    }
                                    addr93:
                                    return;
                                    this.m_limitImpulse2 = 0;
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(_loc6_)
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr98);
                                 }
                                 while(!_loc5_)
                                 {
                                    §§push(this);
                                    §§push(b2Math);
                                    §§push(param1.§@!w§);
                                    §§push(this.§%!x§);
                                    if(_loc6_)
                                    {
                                       §§push(b2internal::9!2);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             addr132:
                                             §§push(§§pop() / this.§+!H§);
                                          }
                                          §§pop().m_maxLength2 = §§pop().§=t§(§§pop(),§§pop());
                                          §§goto(addr135);
                                       }
                                    }
                                    §§goto(addr132);
                                    §§goto(addr65);
                                 }
                                 §§goto(addr349);
                              }
                              if(_loc5_ && param1)
                              {
                                 continue;
                              }
                              §§push(this);
                              §§push(b2Math);
                              §§push(param1.§!0§);
                              §§push(this.§%!x§);
                              if(!_loc5_)
                              {
                                 §§push(this.§+!H§);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() * b2internal::9!2);
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§pop().m_maxLength1 = §§pop().§=t§(§§pop(),§§pop());
                              §§goto(addr154);
                           }
                           continue loop0;
                           if(!(_loc6_ || _loc2_))
                           {
                              continue;
                           }
                           §§goto(addr93);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr135);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8!F.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§0!F§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§goto(addr72);
               }
               §§push(param1);
               if(_loc2_)
               {
                  §§push(this.§0!F§);
                  if(_loc2_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc3_)
                     {
                        §§push(this.m_u2.y);
                     }
                     §§goto(addr72);
                  }
                  §§push(§§pop() * §§pop());
               }
            }
            §§goto(addr72);
         }
         addr72:
         §§push(this.m_u2.x);
         if(!(_loc3_ && param1))
         {
            §§push(§§pop() * §§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §?!@§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§=G§.m_xf.position.Copy();
         if(!_loc2_)
         {
            _loc1_.§-!r§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function § !j§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§=G§.m_xf.position.Copy();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.§-!r§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::[Z.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§=G§.m_xf.position.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(_loc7_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§=G§.m_xf.position.y);
         if(!(_loc6_ && _loc1_))
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(_loc7_ || _loc1_)
            {
               addr76:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(!_loc6_)
            {
               §§push(§§pop() - _loc2_);
               if(!(_loc6_ && _loc2_))
               {
                  addr91:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(_loc7_)
               {
                  §§push(§§pop() - _loc3_);
                  if(_loc7_)
                  {
                     addr101:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               }
               §§goto(addr101);
            }
            §§goto(addr91);
         }
         §§goto(addr76);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::8!F.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§=G§.m_xf.position.x);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(!(_loc6_ && this))
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§=G§.m_xf.position.y);
            if(_loc7_)
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(!_loc6_)
               {
                  addr71:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc1_.x);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop() - _loc2_);
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(!_loc6_)
               {
                  §§push(§§pop() - _loc3_);
                  if(!_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr71);
         }
         §§goto(addr46);
      }
      
      public function §;p§() : Number
      {
         return this.§+!H§;
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
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         _loc2_ = b2internal::[Z;
         _loc3_ = b2internal::8!F;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc28_ || param1)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!_loc27_)
            {
               addr64:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc28_ || param1)
            {
               §§push(this.m_localAnchor1.y);
               if(!(_loc27_ && param1))
               {
                  §§push(_loc2_.m_sweep.localCenter.y);
                  if(_loc28_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc27_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc28_)
                        {
                           addr95:
                           _loc6_ = §§pop();
                           §§push(_loc4_.col1.x);
                           if(!(_loc27_ && _loc2_))
                           {
                              §§push(_loc5_);
                              if(!(_loc27_ && param1))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc27_ && this))
                                 {
                                    §§push(_loc4_.col2.x);
                                    if(_loc27_)
                                    {
                                    }
                                    addr129:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc27_ && _loc2_))
                                    {
                                       addr138:
                                       var _loc7_:* = Number(§§pop());
                                       if(_loc28_ || _loc2_)
                                       {
                                          §§push(_loc4_.col1.y);
                                          if(_loc28_ || _loc3_)
                                          {
                                             §§push(_loc5_);
                                             if(_loc28_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc27_)
                                                {
                                                   §§push(_loc4_.col2.y);
                                                   if(!_loc27_)
                                                   {
                                                      addr167:
                                                      §§push(§§pop() * _loc6_);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc27_ && _loc2_))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc28_ || param1)
                                                      {
                                                         _loc6_ = §§pop();
                                                         if(_loc28_ || _loc2_)
                                                         {
                                                            addr193:
                                                            §§push(_loc7_);
                                                            if(!_loc27_)
                                                            {
                                                               addr197:
                                                               _loc5_ = Number(§§pop());
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                         _loc4_ = _loc3_.m_xf.R;
                                                         §§push(this.m_localAnchor2.x);
                                                         if(!_loc27_)
                                                         {
                                                            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                                            if(!(_loc27_ && _loc3_))
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc8_:* = §§pop();
                                                         §§push(this.m_localAnchor2.y);
                                                         if(!(_loc27_ && this))
                                                         {
                                                            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                            if(!_loc27_)
                                                            {
                                                               addr239:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc9_:* = §§pop();
                                                            if(_loc28_)
                                                            {
                                                               §§push(_loc4_.col1);
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!(_loc27_ && param1))
                                                                  {
                                                                     §§push(_loc8_);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc28_ || _loc2_)
                                                                        {
                                                                           §§push(_loc4_.col2);
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr358:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 addr359:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr360:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr361:
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc27_ && this))
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             loop7:
                                                                                             while(true)
                                                                                             {
                                                                                                addr272:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_.col1);
                                                                                                   if(_loc28_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr377:
                                                                                                         §§push(_loc5_);
                                                                                                      }
                                                                                                      addr378:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc28_ || param1)
                                                                                                      {
                                                                                                      }
                                                                                                      break loop0;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop0;
                                                                                                loop11:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc28_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!(_loc27_ && param1))
                                                                                                               {
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  if(!(_loc28_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_.m_sweep.c.x);
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           break loop11;
                                                                                                                        }
                                                                                                                        break loop0;
                                                                                                                     }
                                                                                                                     §§goto(addr272);
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         addr327:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc9_ = §§pop();
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                                §§goto(addr377);
                                                                                             }
                                                                                          }
                                                                                          addr386:
                                                                                          break loop0;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr377);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(_loc2_.m_sweep.c.y);
                                                               if(!(_loc27_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() + _loc6_);
                                                                  if(_loc28_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc3_.m_sweep.c.x);
                                                               if(_loc28_ || param1)
                                                               {
                                                                  §§push(§§pop() + _loc8_);
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc12_:* = §§pop();
                                                               §§push(_loc3_.m_sweep.c.y);
                                                               if(_loc28_ || _loc2_)
                                                               {
                                                                  §§push(§§pop() + _loc9_);
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc13_:* = §§pop();
                                                               §§push(this.§=G§.m_xf.position.x);
                                                               if(_loc28_)
                                                               {
                                                                  §§push(§§pop() + this.m_groundAnchor1.x);
                                                                  if(_loc28_)
                                                                  {
                                                                     addr452:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc14_:* = §§pop();
                                                                  §§push(this.§=G§.m_xf.position.y);
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(§§pop() + this.m_groundAnchor1.y);
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc15_:* = §§pop();
                                                                  §§push(this.§=G§.m_xf.position.x);
                                                                  if(_loc28_)
                                                                  {
                                                                     §§push(§§pop() + this.m_groundAnchor2.x);
                                                                     if(_loc28_ || _loc3_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc16_:* = §§pop();
                                                                  §§push(this.§=G§.m_xf.position.y);
                                                                  if(_loc28_ || this)
                                                                  {
                                                                     §§push(§§pop() + this.m_groundAnchor2.y);
                                                                     if(!(_loc27_ && param1))
                                                                     {
                                                                        addr512:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc17_:* = §§pop();
                                                                     if(!_loc27_)
                                                                     {
                                                                        §§push(this.m_u1);
                                                                        if(_loc28_)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(_loc28_ || param1)
                                                                           {
                                                                              §§push(_loc14_);
                                                                              if(_loc28_)
                                                                              {
                                                                                 addr532:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 §§push(_loc11_);
                                                                                 if(!(_loc27_ && param1))
                                                                                 {
                                                                                    §§push(§§pop() - _loc15_);
                                                                                 }
                                                                              }
                                                                              §§pop().Set(§§pop(),§§pop());
                                                                              if(!(_loc27_ && param1))
                                                                              {
                                                                                 §§push(this.m_u2);
                                                                                 §§push(_loc12_);
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    §§push(_loc16_);
                                                                                    if(!(_loc27_ && _loc3_))
                                                                                    {
                                                                                       addr564:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       §§push(_loc13_);
                                                                                       if(_loc28_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() - _loc17_);
                                                                                       }
                                                                                    }
                                                                                    §§pop().Set(§§pop(),§§pop());
                                                                                    addr575:
                                                                                    §§push(this.m_u1.Length());
                                                                                    if(!(_loc27_ && _loc2_))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc18_:* = §§pop();
                                                                                    §§push(this.m_u2.Length());
                                                                                    if(_loc28_ || param1)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc19_:* = §§pop();
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       §§push(_loc18_);
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          §§push(b2Settings.b2_linearSlop);
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                   addr677:
                                                                                                   this.m_u1.§>[§(1 / _loc18_);
                                                                                                }
                                                                                                loop87:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop13:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc19_);
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         §§push(b2Settings.b2_linearSlop);
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            if(§§pop() <= §§pop())
                                                                                                            {
                                                                                                               §§push(this.m_u2);
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  §§pop().§5!H§();
                                                                                                                  if(_loc28_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!(_loc27_ && param1))
                                                                                                                     {
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                           addr664:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr637:
                                                                                                                        if(_loc27_ && this)
                                                                                                                        {
                                                                                                                           continue loop87;
                                                                                                                        }
                                                                                                                        addr646:
                                                                                                                        this.m_u2.§>[§(1 / _loc19_);
                                                                                                                        addr650:
                                                                                                                     }
                                                                                                                     §§push(this.§%!x§);
                                                                                                                     if(_loc28_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(_loc18_);
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(!(_loc27_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr702:
                                                                                                                              §§push(this.§+!H§);
                                                                                                                              if(_loc28_ || this)
                                                                                                                              {
                                                                                                                                 addr711:
                                                                                                                                 §§push(§§pop() * _loc19_);
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    addr715:
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc28_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop());
                                                                                                                                 }
                                                                                                                                 var _loc20_:* = §§pop();
                                                                                                                                 if(_loc28_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc28_)
                                                                                                                                          {
                                                                                                                                             this.§'t§ = b2internal::-!Z;
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                this.§0!F§ = 0;
                                                                                                                                                loop14:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   loop15:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                      if(!(_loc27_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.m_maxLength1);
                                                                                                                                                         if(_loc28_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                            {
                                                                                                                                                               this.m_limitState1 = b2internal::%S;
                                                                                                                                                               loop16:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     loop17:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                        if(!(_loc27_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.m_maxLength2);
                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    this.m_limitState2 = b2internal::%S;
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.m_limitState1 = b2internal::-!Z;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop15;
                                                                                                                                                                                          addr838:
                                                                                                                                                                                       }
                                                                                                                                                                                       loop21:
                                                                                                                                                                                       while(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          loop22:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.m_limitImpulse2 = 0;
                                                                                                                                                                                             addr761:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop21;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr780:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.m_limitState2 = b2internal::-!Z;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop16;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop14;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr843:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.m_limitImpulse1 = 0;
                                                                                                                                                                                                      continue loop17;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop22;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc5_);
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.m_u1.y);
                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop17;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr877:
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop17;
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop15;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       if(!(_loc27_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr877);
                                                                                                                                                                                          §§push(§§pop() * this.m_u1.x);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr877);
                                                                                                                                                                                       §§goto(addr843);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr761);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr780);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr877);
                                                                                                                                                                           }
                                                                                                                                                                           addr775:
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     break loop15;
                                                                                                                                                                     addr766:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr766);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr838);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr877);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   var _loc21_:* = §§pop();
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   if(_loc28_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.m_u2.y);
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc27_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr898:
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            if(_loc28_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr906:
                                                                                                                                                               §§push(§§pop() * this.m_u2.x);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc27_ && this))
                                                                                                                                                            {
                                                                                                                                                               addr918:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            var _loc22_:* = §§pop();
                                                                                                                                                            if(_loc28_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(_loc2_.§4!&§);
                                                                                                                                                               if(_loc28_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc2_.§`!`§);
                                                                                                                                                                  if(!(_loc27_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc21_);
                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1667:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1665:
                                                                                                                                                                           §§push(§§pop() * _loc21_);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().m_limitMass1 = §§pop() + §§pop();
                                                                                                                                                                        loop26:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this);
                                                                                                                                                                           §§push(_loc3_.§4!&§);
                                                                                                                                                                           if(!(_loc27_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.§`!`§);
                                                                                                                                                                              if(!(_loc27_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1627:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1625:
                                                                                                                                                                                       §§push(§§pop() * _loc22_);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().m_limitMass2 = §§pop() + §§pop();
                                                                                                                                                                                    loop27:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                       §§push(this.m_limitMass1);
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§+!H§);
                                                                                                                                                                                          if(_loc28_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§+!H§);
                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1595:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!(_loc27_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.m_limitMass2);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().§9z§ = §§pop() + §§pop();
                                                                                                                                                                                                loop28:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.m_limitMass1 = 1 / this.m_limitMass1;
                                                                                                                                                                                                   loop29:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.m_limitMass2 = 1 / this.m_limitMass2;
                                                                                                                                                                                                      loop30:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§9z§ = 1 / this.§9z§;
                                                                                                                                                                                                         loop31:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!param1.§?j§)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§0!F§ = 0;
                                                                                                                                                                                                               loop32:
                                                                                                                                                                                                               while(_loc28_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.m_limitImpulse1 = 0;
                                                                                                                                                                                                                  loop33:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop29;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc27_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop27;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc27_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc3_.§?!^§);
                                                                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc3_.§?!^§);
                                                                                                                                                                                                                                                   if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                                                                         if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc3_.§4!&§);
                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc26_);
                                                                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1064:
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1078:
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1120:
                                                                                                                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       loop56:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          loop53:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                             addr1256:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc28_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc2_.§?!^§);
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc2_.§?!^§);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                            addr1221:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop53;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(_loc2_.§4!&§);
                                                                                                                                                                                                                                                                                                               loop57:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                  addr1231:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     addr1232:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop57;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1220:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc2_.§?!^§);
                                                                                                                                                                                                                                                                                                            addr1247:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop53;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(_loc2_.§4!&§);
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                  addr1253:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop56;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1245:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1211:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                                                                      §§push(this.§0!F§);
                                                                                                                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * param1.§-k§);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§pop().§0!F§ = §§pop();
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(this);
                                                                                                                                                                                                                                                                                                         §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * param1.§-k§);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§pop().m_limitImpulse1 = §§pop();
                                                                                                                                                                                                                                                                                                         addr1512:
                                                                                                                                                                                                                                                                                                         while(_loc28_ || this)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop28;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1531:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                       continue loop27;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1230);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc28_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1119:
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop() * _loc25_);
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1252);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1120);
                                                                                                                                                                                                                                                                                 addr1103:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1232);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1119);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1253);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1231);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1119);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1064);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1221);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1078);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1247);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                                                                            if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1103);
                                                                                                                                                                                                                                                               §§push(_loc3_.§4!&§);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1120);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1091:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1220);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1211);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1089:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1091);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             loop47:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(this.§+!H§);
                                                                                                                                                                                                                                                if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§0!F§);
                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc28_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                           if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1318:
                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.m_u2);
                                                                                                                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1332:
                                                                                                                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1342:
                                                                                                                                                                                                                                                                                                   if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1350:
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc26_ = §§pop();
                                                                                                                                                                                                                                                                                                         loop48:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc28_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop31;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr1245);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                            addr1193:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc27_ && this)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop48;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr1089);
                                                                                                                                                                                                                                                                                                                  §§push(_loc3_.§?!^§);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(this.§0!F§);
                                                                                                                                                                                                                                                                                                                     addr1480:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                        loop72:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                                                                                           addr1483:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                              loop74:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(this.m_u1);
                                                                                                                                                                                                                                                                                                                                 loop75:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                    loop76:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                       addr1488:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                          addr1489:
                                                                                                                                                                                                                                                                                                                                          loop78:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                                             addr1490:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(this.§0!F§);
                                                                                                                                                                                                                                                                                                                                                if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                loop36:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                                                                                                                   addr1455:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                      if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(this.m_u1);
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop75;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                            addr1474:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1475:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                         break loop32;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1408:
                                                                                                                                                                                                                                                                                                                                                   continue loop75;
                                                                                                                                                                                                                                                                                                                                                   addr1408:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop36;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(_loc27_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop72;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§push(this.m_u2);
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                         addr1425:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr1435:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                        break loop47;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop74;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop74;
                                                                                                                                                                                                                                                                                                                                                                  addr1435:
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop76;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1473);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1474);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop72;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop78;
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
                                                                                                                                                                                                                                                                                                                  addr1501:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1512);
                                                                                                                                                                                                                                                                                                         addr1358:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1489);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1488);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1350);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1425);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1424);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1342);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1483);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc28_ || _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1408);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break loop47;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1455);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1480);
                                                                                                                                                                                                                                                                                 addr1383:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1407);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1332);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1474);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1435);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1350);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1318);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1475);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1408);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1350);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1342);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc25_ = §§pop();
                                                                                                                                                                                                                                                §§goto(addr1439);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1439:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1512);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1256);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1193);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                                                                              §§push(_loc3_.m_angularVelocity);
                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc3_.§`!`§);
                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc26_);
                                                                                                                                                                                                                                       if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr990:
                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr995:
                                                                                                                                                                                                                                                §§push(§§pop() - §§pop() * _loc25_);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr995);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr998:
                                                                                                                                                                                                                                          §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                          addr997:
                                                                                                                                                                                                                                          break loop33;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr995);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr990);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr997);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr998);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop32;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(_loc27_ && _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1490);
                                                                                                                                                                                                                     §§goto(addr998);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr928);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop30;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§+!H§);
                                                                                                                                                                                                                  if(!(_loc27_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1383);
                                                                                                                                                                                                                        §§push(this.§0!F§);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1435);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1531);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr928:
                                                                                                                                                                                                         return;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1595);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1625);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1627);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1665);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1667);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1367);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr918);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr906);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr898);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr755);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          this.§'t§ = b2internal::%S;
                                                                                                                                       }
                                                                                                                                       §§goto(addr849);
                                                                                                                                    }
                                                                                                                                    §§goto(addr877);
                                                                                                                                 }
                                                                                                                                 §§goto(addr775);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr715);
                                                                                                                        }
                                                                                                                        §§goto(addr711);
                                                                                                                     }
                                                                                                                     §§goto(addr702);
                                                                                                                  }
                                                                                                                  §§goto(addr650);
                                                                                                               }
                                                                                                               §§goto(addr646);
                                                                                                            }
                                                                                                            §§goto(addr637);
                                                                                                         }
                                                                                                         §§goto(addr715);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr715);
                                                                                                }
                                                                                                addr681:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this.m_u1);
                                                                                                if(!(_loc27_ && _loc2_))
                                                                                                {
                                                                                                   §§pop().§5!H§();
                                                                                                   §§goto(addr664);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr677);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr677);
                                                                                          }
                                                                                          §§goto(addr711);
                                                                                       }
                                                                                       §§goto(addr702);
                                                                                    }
                                                                                    §§goto(addr644);
                                                                                 }
                                                                                 §§goto(addr564);
                                                                              }
                                                                              §§goto(addr575);
                                                                           }
                                                                           §§goto(addr532);
                                                                        }
                                                                     }
                                                                     §§goto(addr575);
                                                                  }
                                                                  §§goto(addr512);
                                                               }
                                                               §§goto(addr452);
                                                            }
                                                            §§goto(addr270);
                                                         }
                                                         §§goto(addr239);
                                                      }
                                                   }
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr197);
                                       }
                                       §§goto(addr193);
                                    }
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr129);
                              §§push(§§pop() * _loc6_);
                           }
                        }
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr129);
               }
            }
            §§goto(addr95);
         }
         §§goto(addr64);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
