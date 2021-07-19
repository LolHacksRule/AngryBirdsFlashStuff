package §[h§
{
   import § !t§.b2Body;
   import § !t§.b2TimeStep;
   import §<!B§.b2Mat22;
   import §<!B§.b2Mat33;
   import §<!B§.b2Math;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §<!B§.b2Vec3;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §5T§:b2Vec2;
      
      private var §?!o§:b2Vec2;
      
      private var §]#§:Number;
      
      private var §;9§:b2Vec2;
      
      private var §&!a§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var § !`§:b2Mat33;
      
      private var §7!a§:b2Vec3;
      
      private var §-!!§:Number;
      
      private var §0,§:Number;
      
      private var §0C§:Number;
      
      private var §%X§:Number;
      
      private var §6@§:Number;
      
      private var §4%§:Number;
      
      private var §&-§:Boolean;
      
      private var §7#§:Boolean;
      
      private var §]!C§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && _loc2_))
         {
            this.m_localAnchor1 = new b2Vec2();
            this.m_localAnchor2 = new b2Vec2();
            this.§5T§ = new b2Vec2();
            this.§?!o§ = new b2Vec2();
            if(_loc6_)
            {
               this.§;9§ = new b2Vec2();
               this.§&!a§ = new b2Vec2();
               if(_loc6_)
               {
                  this.§ !`§ = new b2Mat33();
                  this.§7!a§ = new b2Vec3();
                  super(param1);
                  this.m_localAnchor1.SetV(param1.§;!1§);
                  if(_loc6_)
                  {
                     this.m_localAnchor2.SetV(param1.§%?§);
                     this.§5T§.SetV(param1.§<E§);
                     §§push(this.§?!o§);
                     if(_loc6_ || _loc2_)
                     {
                        §§push(this.§5T§);
                        if(!(_loc5_ && this))
                        {
                           §§push(§§pop().y);
                           if(_loc6_ || param1)
                           {
                              §§push(-§§pop());
                              if(!(_loc5_ && param1))
                              {
                                 §§pop().x = §§pop();
                                 addr136:
                                 §§push(this.§?!o§);
                                 §§push(this.§5T§.x);
                              }
                           }
                           §§pop().y = §§pop();
                           this.§]#§ = param1.§%g§;
                           this.§7!a§.§22§();
                           this.§-!!§ = 0;
                           if(_loc6_ || _loc2_)
                           {
                              this.§0,§ = 0;
                              if(_loc6_ || _loc3_)
                              {
                                 this.§0C§ = param1.§7=§;
                                 if(!(_loc5_ && param1))
                                 {
                                    this.§%X§ = param1.§2!q§;
                                    if(_loc6_ || param1)
                                    {
                                       addr187:
                                       this.§6@§ = param1.§=!G§;
                                       this.§4%§ = param1.motorSpeed;
                                       this.§&-§ = param1.§'!v§;
                                       this.§7#§ = param1.§3!J§;
                                       if(_loc6_)
                                       {
                                          this.§]!C§ = b2internal::2!v;
                                          if(_loc6_ || param1)
                                          {
                                             addr225:
                                             this.§;9§.§22§();
                                             if(!_loc6_)
                                             {
                                             }
                                             §§goto(addr233);
                                          }
                                       }
                                       §§goto(addr233);
                                    }
                                    this.§&!a§.§22§();
                                    §§goto(addr233);
                                 }
                                 addr233:
                                 return;
                              }
                              §§goto(addr225);
                           }
                           §§goto(addr187);
                        }
                     }
                  }
                  §§goto(addr136);
               }
            }
            §§goto(addr225);
         }
         §§goto(addr187);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2+.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4P.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§7!a§.x);
            if(_loc3_)
            {
               §§push(§§pop() * this.§&!a§.x);
               if(!_loc2_)
               {
                  §§push(this.§0,§);
                  if(!_loc2_)
                  {
                     §§push(this.§7!a§.z);
                     if(!_loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc2_)
                        {
                           §§push(this.§;9§.x);
                           if(_loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc3_ || param1)
                              {
                                 addr72:
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_ || this)
                                 {
                                    §§goto(addr80);
                                 }
                              }
                              §§goto(addr84);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr72);
               }
            }
            §§goto(addr80);
         }
         addr80:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc2_)
         {
            addr84:
            §§push(this.§7!a§.x);
            §§push(this.§&!a§.y);
            if(!_loc2_)
            {
               addr92:
               §§push(§§pop() * §§pop());
               §§push(this.§0,§);
               if(_loc3_ || _loc2_)
               {
                  addr112:
                  §§push(this.§7!a§.z);
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr131);
                  }
               }
               §§goto(addr128);
            }
            §§goto(addr112);
         }
         addr131:
         §§push(§§pop() + §§pop());
         if(_loc3_)
         {
            addr128:
            §§push(§§pop() * this.§;9§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            §§push(§§pop() * this.§7!a§.y);
         }
         return §§pop();
      }
      
      public function §"!5§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2+;
         var _loc2_:b2Body = b2internal::4P;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!_loc11_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc11_ && _loc3_))
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(!(_loc11_ && this))
            {
               §§push(§§pop() - _loc4_.y);
               if(!(_loc11_ && _loc1_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§=d§(this.§5T§)).x);
            if(_loc10_)
            {
               §§push(_loc6_);
               if(!_loc11_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc11_ && this))
                  {
                     §§push(_loc8_.y);
                     if(_loc10_)
                     {
                        §§push(§§pop() * _loc7_);
                        if(_loc10_ || _loc3_)
                        {
                           addr128:
                           §§push(§§pop() + §§pop());
                           if(!(_loc11_ && _loc2_))
                           {
                              addr137:
                              §§push(Number(§§pop()));
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr137);
                        }
                     }
                     var _loc9_:* = §§pop();
                     return §§pop();
                  }
                  §§goto(addr137);
               }
               §§goto(addr128);
            }
            §§goto(addr137);
         }
         §§goto(addr51);
      }
      
      public function §%9§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2+;
         var _loc2_:b2Body = b2internal::4P;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc21_ || _loc2_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(_loc21_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(!_loc22_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.col1.x);
         if(!_loc22_)
         {
            §§push(_loc4_);
            if(!(_loc22_ && _loc3_))
            {
               addr89:
               §§push(§§pop() * §§pop());
               if(!_loc22_)
               {
                  §§push(_loc3_.col2.x);
                  if(_loc21_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
               }
               var _loc6_:Number = §§pop();
               if(_loc21_)
               {
                  §§push(_loc3_.col1.y);
                  if(_loc21_)
                  {
                     §§push(_loc4_);
                     if(!(_loc22_ && _loc2_))
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc22_ && this))
                        {
                           §§push(_loc3_.col2.y);
                           if(!_loc22_)
                           {
                              addr121:
                              §§push(§§pop() + §§pop() * _loc5_);
                              if(_loc21_ || this)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc22_)
                                 {
                                    addr132:
                                    _loc5_ = §§pop();
                                    if(_loc21_ || _loc2_)
                                    {
                                       addr140:
                                       §§push(_loc6_);
                                       if(_loc21_)
                                       {
                                          addr144:
                                          _loc4_ = Number(§§pop());
                                       }
                                       §§goto(addr144);
                                    }
                                    _loc3_ = _loc2_.m_xf.R;
                                    §§push(this.m_localAnchor2.x);
                                    if(!(_loc22_ && this))
                                    {
                                       §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                       if(!(_loc22_ && _loc2_))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(this.m_localAnchor2.y);
                                    if(_loc21_ || this)
                                    {
                                       §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                       if(!_loc22_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc8_:* = §§pop();
                                    if(!(_loc22_ && this))
                                    {
                                       §§push(_loc3_.col1);
                                       if(_loc21_ || this)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc21_)
                                          {
                                             §§push(_loc7_);
                                             if(!_loc22_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                §§push(_loc3_.col2);
                                                if(!(_loc22_ && this))
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc21_ || this)
                                                   {
                                                      addr233:
                                                      §§push(_loc8_);
                                                      if(_loc21_)
                                                      {
                                                         §§push(§§pop() + §§pop() * §§pop());
                                                         if(!_loc22_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(_loc21_)
                                                            {
                                                               addr246:
                                                               §§push(_loc3_.col1.y);
                                                               if(!(_loc22_ && _loc2_))
                                                               {
                                                                  addr254:
                                                                  §§push(_loc7_);
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc21_ || _loc2_)
                                                                     {
                                                                        addr268:
                                                                        §§push(§§pop() + _loc3_.col2.y * _loc8_);
                                                                        if(!(_loc22_ && _loc3_))
                                                                        {
                                                                           _loc8_ = Number(§§pop());
                                                                           if(!_loc22_)
                                                                           {
                                                                              addr282:
                                                                              §§push(_loc6_);
                                                                              if(_loc21_)
                                                                              {
                                                                                 addr285:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc21_ || _loc3_)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    addr304:
                                                                                    addr308:
                                                                                    §§push(_loc1_.m_sweep.c.x + _loc4_);
                                                                                    if(_loc22_ && _loc3_)
                                                                                    {
                                                                                    }
                                                                                    addr318:
                                                                                    var _loc9_:* = §§pop();
                                                                                    §§push(_loc1_.m_sweep.c.y);
                                                                                    if(!(_loc22_ && this))
                                                                                    {
                                                                                       §§push(§§pop() + _loc5_);
                                                                                       if(!(_loc22_ && _loc3_))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc10_:* = §§pop();
                                                                                    §§push(_loc2_.m_sweep.c.x);
                                                                                    if(_loc21_ || _loc1_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc7_);
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc11_:* = §§pop();
                                                                                    §§push(_loc2_.m_sweep.c.y);
                                                                                    if(_loc21_ || _loc1_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc8_);
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    §§push(_loc11_);
                                                                                    if(!(_loc22_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop() - _loc9_);
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          addr387:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc13_:* = §§pop();
                                                                                       §§push(_loc12_);
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          §§push(§§pop() - _loc10_);
                                                                                          if(!(_loc22_ && _loc1_))
                                                                                          {
                                                                                             addr401:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc14_:* = §§pop();
                                                                                          var _loc15_:b2Vec2 = _loc1_.§=d§(this.§5T§);
                                                                                          var _loc16_:b2Vec2 = _loc1_.§<&§;
                                                                                          var _loc17_:b2Vec2 = _loc2_.§<&§;
                                                                                          §§push(_loc1_.m_angularVelocity);
                                                                                          if(_loc21_ || _loc1_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc18_:* = §§pop();
                                                                                          §§push(_loc2_.m_angularVelocity);
                                                                                          if(!(_loc22_ && _loc3_))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc19_:* = §§pop();
                                                                                          §§push(_loc13_);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(_loc18_);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                §§push(_loc15_.y);
                                                                                                if(!(_loc22_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      addr458:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(_loc14_);
                                                                                                         §§push(_loc18_);
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc15_.x);
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               addr470:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc22_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§push(_loc15_.x);
                                                                                                                     if(!_loc22_)
                                                                                                                     {
                                                                                                                        §§push(_loc17_.x);
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           §§push(-_loc19_);
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              addr496:
                                                                                                                              §§push(§§pop() + §§pop() * §§pop() - _loc16_.x);
                                                                                                                              §§push(_loc18_);
                                                                                                                              if(!(_loc22_ && _loc1_))
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(!(_loc22_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       addr520:
                                                                                                                                       §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          addr523:
                                                                                                                                          §§push(_loc15_.y);
                                                                                                                                          §§push(_loc17_.y);
                                                                                                                                          if(_loc21_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc19_);
                                                                                                                                             if(!_loc22_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc21_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr548:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!_loc22_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc16_.y);
                                                                                                                                                         if(_loc21_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr560:
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc22_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               addr589:
                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                               if(_loc21_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr586:
                                                                                                                                                                  §§push(§§pop() * _loc4_);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + (§§pop() + §§pop() * (§§pop() - §§pop())));
                                                                                                                                                               if(_loc21_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr601:
                                                                                                                                                                  return Number(§§pop());
                                                                                                                                                                  addr600:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr600);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr589);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr586);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr589);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr560);
                                                                                                                                                }
                                                                                                                                                §§goto(addr586);
                                                                                                                                             }
                                                                                                                                             §§goto(addr560);
                                                                                                                                          }
                                                                                                                                          §§goto(addr589);
                                                                                                                                       }
                                                                                                                                       §§goto(addr601);
                                                                                                                                    }
                                                                                                                                    §§goto(addr589);
                                                                                                                                 }
                                                                                                                                 §§goto(addr548);
                                                                                                                              }
                                                                                                                              §§goto(addr589);
                                                                                                                           }
                                                                                                                           §§goto(addr560);
                                                                                                                        }
                                                                                                                        §§goto(addr496);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr601);
                                                                                                               }
                                                                                                               §§goto(addr523);
                                                                                                            }
                                                                                                            §§goto(addr520);
                                                                                                         }
                                                                                                         §§goto(addr589);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr601);
                                                                                                }
                                                                                                §§goto(addr470);
                                                                                             }
                                                                                             §§goto(addr458);
                                                                                          }
                                                                                          §§goto(addr601);
                                                                                       }
                                                                                       §§goto(addr401);
                                                                                    }
                                                                                    §§goto(addr387);
                                                                                 }
                                                                              }
                                                                              §§goto(addr318);
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr304);
                                                                     }
                                                                     §§goto(addr285);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               §§goto(addr308);
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         §§goto(addr304);
                                                      }
                                                   }
                                                }
                                                §§goto(addr268);
                                             }
                                             §§goto(addr233);
                                          }
                                          §§goto(addr254);
                                       }
                                       §§goto(addr246);
                                    }
                                    §§goto(addr282);
                                 }
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr144);
               }
               §§goto(addr140);
            }
            §§push(§§pop() + §§pop());
            if(!_loc21_)
            {
            }
         }
         §§goto(addr89);
      }
      
      public function §[M§() : Boolean
      {
         return this.§&-§;
      }
      
      public function §&O§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::2+.SetAwake(true);
            if(!_loc2_)
            {
               b2internal::4P.SetAwake(true);
               if(_loc3_)
               {
                  addr29:
                  this.§&-§ = param1;
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §7!%§() : Number
      {
         return this.§0C§;
      }
      
      public function §"B§() : Number
      {
         return this.§%X§;
      }
      
      public function §0S§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            b2internal::2+.SetAwake(true);
            if(!(_loc4_ && param2))
            {
               b2internal::4P.SetAwake(true);
               if(!_loc4_)
               {
                  this.§0C§ = param1;
                  if(_loc3_)
                  {
                     addr48:
                     this.§%X§ = param2;
                  }
               }
               §§goto(addr48);
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function §1!'§() : Boolean
      {
         return this.§7#§;
      }
      
      public function §4!Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            b2internal::2+.SetAwake(true);
            if(!(_loc3_ && param1))
            {
               §§goto(addr38);
            }
            §§goto(addr48);
         }
         addr38:
         b2internal::4P.SetAwake(true);
         if(_loc2_ || _loc3_)
         {
            addr48:
            this.§7#§ = param1;
         }
      }
      
      public function §-0§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            b2internal::2+.SetAwake(true);
            if(_loc3_)
            {
               addr39:
               b2internal::4P.SetAwake(true);
               if(_loc3_ || this)
               {
                  this.§4%§ = param1;
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §1B§() : Number
      {
         return this.§4%§;
      }
      
      public function §"]§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::2+.SetAwake(true);
            if(_loc3_ || param1)
            {
               b2internal::4P.SetAwake(true);
               if(!_loc3_)
               {
               }
               §§goto(addr47);
            }
            this.§6@§ = param1;
         }
         addr47:
      }
      
      public function §5%§() : Number
      {
         return this.§0,§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1723
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1493
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1978
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
