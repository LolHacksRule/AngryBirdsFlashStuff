package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Mat22;
   import §&H§.b2Math;
   import §&H§.b2Vec2;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §=!5§:Number = 2.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §=!5§ = 2;
         }
      }
      
      private var §;j§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §-#§:Number;
      
      private var §2z§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §%!F§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §&""§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §=9§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || _loc2_)
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  continue loop0;
                  addr364:
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
                  §§push(this.m_groundAnchor1);
                  loop8:
                  while(true)
                  {
                     §§push(param1.§^!s§);
                     addr340:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr341:
                        while(true)
                        {
                           §§push(this.§;j§);
                           addr343:
                           while(true)
                           {
                              §§push(§§pop().m_xf);
                              addr344:
                              while(true)
                              {
                                 §§push(§§pop().position);
                                 addr345:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr346:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr347:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          addr348:
                                          while(_loc6_)
                                          {
                                             continue loop8;
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             this.m_u2 = new b2Vec2();
                                             loop5:
                                             while(true)
                                             {
                                                super(param1);
                                                while(!_loc5_)
                                                {
                                                   this.§;j§ = b2internal::&A.m_world.m_groundBody;
                                                   loop7:
                                                   while(_loc6_ || this)
                                                   {
                                                      §§goto(addr364);
                                                      addr140:
                                                      if(!(_loc6_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(this);
                                                      §§push(b2Math);
                                                      §§push(param1.§&!9§);
                                                      §§push(this.§-#§);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(b2internal::=!5);
                                                         if(_loc6_)
                                                         {
                                                            addr98:
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc6_)
                                                            {
                                                               §§push(this.§2z§);
                                                            }
                                                            §§pop().m_maxLength2 = §§pop().§;!t§(§§pop(),§§pop());
                                                            loop33:
                                                            for(; _loc6_; if(!(_loc5_ && param1))
                                                            {
                                                               addr56:
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        return;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  loop30:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(param1.§!!H§);
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        §§push(this.§2z§);
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() * param1.§"M§);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§pop().§-#§ = §§pop();
                                                                     addr173:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           addr180:
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(this);
                                                                              §§push(b2Math);
                                                                              §§push(param1.§4!J§);
                                                                              §§push(this.§-#§);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(this.§2z§);
                                                                                 if(_loc6_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop() * b2internal::=!5);
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                              }
                                                                              §§pop().m_maxLength1 = §§pop().§;!t§(§§pop(),§§pop());
                                                                              continue;
                                                                           }
                                                                           addr219:
                                                                           while(true)
                                                                           {
                                                                              this.m_localAnchor2.SetV(param1.§true§);
                                                                              §§goto(addr180);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§2z§ = param1.§?!s§;
                                                                           continue loop30;
                                                                        }
                                                                     }
                                                                     §§goto(addr348);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        §§goto(addr140);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr280);
                                                                     }
                                                                  }
                                                                  §§goto(addr173);
                                                                  §§goto(addr56);
                                                               }
                                                               continue loop7;
                                                            })
                                                            {
                                                               this.§&""§ = 0;
                                                               while(_loc6_)
                                                               {
                                                                  this.m_limitImpulse1 = 0;
                                                                  do
                                                                  {
                                                                     this.m_limitImpulse2 = 0;
                                                                  }
                                                                  while(_loc5_);
                                                                  
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     continue loop33;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.m_groundAnchor2);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.§%!0§);
                                                                     addr272:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr273:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§;j§);
                                                                           addr275:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().m_xf);
                                                                              addr276:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().position);
                                                                                 addr277:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr278:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr279:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          addr280:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             addr406:
                                                                                             while(true)
                                                                                             {
                                                                                                this.m_u1 = new b2Vec2();
                                                                                                continue loop4;
                                                                                             }
                                                                                          }
                                                                                          continue loop18;
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
                                                            while(true)
                                                            {
                                                               this.m_localAnchor1.SetV(param1.§'G§);
                                                               §§goto(addr219);
                                                            }
                                                         }
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                      §§goto(addr98);
                                                   }
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
               }
            }
         }
         §§goto(addr334);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4!d.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || param1)
         {
            §§push(this.§&""§);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  §§goto(addr43);
               }
               §§goto(addr49);
            }
            §§goto(addr84);
         }
         addr43:
         §§push(this.m_u2.x);
         if(_loc3_)
         {
            addr49:
            §§push(§§pop() * §§pop());
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               §§push(this.§&""§);
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr88);
               }
               §§push(§§pop() * §§pop());
            }
         }
         addr88:
         §§push(§§pop() * §§pop());
         if(_loc3_ || _loc2_)
         {
            addr84:
            §§push(this.m_u2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §&!f§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§;j§.m_xf.position.Copy();
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.§2!3§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §?i§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§;j§.m_xf.position.Copy();
         if(!_loc2_)
         {
            _loc1_.§2!3§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::&A.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§;j§.m_xf.position.x);
         if(!(_loc7_ && this))
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§;j§.m_xf.position.y);
         if(_loc6_ || this)
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(_loc6_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_.x);
         if(_loc6_)
         {
            §§push(§§pop() - _loc2_);
            if(_loc6_)
            {
               addr95:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(!(_loc7_ && this))
            {
               §§push(§§pop() - _loc3_);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         }
         §§goto(addr95);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::4!d.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§;j§.m_xf.position.x);
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§;j§.m_xf.position.y);
         if(!_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor2.y);
            if(_loc7_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_.x);
         if(_loc7_ || this)
         {
            §§push(§§pop() - _loc2_);
            if(_loc7_ || _loc3_)
            {
               addr101:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(_loc7_)
            {
               §§push(§§pop() - _loc3_);
               if(!(_loc6_ && _loc2_))
               {
                  addr116:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr116);
         }
         §§goto(addr101);
      }
      
      public function §%!d§() : Number
      {
         return this.§2z§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc6_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         _loc2_ = b2internal::&A;
         _loc3_ = b2internal::4!d;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc28_ && param1))
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc27_ || _loc3_)
            {
               addr68:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc28_)
            {
               §§push(this.m_localAnchor1.y);
               if(_loc27_)
               {
                  §§push(_loc2_.m_sweep.localCenter.y);
                  if(_loc27_ || _loc3_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc27_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc27_ || param1)
                        {
                           _loc6_ = §§pop();
                           addr105:
                           §§push(_loc4_.col1.x);
                           if(_loc27_ || _loc2_)
                           {
                              addr115:
                              §§push(_loc5_);
                              if(_loc27_)
                              {
                                 addr118:
                                 §§push(§§pop() * §§pop());
                                 if(_loc27_ || this)
                                 {
                                    §§push(_loc4_.col2.x);
                                    if(_loc27_)
                                    {
                                       addr133:
                                       §§push(§§pop() + §§pop() * _loc6_);
                                       if(_loc27_ || _loc3_)
                                       {
                                       }
                                       var _loc7_:* = §§pop();
                                       if(_loc27_ || _loc2_)
                                       {
                                          §§push(_loc4_.col1.y);
                                          if(!(_loc28_ && param1))
                                          {
                                             §§push(_loc5_);
                                             if(!(_loc28_ && _loc2_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc28_ && _loc3_))
                                                {
                                                   §§push(_loc4_.col2.y);
                                                   if(_loc27_)
                                                   {
                                                      addr183:
                                                      §§push(§§pop() + §§pop() * _loc6_);
                                                      if(_loc27_ || this)
                                                      {
                                                         addr191:
                                                         §§push(Number(§§pop()));
                                                         if(_loc27_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(!_loc28_)
                                                            {
                                                               §§push(_loc7_);
                                                               if(!_loc27_)
                                                               {
                                                               }
                                                               addr201:
                                                               _loc5_ = §§pop();
                                                               addr202:
                                                               _loc4_ = _loc3_.m_xf.R;
                                                               §§push(this.m_localAnchor2.x);
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                                                  if(_loc27_ || _loc2_)
                                                                  {
                                                                     addr224:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc8_:* = §§pop();
                                                                  §§push(this.m_localAnchor2.y);
                                                                  if(_loc27_ || param1)
                                                                  {
                                                                     §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                                     if(_loc27_ || _loc2_)
                                                                     {
                                                                        addr248:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc9_:* = §§pop();
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§push(_loc4_.col1);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(!_loc28_)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc27_ || _loc3_)
                                                                                 {
                                                                                    §§push(_loc4_.col2);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr382:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          addr383:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr384:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   addr401:
                                                                                                   var _loc10_:Number = §§pop();
                                                                                                   addr400:
                                                                                                   §§push(_loc2_.m_sweep.c.y);
                                                                                                   if(!(_loc28_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc6_);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         addr417:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc11_:* = §§pop();
                                                                                                      §§push(_loc3_.m_sweep.c.x);
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc8_);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      var _loc12_:* = §§pop();
                                                                                                      §§push(_loc3_.m_sweep.c.y);
                                                                                                      if(_loc27_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc9_);
                                                                                                         if(_loc27_ || _loc3_)
                                                                                                         {
                                                                                                            addr451:
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         var _loc13_:* = §§pop();
                                                                                                         §§push(this.§;j§.m_xf.position.x);
                                                                                                         if(_loc27_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() + this.m_groundAnchor1.x);
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                         var _loc14_:* = §§pop();
                                                                                                         §§push(this.§;j§.m_xf.position.y);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            §§push(§§pop() + this.m_groundAnchor1.y);
                                                                                                            if(_loc27_ || this)
                                                                                                            {
                                                                                                               addr491:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc15_:* = §§pop();
                                                                                                            §§push(this.§;j§.m_xf.position.x);
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               §§push(§§pop() + this.m_groundAnchor2.x);
                                                                                                               if(!(_loc28_ && this))
                                                                                                               {
                                                                                                                  addr511:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc16_:* = §§pop();
                                                                                                               §§push(this.§;j§.m_xf.position.y);
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + this.m_groundAnchor2.y);
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               var _loc17_:* = §§pop();
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  §§push(this.m_u1);
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     §§push(_loc10_);
                                                                                                                     if(_loc27_ || param1)
                                                                                                                     {
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(!(_loc28_ && this))
                                                                                                                        {
                                                                                                                           addr551:
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           §§push(_loc11_);
                                                                                                                           if(!(_loc28_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr559:
                                                                                                                              §§push(§§pop() - _loc15_);
                                                                                                                           }
                                                                                                                           §§pop().Set(§§pop(),§§pop());
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              addr564:
                                                                                                                              §§push(this.m_u2);
                                                                                                                              §§push(_loc12_);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(_loc16_);
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    addr573:
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       addr576:
                                                                                                                                       §§push(§§pop() - _loc17_);
                                                                                                                                    }
                                                                                                                                    §§pop().Set(§§pop(),§§pop());
                                                                                                                                    §§push(this.m_u1.§,!t§());
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc18_:* = §§pop();
                                                                                                                                    §§push(this.m_u2.§,!t§());
                                                                                                                                    if(!(_loc28_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc19_:* = §§pop();
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc18_);
                                                                                                                                       if(!(_loc28_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(b2Settings.b2_linearSlop);
                                                                                                                                          if(_loc27_ || this)
                                                                                                                                          {
                                                                                                                                             if(§§pop() <= §§pop())
                                                                                                                                             {
                                                                                                                                                §§push(this.m_u1);
                                                                                                                                                if(!(_loc28_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§pop().§+J§();
                                                                                                                                                   loop13:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc28_)
                                                                                                                                                      {
                                                                                                                                                         loop14:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            if(!(_loc28_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(b2Settings.b2_linearSlop);
                                                                                                                                                               if(!(_loc28_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc27_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop13;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.m_u2);
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().§+J§();
                                                                                                                                                                        if(_loc27_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop14;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr618:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.m_u1);
                                                                                                                                                                                 addr696:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().§9""§(1 / _loc18_);
                                                                                                                                                                                    addr700:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop14;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr694:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr659:
                                                                                                                                                                        }
                                                                                                                                                                        §§push(this.§-#§);
                                                                                                                                                                        if(_loc27_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr739:
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              if(_loc27_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              addr737:
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           var _loc20_:* = §§pop();
                                                                                                                                                                           if(_loc27_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc28_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§=9§ = b2internal::]B;
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§&""§ = 0;
                                                                                                                                                                                          loop18:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             loop19:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                loop20:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.m_maxLength1);
                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.m_limitState1 = b2internal::4!S;
                                                                                                                                                                                                            loop28:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc27_ || _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop19;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               loop27:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop20;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(this.m_maxLength2);
                                                                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop() < §§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop18;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        this.m_limitState2 = b2internal::4!S;
                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr772:
                                                                                                                                                                                                                           if(!(_loc27_ || param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           loop21:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 loop22:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.m_limitImpulse2 = 0;
                                                                                                                                                                                                                                    addr785:
                                                                                                                                                                                                                                    loop23:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc28_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break loop21;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop18;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr831:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc27_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr882:
                                                                                                                                                                                                                                                addr882:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   this.m_limitImpulse1 = 0;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr882:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                                                                                §§goto(addr882);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop23;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop28;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop22;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                              §§goto(addr772);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.m_u1.y);
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr901:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr904:
                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * this.m_u1.x);
                                                                                                                                                                                                                                       break loop20;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break loop20;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break loop20;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           var _loc21_:Number = §§pop();
                                                                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                                                                           if(_loc27_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.m_u2.y);
                                                                                                                                                                                                                              if(!(_loc28_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                                                                    if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr959:
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop() * this.m_u2.x);
                                                                                                                                                                                                                                       if(_loc28_ && _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       var _loc22_:* = §§pop();
                                                                                                                                                                                                                                       if(!(_loc28_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                                                                          §§push(_loc2_.§3!q§);
                                                                                                                                                                                                                                          if(_loc27_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc2_.§2!1§);
                                                                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc21_);
                                                                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1661:
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1659:
                                                                                                                                                                                                                                                      §§push(§§pop() * _loc21_);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().m_limitMass1 = §§pop() + §§pop();
                                                                                                                                                                                                                                                   loop29:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                      §§push(_loc3_.§3!q§);
                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc3_.§2!1§);
                                                                                                                                                                                                                                                         if(!(_loc28_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                                                                            if(!(_loc28_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1635:
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(!_loc28_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().m_limitMass2 = §§pop() + §§pop();
                                                                                                                                                                                                                                                               loop30:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                                                                  §§push(this.m_limitMass1);
                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§2z§);
                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this.§2z§);
                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1595:
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1593:
                                                                                                                                                                                                                                                                              §§push(§§pop() * this.m_limitMass2);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().§%!F§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                           loop31:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              this.m_limitMass1 = 1 / this.m_limitMass1;
                                                                                                                                                                                                                                                                              loop32:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 this.m_limitMass2 = 1 / this.m_limitMass2;
                                                                                                                                                                                                                                                                                 loop33:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.§%!F§ = 1 / this.§%!F§;
                                                                                                                                                                                                                                                                                    loop34:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!param1.§9!w§)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          this.§&""§ = 0;
                                                                                                                                                                                                                                                                                          loop35:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             this.m_limitImpulse1 = 0;
                                                                                                                                                                                                                                                                                             loop36:
                                                                                                                                                                                                                                                                                             for(; _loc27_ || this; this.m_limitImpulse2 = 0,if(_loc28_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                             },if(!_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop35;
                                                                                                                                                                                                                                                                                             },if(_loc27_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break loop34;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         loop54:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop31;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            loop76:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(this.§2z§);
                                                                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                     if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(this.§&""§);
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                                                    if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1416:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr1420:
                                                                                                                                                                                                                                                                                                                                                §§push(this.m_u2);
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                   addr1423:
                                                                                                                                                                                                                                                                                                                                                   loop68:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1433:
                                                                                                                                                                                                                                                                                                                                                               if(_loc27_ || this)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1455:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                                     while(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                           addr1463:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(this.m_u1);
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc27_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 addr1474:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                    addr1475:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       continue loop76;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1488);
                                                                                                                                                                                                                                                                                                                                                                           continue loop68;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1486);
                                                                                                                                                                                                                                                                                                                                                                     addr1458:
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1482);
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1433);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1485);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1463);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1441:
                                                                                                                                                                                                                                                                                                                                                         _loc25_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                         continue loop54;
                                                                                                                                                                                                                                                                                                                                                         addr1431:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1462);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1420);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr1422:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1458);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1475);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1416:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1423);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1406:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1485);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr1403:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1491);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1431);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1416);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1264);
                                                                                                                                                                                                                                                                                                      §§push(_loc2_.§%!<§);
                                                                                                                                                                                                                                                                                                      §§goto(addr1492);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1211);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1135);
                                                                                                                                                                                                                                                                                             })
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                loop86:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop33;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1167:
                                                                                                                                                                                                                                                                                                   §§push(_loc3_.§%!<§);
                                                                                                                                                                                                                                                                                                   if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1080:
                                                                                                                                                                                                                                                                                                         §§push(_loc3_.§%!<§);
                                                                                                                                                                                                                                                                                                         if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc3_.§3!q§);
                                                                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1102:
                                                                                                                                                                                                                                                                                                                        if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1111:
                                                                                                                                                                                                                                                                                                                              §§push(_loc26_);
                                                                                                                                                                                                                                                                                                                              if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1120:
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1128:
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                             loop85:
                                                                                                                                                                                                                                                                                                                                             while(!(_loc27_ || param1))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                loop53:
                                                                                                                                                                                                                                                                                                                                                for(; !_loc28_; continue loop85)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc2_.§2!1§);
                                                                                                                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1197:
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr1207:
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop() * _loc23_);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1207);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr1210:
                                                                                                                                                                                                                                                                                                                                                                  §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                  addr1209:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           continue loop29;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        continue loop34;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     loop45:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc2_.§%!<§);
                                                                                                                                                                                                                                                                                                                                                                        addr1231:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc2_.§%!<§);
                                                                                                                                                                                                                                                                                                                                                                           addr1233:
                                                                                                                                                                                                                                                                                                                                                                           addr1266:
                                                                                                                                                                                                                                                                                                                                                                           while(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc2_.§3!q§);
                                                                                                                                                                                                                                                                                                                                                                                 addr1238:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                                                    addr1239:
                                                                                                                                                                                                                                                                                                                                                                                    loop50:
                                                                                                                                                                                                                                                                                                                                                                                    while(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          addr1248:
                                                                                                                                                                                                                                                                                                                                                                                          while(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                             continue loop53;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr1267:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc2_.§3!q§);
                                                                                                                                                                                                                                                                                                                                                                                             addr1269:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                                                                break loop50;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       addr1271:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          addr1272:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                             continue loop45;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1267);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop29;
                                                                                                                                                                                                                                                                                                                                                                  addr1211:
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1207);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1197);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1209);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1210);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(this);
                                                                                                                                                                                                                                                                                                                                                         §§push(this.§&""§);
                                                                                                                                                                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * param1.§[!4§);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§pop().§&""§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                         addr1544:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                                                                                                                                                                            §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * param1.§[!4§);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§pop().m_limitImpulse1 = §§pop();
                                                                                                                                                                                                                                                                                                                                                            break loop53;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1535:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(this);
                                                                                                                                                                                                                                                                                                                                                   §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * param1.§[!4§);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§pop().m_limitImpulse2 = §§pop();
                                                                                                                                                                                                                                                                                                                                                   loop90:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§&""§);
                                                                                                                                                                                                                                                                                                                                                      addr1482:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                         addr1483:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                                                                                                                            addr1485:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                               addr1486:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(this.m_u1);
                                                                                                                                                                                                                                                                                                                                                                  addr1488:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                     addr1489:
                                                                                                                                                                                                                                                                                                                                                                     loop67:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                        addr1490:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                           addr1491:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                              addr1492:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue loop90;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue loop32;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1544);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              continue loop90;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           continue loop67;
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
                                                                                                                                                                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                             §§push(_loc3_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                                                             if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc3_.§2!1§);
                                                                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc26_);
                                                                                                                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1053:
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1063:
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop() * _loc25_);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1063);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1066:
                                                                                                                                                                                                                                                                                                                                                         §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                         addr1065:
                                                                                                                                                                                                                                                                                                                                                         break loop36;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1063);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1053);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1065);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1066);
                                                                                                                                                                                                                                                                                                                                             addr1135:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1236);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1248);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc3_.§3!q§);
                                                                                                                                                                                                                                                                                                                                          addr1153:
                                                                                                                                                                                                                                                                                                                                          while(_loc27_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc25_);
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                            continue loop86;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1269);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1102);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1271);
                                                                                                                                                                                                                                                                                                                                                   addr1159:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1111);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1239);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1238);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1151:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1269);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1153);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1156);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1247);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1159);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1120);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1272);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1128);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1233);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr1080);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1150:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1151);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1231);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(!_loc28_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc3_.§%!<§);
                                                                                                                                                                                                                                                                                                         §§goto(addr1167);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1266);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1264:
                                                                                                                                                                                                                                                                                                      addr1146:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1150);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr977);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1535);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr977:
                                                                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop30;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc28_ && _loc2_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(this.§2z§);
                                                                                                                                                                                                                                                                              if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(-§§pop());
                                                                                                                                                                                                                                                                                 if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1292:
                                                                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(this.§&""§);
                                                                                                                                                                                                                                                                                             if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1317:
                                                                                                                                                                                                                                                                                                      §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                               if(!_loc28_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc28_ && _loc2_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc27_ || this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(this.m_u2);
                                                                                                                                                                                                                                                                                                                           if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1364:
                                                                                                                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1374:
                                                                                                                                                                                                                                                                                                                                    if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1382);
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1474);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1382);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1403);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1422);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1490);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1406);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1441);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1374);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1489);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1423);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1364);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1374);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1473);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1364);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1483);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1416);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1441);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1317);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1292);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1593);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1595);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1635);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1659);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1661);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1007);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr959);
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr959);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr785);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr901);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr904);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.m_limitState1 = b2internal::]B;
                                                                                                                                                                                                            §§goto(addr882);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr878:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                if(_loc28_ && _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr919);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr779);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr882);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§=9§ = b2internal::4!S;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr888);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr878);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr904);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr737);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr655:
                                                                                                                                                                        §§pop().§9""§(1 / _loc19_);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr659);
                                                                                                                                                               }
                                                                                                                                                               addr734:
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(_loc28_)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr737);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr721:
                                                                                                                                                         §§push(this.§2z§);
                                                                                                                                                         if(!_loc28_)
                                                                                                                                                         {
                                                                                                                                                            addr725:
                                                                                                                                                            §§push(§§pop() * _loc19_);
                                                                                                                                                            if(!(_loc28_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr734);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr739);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr734);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr700);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr696);
                                                                                                                                             }
                                                                                                                                             §§goto(addr694);
                                                                                                                                          }
                                                                                                                                          §§goto(addr725);
                                                                                                                                       }
                                                                                                                                       §§goto(addr721);
                                                                                                                                    }
                                                                                                                                    §§goto(addr618);
                                                                                                                                 }
                                                                                                                                 §§goto(addr576);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr573);
                                                                                                                        }
                                                                                                                        §§goto(addr559);
                                                                                                                     }
                                                                                                                     §§goto(addr551);
                                                                                                                  }
                                                                                                                  §§goto(addr573);
                                                                                                               }
                                                                                                               §§goto(addr564);
                                                                                                            }
                                                                                                            §§goto(addr511);
                                                                                                         }
                                                                                                         §§goto(addr491);
                                                                                                      }
                                                                                                      §§goto(addr451);
                                                                                                   }
                                                                                                   §§goto(addr417);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr327:
                                                                                       §§push(_loc4_.col2);
                                                                                       if(_loc28_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop().y);
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          addr339:
                                                                                          §§push(_loc9_);
                                                                                          if(_loc27_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                addr350:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc27_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop9:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc9_ = §§pop();
                                                                                                         addr362:
                                                                                                         addr396:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            if(_loc28_ && _loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         §§push(§§pop() + _loc5_);
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            §§goto(addr400);
                                                                                                         }
                                                                                                         §§goto(addr401);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      §§goto(addr389);
                                                                                                   }
                                                                                                   addr388:
                                                                                                }
                                                                                                §§goto(addr401);
                                                                                             }
                                                                                             §§goto(addr396);
                                                                                          }
                                                                                          §§goto(addr383);
                                                                                       }
                                                                                       §§goto(addr350);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr388);
                                                                                 }
                                                                              }
                                                                              §§goto(addr384);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr396);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.col1);
                                                                              if(_loc28_ && this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr297);
                                                                              §§push(§§pop().y);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                                  §§goto(addr248);
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            §§goto(addr202);
                                                         }
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr183);
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr201);
                                    }
                                 }
                                 §§goto(addr133);
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr133);
                           }
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr118);
               }
               §§goto(addr115);
            }
            §§goto(addr105);
         }
         §§goto(addr68);
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
         var _loc2_:b2Body = b2internal::&A;
         var _loc3_:b2Body = b2internal::4!d;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc21_ || _loc3_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!_loc22_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc21_ || this)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc21_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc4_.col1.x);
         if(_loc21_ || this)
         {
            §§push(_loc5_);
            if(_loc21_)
            {
               §§push(§§pop() * §§pop());
               if(_loc21_)
               {
                  addr106:
                  §§push(_loc4_.col2.x);
                  if(!_loc22_)
                  {
                     addr111:
                     §§push(§§pop() * _loc6_);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc22_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc7_:* = §§pop();
               if(!_loc22_)
               {
                  §§push(_loc4_.col1.y);
                  if(_loc21_ || _loc2_)
                  {
                     §§push(_loc5_);
                     if(!_loc22_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc21_ || param1)
                        {
                           §§push(_loc4_.col2.y);
                           if(!(_loc22_ && _loc2_))
                           {
                              addr151:
                              §§push(§§pop() * _loc6_);
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc22_ && _loc3_))
                           {
                              addr161:
                              §§push(Number(§§pop()));
                              if(_loc21_)
                              {
                                 _loc6_ = §§pop();
                                 if(!_loc22_)
                                 {
                                    addr167:
                                    §§push(_loc7_);
                                    if(_loc21_)
                                    {
                                       addr170:
                                       §§push(Number(§§pop()));
                                    }
                                    _loc5_ = §§pop();
                                 }
                                 _loc4_ = _loc3_.m_xf.R;
                                 §§push(this.m_localAnchor2.x);
                                 if(!_loc22_)
                                 {
                                    §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                    if(!(_loc22_ && this))
                                    {
                                       addr194:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(this.m_localAnchor2.y);
                                    if(!_loc22_)
                                    {
                                       §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                       if(_loc21_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc9_:* = §§pop();
                                    if(!(_loc22_ && _loc3_))
                                    {
                                       §§push(_loc4_.col1);
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr2243:
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             addr2244:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr2245:
                                                while(true)
                                                {
                                                   §§push(_loc4_.col2);
                                                   addr2247:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr2248:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_);
                                                         addr2249:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr2250:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr2251:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr2252:
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
                                    §§goto(addr1072);
                                 }
                                 §§goto(addr194);
                              }
                           }
                        }
                        §§goto(addr170);
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr161);
               }
               §§goto(addr167);
            }
            §§goto(addr111);
         }
         §§goto(addr106);
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
