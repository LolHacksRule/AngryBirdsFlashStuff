package §[!N§
{
   import § D§.b2Body;
   import § D§.b2TimeStep;
   import §8>§.b2Mat22;
   import §8>§.b2Math;
   import §8>§.b2Vec2;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §1!"§:Number = 2.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1!"§ = 2;
         }
      }
      
      private var §>,§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §"!i§:Number;
      
      private var §do§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §76§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §+!P§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §46§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_)
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  addr403:
                  addr189:
                  while(true)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     continue loop0;
                  }
                  if(_loc6_ && _loc2_)
                  {
                     continue;
                  }
                  §§push(this);
                  §§push(param1.§5%§);
                  if(!_loc6_)
                  {
                     §§push(this.§do§);
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§pop() * param1.§3!r§);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§"!i§ = §§pop();
                  loop30:
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        addr169:
                        if(_loc5_ || _loc3_)
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push(b2Math);
                              §§push(param1.§;J§);
                              §§push(this.§"!i§);
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(this.§do§);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() * b2internal::1!");
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§pop().m_maxLength1 = §§pop().§^!n§(§§pop(),§§pop());
                              loop32:
                              for(; !_loc6_; loop33:
                              while(true)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    if(!_loc6_)
                                    {
                                       this.§+!P§ = 0;
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             addr78:
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                this.m_limitImpulse1 = 0;
                                                continue loop33;
                                             }
                                             addr384:
                                             while(true)
                                             {
                                                this.m_u2 = new b2Vec2();
                                                loop5:
                                                while(true)
                                                {
                                                   super(param1);
                                                   addr360:
                                                   while(!_loc6_)
                                                   {
                                                      this.§>,§ = b2internal::^^.m_world.m_groundBody;
                                                      while(_loc5_)
                                                      {
                                                         §§push(this.m_groundAnchor1);
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(param1.§&!>§);
                                                            addr336:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(this.§>,§);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().m_xf);
                                                                     addr342:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().position);
                                                                        addr343:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr344:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr341:
                                                               }
                                                               addr345:
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  continue loop8;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop5;
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr403);
                                                }
                                                §§goto(addr78);
                                             }
                                          }
                                          break;
                                          addr36:
                                          if(_loc5_ || _loc2_)
                                          {
                                             continue loop30;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(this.m_groundAnchor2);
                                          loop17:
                                          while(true)
                                          {
                                             §§push(param1.§7!+§);
                                             addr270:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr271:
                                                while(true)
                                                {
                                                   §§push(this.§>,§);
                                                   addr273:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().m_xf);
                                                      addr274:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().position);
                                                         addr275:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            addr276:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               addr277:
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  addr278:
                                                                  while(_loc5_ || param1)
                                                                  {
                                                                     continue loop17;
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
                                       }
                                    }
                                    break;
                                 }
                                 continue loop32;
                              },while(_loc5_ || this)
                              {
                                 §§goto(addr189);
                              },§§goto(addr346))
                              {
                                 §§push(this);
                                 §§push(b2Math);
                                 §§push(param1.§ M§);
                                 §§push(this.§"!i§);
                                 if(_loc5_)
                                 {
                                    §§push(b2internal::1!");
                                    if(!_loc6_)
                                    {
                                       addr109:
                                       §§push(§§pop() - §§pop());
                                       if(_loc5_ || param1)
                                       {
                                          §§push(this.§do§);
                                       }
                                       §§pop().m_maxLength2 = §§pop().§^!n§(§§pop(),§§pop());
                                       continue;
                                    }
                                    §§push(§§pop() / §§pop());
                                 }
                                 §§goto(addr109);
                              }
                              while(!_loc6_)
                              {
                                 this.m_localAnchor2.SetV(param1.§^G§);
                                 break loop30;
                              }
                              §§goto(addr353);
                           }
                           return;
                           addr57:
                           addr176:
                        }
                        §§goto(addr360);
                     }
                     break;
                     if(_loc6_ && _loc3_)
                     {
                        continue;
                     }
                     if(!(_loc6_ && param1))
                     {
                        §§goto(addr57);
                     }
                     else
                     {
                        §§goto(addr278);
                     }
                  }
                  while(true)
                  {
                     this.§do§ = param1.§32§;
                     §§goto(addr182);
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::^^.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::7!<.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(this.§+!P§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  §§push(this.m_u2.x);
                  if(_loc2_)
                  {
                     addr58:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_)
                     {
                        addr61:
                        §§push(this.§+!P§);
                        if(!_loc3_)
                        {
                           §§goto(addr72);
                        }
                        addr72:
                        §§push(§§pop() * §§pop());
                        if(!_loc3_)
                        {
                           addr68:
                           §§push(this.m_u2.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr72);
               }
               §§goto(addr58);
            }
            §§goto(addr61);
         }
         §§goto(addr58);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §#`§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Vec2 = this.§>,§.m_xf.position.Copy();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.§[!C§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §6y§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Vec2 = this.§>,§.m_xf.position.Copy();
         if(_loc2_ || this)
         {
            _loc1_.§[!C§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::^^.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§>,§.m_xf.position.x);
         if(_loc7_ || this)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!_loc6_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§>,§.m_xf.position.y);
            if(_loc7_ || _loc1_)
            {
               §§push(§§pop() + this.m_groundAnchor1.y);
               if(!_loc6_)
               {
                  addr71:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc1_.x);
               if(!_loc6_)
               {
                  §§push(§§pop() - _loc2_);
                  if(!_loc6_)
                  {
                     addr91:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(_loc1_.y);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(§§pop() - _loc3_);
                     if(!_loc6_)
                     {
                        addr106:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                  }
                  §§goto(addr106);
               }
               §§goto(addr91);
            }
            §§goto(addr71);
         }
         §§goto(addr41);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::7!<.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§>,§.m_xf.position.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§>,§.m_xf.position.y);
         if(_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor2.y);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_.x);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop() - _loc2_);
            if(!(_loc6_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc1_.y);
         if(_loc7_)
         {
            §§push(§§pop() - _loc3_);
            if(_loc7_ || _loc1_)
            {
               addr106:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         }
         §§goto(addr106);
      }
      
      public function §?!T§() : Number
      {
         return this.§do§;
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
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         _loc2_ = b2internal::^^;
         _loc3_ = b2internal::7!<;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc27_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc27_ || this)
            {
               addr63:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc28_)
            {
               §§push(this.m_localAnchor1.y);
               if(!(_loc28_ && _loc3_))
               {
                  §§push(_loc2_.m_sweep.localCenter.y);
                  if(_loc27_ || _loc3_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc27_ || this)
                     {
                        §§push(Number(§§pop()));
                        if(_loc27_ || this)
                        {
                           addr104:
                           _loc6_ = §§pop();
                           addr105:
                           §§push(_loc4_.col1.x);
                           if(_loc28_)
                           {
                           }
                           addr116:
                           §§push(_loc4_.col2.x);
                           if(_loc27_ || param1)
                           {
                              addr126:
                              §§push(§§pop() * _loc6_);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc28_)
                           {
                              addr131:
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           if(_loc27_ || _loc3_)
                           {
                              §§push(_loc4_.col1.y);
                              if(!_loc28_)
                              {
                                 §§push(_loc5_);
                                 if(_loc27_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc27_ || param1)
                                    {
                                       §§push(_loc4_.col2.y);
                                       if(!(_loc28_ && param1))
                                       {
                                          addr168:
                                          §§push(§§pop() + §§pop() * _loc6_);
                                          if(_loc27_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc27_)
                                             {
                                                addr174:
                                                _loc6_ = §§pop();
                                                addr187:
                                                if(_loc27_ || param1)
                                                {
                                                   §§push(_loc7_);
                                                   if(!_loc28_)
                                                   {
                                                      addr185:
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                _loc4_ = _loc3_.m_xf.R;
                                                §§push(this.m_localAnchor2.x);
                                                if(!(_loc28_ && param1))
                                                {
                                                   §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                                   if(_loc27_)
                                                   {
                                                      addr209:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   §§push(this.m_localAnchor2.y);
                                                   if(!(_loc28_ && param1))
                                                   {
                                                      §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                      if(_loc27_ || param1)
                                                      {
                                                         addr233:
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
                                                            addr370:
                                                            loop1:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.col2);
                                                                     addr376:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                     }
                                                                     loop11:
                                                                     for(; _loc27_ || _loc2_; if(!(_loc27_ || _loc2_))
                                                                     {
                                                                        continue;
                                                                     },addr254:,if(!(_loc28_ && param1))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc28_ && _loc2_))
                                                                        {
                                                                           §§goto(addr269);
                                                                        }
                                                                        §§goto(addr406);
                                                                     },while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(!(_loc27_ || _loc2_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        continue loop11;
                                                                        §§goto(addr254);
                                                                     },§§goto(addr401))
                                                                     {
                                                                        §§push(_loc4_.col2);
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(!(_loc28_ && _loc2_))
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    if(!(_loc28_ && _loc2_))
                                                                                    {
                                                                                       if(!(_loc28_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc27_ || _loc3_))
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc27_ || this)
                                                                                             {
                                                                                                if(!(_loc27_ || _loc2_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                _loc9_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(_loc28_ && _loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   addr389:
                                                                                                   addr389:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc10_:* = §§pop();
                                                                                             §§push(_loc2_.m_sweep.c.y);
                                                                                             if(_loc27_ || this)
                                                                                             {
                                                                                                §§push(§§pop() + _loc6_);
                                                                                                if(!(_loc28_ && param1))
                                                                                                {
                                                                                                   addr427:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                var _loc11_:* = §§pop();
                                                                                                §§push(_loc3_.m_sweep.c.x);
                                                                                                if(_loc27_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() + _loc8_);
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                var _loc12_:* = §§pop();
                                                                                                §§push(_loc3_.m_sweep.c.y);
                                                                                                if(_loc27_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() + _loc9_);
                                                                                                   if(!(_loc28_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                var _loc13_:* = §§pop();
                                                                                                §§push(this.§>,§.m_xf.position.x);
                                                                                                if(_loc27_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() + this.m_groundAnchor1.x);
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                var _loc14_:* = §§pop();
                                                                                                §§push(this.§>,§.m_xf.position.y);
                                                                                                if(_loc27_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() + this.m_groundAnchor1.y);
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      addr506:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   var _loc15_:* = §§pop();
                                                                                                   §§push(this.§>,§.m_xf.position.x);
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      §§push(§§pop() + this.m_groundAnchor2.x);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   var _loc16_:* = §§pop();
                                                                                                   §§push(this.§>,§.m_xf.position.y);
                                                                                                   if(!(_loc28_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() + this.m_groundAnchor2.y);
                                                                                                      if(_loc27_ || param1)
                                                                                                      {
                                                                                                         addr546:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc17_:* = §§pop();
                                                                                                      if(_loc27_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(this.m_u1);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            §§push(_loc10_);
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               §§push(_loc14_);
                                                                                                               if(_loc27_ || _loc2_)
                                                                                                               {
                                                                                                                  addr571:
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(_loc27_ || this)
                                                                                                                  {
                                                                                                                     addr579:
                                                                                                                     §§push(§§pop() - _loc15_);
                                                                                                                  }
                                                                                                                  §§pop().Set(§§pop(),§§pop());
                                                                                                                  if(_loc27_ || param1)
                                                                                                                  {
                                                                                                                     §§push(this.m_u2);
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(_loc27_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(_loc16_);
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           addr603:
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           §§push(_loc13_);
                                                                                                                           if(!(_loc28_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - _loc17_);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§pop().Set(§§pop(),§§pop());
                                                                                                                        addr614:
                                                                                                                        §§push(this.m_u1.§-l§());
                                                                                                                        if(_loc27_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc18_:* = §§pop();
                                                                                                                        §§push(this.m_u2.§-l§());
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc19_:* = §§pop();
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           §§push(_loc18_);
                                                                                                                           loop14:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(b2Settings.b2_linearSlop);
                                                                                                                              if(!(_loc28_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc27_ || param1)
                                                                                                                                    {
                                                                                                                                       addr726:
                                                                                                                                       this.m_u1.§;a§(1 / _loc18_);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr667:
                                                                                                                                       addr740:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc19_);
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          continue loop14;
                                                                                                                                       }
                                                                                                                                       addr764:
                                                                                                                                       §§push(_loc18_);
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§do§);
                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                             {
                                                                                                                                                break loop14;
                                                                                                                                             }
                                                                                                                                             addr769:
                                                                                                                                             var _loc20_:* = §§pop();
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         this.§46§ = b2internal::7! ;
                                                                                                                                                         if(!(_loc28_ && param1))
                                                                                                                                                         {
                                                                                                                                                            this.§+!P§ = 0;
                                                                                                                                                            loop18:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               loop19:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                  if(!(_loc28_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.m_maxLength1);
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           this.m_limitState1 = b2internal:: B;
                                                                                                                                                                           loop21:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              loop22:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 if(!(_loc28_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.m_maxLength2);
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.m_limitState2 = b2internal::7! ;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(!(_loc28_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop19;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr858:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.m_limitImpulse2 = 0;
                                                                                                                                                                                                   §§goto(addr858);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(!(_loc28_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop22;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop18;
                                                                                                                                                                                             }
                                                                                                                                                                                             loop20:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.m_limitState1 = b2internal::7! ;
                                                                                                                                                                                                addr897:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.m_limitImpulse1 = 0;
                                                                                                                                                                                                   continue loop20;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr870:
                                                                                                                                                                                             addr849:
                                                                                                                                                                                             addr894:
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             this.m_limitState2 = b2internal:: B;
                                                                                                                                                                                             if(!(_loc28_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr908:
                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                      if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.m_u1.y);
                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                               if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr932:
                                                                                                                                                                                                                  §§push(§§pop() * this.m_u1.x);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               if(!(_loc28_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop19;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop22;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break loop22;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr932);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break loop19;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr806);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr897);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr849);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr932);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr829:
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              addr945:
                                                                                                                                                                              var _loc21_:* = §§pop();
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.m_u2.y);
                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr960:
                                                                                                                                                                                          §§push(§§pop() * this.m_u2.x);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       addr968:
                                                                                                                                                                                       var _loc22_:* = §§pop();
                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                          §§push(_loc2_.§1!X§);
                                                                                                                                                                                          if(_loc27_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc2_.§^!B§);
                                                                                                                                                                                             if(_loc27_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc21_);
                                                                                                                                                                                                if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1706:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1704:
                                                                                                                                                                                                      §§push(§§pop() * _loc21_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().m_limitMass1 = §§pop() + §§pop();
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                      §§push(_loc3_.§1!X§);
                                                                                                                                                                                                      if(!(_loc28_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc3_.§^!B§);
                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1656:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1654:
                                                                                                                                                                                                                  §§push(§§pop() * _loc22_);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().m_limitMass2 = §§pop() + §§pop();
                                                                                                                                                                                                               loop24:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                  §§push(this.m_limitMass1);
                                                                                                                                                                                                                  if(!(_loc28_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§do§);
                                                                                                                                                                                                                     if(!(_loc28_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§do§);
                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1624:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc27_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.m_limitMass2);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().§76§ = §§pop() + §§pop();
                                                                                                                                                                                                                           loop25:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.m_limitMass1 = 1 / this.m_limitMass1;
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.m_limitMass2 = 1 / this.m_limitMass2;
                                                                                                                                                                                                                                 continue loop25;
                                                                                                                                                                                                                                 addr998:
                                                                                                                                                                                                                                 if(!(_loc28_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr972:
                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop24;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1624);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1654);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1656);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1704);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1706);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1548);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr968);
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr960);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr968);
                                                                                                                                                                           }
                                                                                                                                                                           addr865:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr894);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr932);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr945);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr865);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr897);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      this.§46§ = b2internal:: B;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr903);
                                                                                                                                                }
                                                                                                                                                §§goto(addr932);
                                                                                                                                             }
                                                                                                                                             §§goto(addr829);
                                                                                                                                          }
                                                                                                                                          addr767:
                                                                                                                                          §§goto(addr769);
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       §§goto(addr767);
                                                                                                                                    }
                                                                                                                                    addr730:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(this.m_u1);
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       §§pop().§%&§();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr658:
                                                                                                                                          if(!(_loc27_ || this))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr667);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr731:
                                                                                                                                             §§push(this.§"!i§);
                                                                                                                                             if(!(_loc28_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§goto(addr740);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr767);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr726);
                                                                                                                                    }
                                                                                                                                    §§goto(addr667);
                                                                                                                                 }
                                                                                                                                 §§goto(addr726);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§pop() * _loc19_);
                                                                                                                           if(_loc27_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§goto(addr764);
                                                                                                                           }
                                                                                                                           §§goto(addr769);
                                                                                                                        }
                                                                                                                        §§goto(addr696);
                                                                                                                     }
                                                                                                                     §§goto(addr603);
                                                                                                                  }
                                                                                                                  §§goto(addr614);
                                                                                                               }
                                                                                                               §§goto(addr579);
                                                                                                            }
                                                                                                            §§goto(addr571);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr614);
                                                                                                   }
                                                                                                   §§goto(addr546);
                                                                                                }
                                                                                                §§goto(addr506);
                                                                                             }
                                                                                             §§goto(addr427);
                                                                                             addr269:
                                                                                             if(_loc28_ && param1)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             _loc8_ = §§pop();
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§push(_loc2_.m_sweep.c.x);
                                                                                                if(_loc27_ || param1)
                                                                                                {
                                                                                                   addr401:
                                                                                                   §§push(§§pop() + _loc5_);
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      §§goto(addr405);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr406);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr364);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr377:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc9_);
                                                                                             addr378:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr379:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr377:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc27_ || _loc2_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          _loc7_ = §§pop();
                                                                                          §§goto(addr389);
                                                                                       }
                                                                                       §§goto(addr401);
                                                                                    }
                                                                                    §§goto(addr379);
                                                                                 }
                                                                                 §§goto(addr401);
                                                                              }
                                                                              §§goto(addr378);
                                                                           }
                                                                           §§goto(addr401);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr376);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr377);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr389);
                                                   }
                                                   §§goto(addr233);
                                                }
                                                §§goto(addr209);
                                             }
                                             _loc5_ = §§pop();
                                             §§goto(addr187);
                                          }
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr174);
                        }
                        §§push(_loc5_);
                        if(!_loc28_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc27_)
                           {
                              §§goto(addr116);
                           }
                           §§goto(addr131);
                        }
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr126);
               }
               §§goto(addr104);
            }
            §§goto(addr105);
         }
         §§goto(addr63);
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
         var _loc2_:b2Body = b2internal::^^;
         var _loc3_:b2Body = b2internal::7!<;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!_loc21_)
            {
               addr65:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!(_loc21_ && param1))
            {
               §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
               if(_loc22_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc4_.col1.x);
            if(!(_loc21_ && param1))
            {
               §§push(_loc5_);
               if(_loc22_ || _loc2_)
               {
                  addr123:
                  §§push(§§pop() * §§pop());
                  if(!(_loc21_ && this))
                  {
                     §§push(_loc4_.col2.x);
                     if(_loc22_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                  }
                  var _loc7_:* = §§pop();
                  if(_loc22_ || _loc2_)
                  {
                     §§push(_loc4_.col1.y);
                     if(!_loc21_)
                     {
                        §§push(_loc5_);
                        if(!(_loc21_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc21_ && this))
                           {
                              §§push(_loc4_.col2.y);
                              if(!(_loc21_ && param1))
                              {
                                 addr164:
                                 §§push(§§pop() + §§pop() * _loc6_);
                                 if(_loc22_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc22_ || _loc2_)
                                    {
                                       addr175:
                                       _loc6_ = §§pop();
                                       if(_loc22_)
                                       {
                                          §§push(_loc7_);
                                          if(_loc22_ || _loc3_)
                                          {
                                          }
                                          addr187:
                                          _loc5_ = §§pop();
                                          addr188:
                                          _loc4_ = _loc3_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(!_loc21_)
                                          {
                                             §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                             if(!(_loc21_ && param1))
                                             {
                                                addr210:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc8_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(_loc22_)
                                             {
                                                §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                if(_loc22_ || _loc3_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc9_:* = §§pop();
                                             if(_loc22_ || _loc3_)
                                             {
                                                §§push(_loc4_.col1);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr2329:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      addr2330:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr2331:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.col2);
                                                            addr2333:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr2334:
                                                               while(true)
                                                               {
                                                                  §§push(_loc9_);
                                                                  addr2335:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr2336:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr2337:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr2338:
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
                                             §§goto(addr2051);
                                          }
                                          §§goto(addr210);
                                       }
                                       §§goto(addr188);
                                    }
                                 }
                                 §§goto(addr187);
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr164);
                     }
                  }
                  §§goto(addr187);
               }
               §§push(§§pop() + §§pop());
               if(_loc22_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr123);
         }
         §§goto(addr65);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc25_:Boolean = false;
         var _loc26_:Boolean = true;
         var _loc4_:b2Mat22 = null;
         var _loc9_:* = NaN;
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
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc2_:b2Body = b2internal::^^;
         var _loc3_:b2Body = b2internal::7!<;
         §§push(this.§>,§.m_xf.position.x);
         if(!(_loc25_ && param1))
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!(_loc25_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.§>,§.m_xf.position.y);
         if(_loc26_ || _loc2_)
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(_loc26_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§>,§.m_xf.position.x);
         if(!(_loc25_ && this))
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc26_)
            {
               addr119:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(this.§>,§.m_xf.position.y);
            if(_loc26_ || _loc2_)
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(_loc26_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            §§push(0);
            if(_loc26_)
            {
               §§push(Number(§§pop()));
            }
            var _loc24_:* = §§pop();
            if(_loc26_ || this)
            {
               §§push(this.§46§);
               if(_loc26_ || param1)
               {
                  if(§§pop() == b2internal:: B)
                  {
                     if(_loc26_)
                     {
                        addr166:
                        §§push(_loc2_.m_xf);
                        if(_loc26_ || _loc2_)
                        {
                           §§push(§§pop().R);
                           if(!(_loc25_ && this))
                           {
                              _loc4_ = §§pop();
                              if(_loc26_)
                              {
                                 §§push(this.m_localAnchor1);
                                 loop214:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr388:
                                    while(true)
                                    {
                                       §§push(_loc2_.m_sweep);
                                       addr390:
                                       while(true)
                                       {
                                          §§push(§§pop().localCenter);
                                          addr391:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr392:
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                addr393:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr394:
                                                   while(true)
                                                   {
                                                      _loc9_ = §§pop();
                                                      continue loop214;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr312);
                           }
                        }
                     }
                     §§goto(addr2559);
                  }
                  §§goto(addr1670);
               }
               §§goto(addr2552);
            }
            §§goto(addr166);
         }
         §§goto(addr119);
      }
   }
}
