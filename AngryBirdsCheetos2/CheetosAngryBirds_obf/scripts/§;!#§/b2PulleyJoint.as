package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §6!H§.b2Mat22;
   import §6!H§.b2Math;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §7?§:Number = 2.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7?§ = 2;
         }
      }
      
      private var §@!e§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §7-§:Number;
      
      private var § !K§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §?E§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §==§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §><§:int;
      
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
               loop1:
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  while(true)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.m_u1 = new b2Vec2();
                        loop4:
                        for(; !_loc6_; while(true)
                        {
                           if(!(_loc5_ || _loc3_))
                           {
                              continue loop4;
                           }
                           §§goto(addr375);
                        },§§goto(addr358))
                        {
                           this.m_u2 = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              super(param1);
                              addr122:
                              if(!(_loc6_ && _loc3_))
                              {
                                 this.§==§ = 0;
                                 loop34:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop3;
                                    }
                                    loop33:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          if(!(_loc5_ || this))
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr122);
                                       }
                                       else
                                       {
                                          loop28:
                                          while(true)
                                          {
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                addr227:
                                                if(!(_loc5_ || this))
                                                {
                                                   break;
                                                }
                                                this.m_localAnchor2.SetV(param1.§"!'§);
                                                loop29:
                                                while(true)
                                                {
                                                   this.§ !K§ = param1.§[!G§;
                                                   loop30:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ || _loc3_))
                                                      {
                                                         continue loop29;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this);
                                                      §§push(param1.§1!^§);
                                                      if(_loc5_)
                                                      {
                                                         §§push(this.§ !K§);
                                                         if(_loc5_ || param1)
                                                         {
                                                            §§push(§§pop() * param1.§`;§);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().§7-§ = §§pop();
                                                      while(_loc5_)
                                                      {
                                                         §§push(this);
                                                         §§push(b2Math);
                                                         §§push(param1.§`F§);
                                                         §§push(this.§7-§);
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            §§push(this.§ !K§);
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               §§push(§§pop() * b2internal::7?);
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                         }
                                                         §§pop().m_maxLength1 = §§pop().§?I§(§§pop(),§§pop());
                                                         do
                                                         {
                                                            §§push(this);
                                                            §§push(b2Math);
                                                            §§push(param1.§-!?§);
                                                            §§push(this.§7-§);
                                                            if(_loc5_)
                                                            {
                                                               §§push(b2internal::7?);
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     addr110:
                                                                     §§push(§§pop() / this.§ !K§);
                                                                  }
                                                                  §§pop().m_maxLength2 = §§pop().§?I§(§§pop(),§§pop());
                                                                  continue loop33;
                                                               }
                                                            }
                                                            §§goto(addr110);
                                                         }
                                                         while(!(_loc5_ || this));
                                                         
                                                         if(_loc5_)
                                                         {
                                                            return;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.m_localAnchor1.SetV(param1.§!!U§);
                                                         continue loop28;
                                                      }
                                                      addr57:
                                                      if(!(_loc5_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         this.m_limitImpulse2 = 0;
                                                         if(_loc6_)
                                                         {
                                                            continue loop34;
                                                         }
                                                         §§goto(addr36);
                                                         addr66:
                                                      }
                                                      else
                                                      {
                                                         addr382:
                                                         while(true)
                                                         {
                                                            §§push(this.m_groundAnchor1);
                                                            addr358:
                                                            while(true)
                                                            {
                                                               §§push(param1.§-!'§);
                                                               addr360:
                                                               addr375:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr361:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§@!e§);
                                                                     addr363:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().m_xf);
                                                                        addr364:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().position);
                                                                           addr365:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr366:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 addr367:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    continue loop4;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§push(this.m_groundAnchor1);
                                                               if(_loc6_ && _loc3_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(param1.§-!'§);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           §§push(this.§@!e§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop().m_xf);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop().position);
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr353:
                                                                                       §§pop().y = §§pop() - §§pop();
                                                                                       break loop30;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr365);
                                                                                 }
                                                                                 §§goto(addr366);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr364);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr363);
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr361);
                                                                        }
                                                                     }
                                                                     §§goto(addr367);
                                                                  }
                                                                  §§goto(addr353);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr360);
                                                               }
                                                            }
                                                         }
                                                         addr382:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.m_groundAnchor2);
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(param1.§8?§);
                                                         addr287:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            addr288:
                                                            while(true)
                                                            {
                                                               §§push(this.§@!e§);
                                                               addr290:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().m_xf);
                                                                  addr291:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().position);
                                                                     addr292:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr293:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           addr294:
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              addr295:
                                                                              while(!_loc6_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop1;
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
                                             §§goto(addr295);
                                          }
                                          while(true)
                                          {
                                             this.§@!e§ = b2internal::6z.m_world.m_groundBody;
                                             §§goto(addr382);
                                             §§goto(addr227);
                                          }
                                          addr387:
                                       }
                                    }
                                    continue loop5;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        continue loop0;
                     }
                     if(!(_loc5_ || _loc2_))
                     {
                        continue;
                     }
                     this.m_limitImpulse1 = 0;
                     §§goto(addr50);
                  }
               }
            }
         }
         §§goto(addr387);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::3D.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || _loc2_)
         {
            §§push(this.§==§);
            if(!_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc2_)
               {
                  §§push(this.m_u2.x);
                  if(!(_loc2_ && this))
                  {
                     addr54:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§push(this.§==§);
                        if(!(_loc2_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc2_)
                           {
                              addr82:
                              §§push(§§pop() * this.m_u2.y);
                           }
                           return new §§pop().b2Vec2(§§pop(),§§pop());
                        }
                        §§goto(addr82);
                     }
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr82);
         }
         §§goto(addr54);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §#2§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Vec2 = this.§@!e§.m_xf.position.Copy();
         if(_loc2_)
         {
            _loc1_.§!!,§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §4C§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Vec2 = this.§@!e§.m_xf.position.Copy();
         if(_loc2_)
         {
            _loc1_.§!!,§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::6z.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§@!e§.m_xf.position.x);
         if(_loc7_ || _loc3_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(_loc7_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§@!e§.m_xf.position.y);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop() + this.m_groundAnchor1.y);
               if(!(_loc6_ && _loc3_))
               {
                  addr76:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc1_.x);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop() - _loc2_);
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(_loc7_)
               {
                  §§push(§§pop() - _loc3_);
                  if(!_loc6_)
                  {
                     addr101:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               }
               §§goto(addr101);
            }
            §§goto(addr76);
         }
         §§goto(addr41);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::3D.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§@!e§.m_xf.position.x);
         if(!(_loc7_ && _loc3_))
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc6_ || this)
            {
               addr45:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§@!e§.m_xf.position.y);
            if(!(_loc7_ && _loc2_))
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(!_loc7_)
            {
               §§push(§§pop() - _loc2_);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(_loc6_ || _loc1_)
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
         §§goto(addr45);
      }
      
      public function §]j§() : Number
      {
         return this.§ !K§;
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
         _loc2_ = b2internal::6z;
         _loc3_ = b2internal::3D;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc27_ && _loc2_))
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!_loc27_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!(_loc27_ && this))
         {
            §§push(this.m_localAnchor1.y);
            if(!_loc27_)
            {
               §§push(_loc2_.m_sweep.localCenter.y);
               if(_loc28_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc28_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc28_ || _loc2_)
                     {
                        _loc6_ = §§pop();
                        addr96:
                        §§push(_loc4_.col1.x);
                        if(_loc28_)
                        {
                           §§push(_loc5_);
                           if(!_loc27_)
                           {
                              addr104:
                              §§push(§§pop() * §§pop());
                              if(!(_loc27_ && this))
                              {
                                 §§push(_loc4_.col2.x);
                                 if(!_loc27_)
                                 {
                                    addr117:
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc27_)
                                 {
                                    addr123:
                                    var _loc7_:* = Number(§§pop());
                                    if(_loc28_)
                                    {
                                       §§push(_loc4_.col1.y);
                                       if(_loc28_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc28_ || _loc2_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc28_ || _loc3_)
                                             {
                                                §§push(_loc4_.col2.y);
                                                if(!(_loc27_ && _loc3_))
                                                {
                                                   addr157:
                                                   §§push(§§pop() * _loc6_);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc28_ || this)
                                                {
                                                   addr167:
                                                   §§push(Number(§§pop()));
                                                   if(_loc28_ || param1)
                                                   {
                                                      addr175:
                                                      _loc6_ = §§pop();
                                                      if(_loc28_ || param1)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!_loc28_)
                                                         {
                                                         }
                                                         addr187:
                                                         _loc5_ = §§pop();
                                                         addr188:
                                                         _loc4_ = _loc3_.m_xf.R;
                                                         §§push(this.m_localAnchor2.x);
                                                         if(_loc28_ || _loc3_)
                                                         {
                                                            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                                            if(!(_loc27_ && _loc3_))
                                                            {
                                                               addr215:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc8_:* = §§pop();
                                                            §§push(this.m_localAnchor2.y);
                                                            if(!_loc27_)
                                                            {
                                                               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                               if(!_loc27_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc9_:* = §§pop();
                                                            if(_loc28_)
                                                            {
                                                               §§push(_loc4_.col1);
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  loop1:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_.col2);
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              loop5:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             addr334:
                                                                                             _loc7_ = §§pop();
                                                                                             loop8:
                                                                                             while(true)
                                                                                             {
                                                                                                loop9:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_.col1);
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(_loc28_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc28_ || this)
                                                                                                         {
                                                                                                            §§push(_loc4_.col2);
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               §§push(_loc9_);
                                                                                                               if(!(_loc28_ || _loc3_))
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  addr296:
                                                                                                                  if(_loc28_)
                                                                                                                  {
                                                                                                                     if(!(_loc27_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        loop10:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                              if(!(_loc28_ || _loc2_))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              _loc9_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(_loc28_)
                                                                                                                                       {
                                                                                                                                          addr243:
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             continue loop8;
                                                                                                                                          }
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             continue loop9;
                                                                                                                                          }
                                                                                                                                          §§push(_loc2_.m_sweep.c.x);
                                                                                                                                          if(!(_loc27_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr348:
                                                                                                                                             §§push(§§pop() + _loc5_);
                                                                                                                                             if(_loc28_)
                                                                                                                                             {
                                                                                                                                                addr351:
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr351);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop10;
                                                                                                                                 }
                                                                                                                                 §§goto(addr243);
                                                                                                                              }
                                                                                                                              var _loc10_:* = §§pop();
                                                                                                                              §§push(_loc2_.m_sweep.c.y);
                                                                                                                              if(!(_loc27_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + _loc6_);
                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                 {
                                                                                                                                    addr373:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc11_:* = §§pop();
                                                                                                                                 §§push(_loc3_.m_sweep.c.x);
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + _loc8_);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       addr385:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc12_:* = §§pop();
                                                                                                                                    §§push(_loc3_.m_sweep.c.y);
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + _loc9_);
                                                                                                                                       if(_loc28_ || param1)
                                                                                                                                       {
                                                                                                                                          addr402:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc13_:* = §§pop();
                                                                                                                                       §§push(this.§@!e§.m_xf.position.x);
                                                                                                                                       if(!(_loc27_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + this.m_groundAnchor1.x);
                                                                                                                                          if(_loc28_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       var _loc14_:* = §§pop();
                                                                                                                                       §§push(this.§@!e§.m_xf.position.y);
                                                                                                                                       if(_loc28_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + this.m_groundAnchor1.y);
                                                                                                                                          if(_loc28_)
                                                                                                                                          {
                                                                                                                                             addr442:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          var _loc15_:* = §§pop();
                                                                                                                                          §§push(this.§@!e§.m_xf.position.x);
                                                                                                                                          if(_loc28_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + this.m_groundAnchor2.x);
                                                                                                                                             if(!(_loc27_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          var _loc16_:* = §§pop();
                                                                                                                                          §§push(this.§@!e§.m_xf.position.y);
                                                                                                                                          if(!(_loc27_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + this.m_groundAnchor2.y);
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                addr487:
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             var _loc17_:* = §§pop();
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(this.m_u1);
                                                                                                                                                if(_loc28_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      if(!(_loc27_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr512:
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                         if(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            addr515:
                                                                                                                                                            §§push(§§pop() - _loc15_);
                                                                                                                                                         }
                                                                                                                                                         §§pop().Set(§§pop(),§§pop());
                                                                                                                                                         if(_loc28_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.m_u2);
                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                               if(_loc28_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr539:
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                  if(!(_loc27_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr547:
                                                                                                                                                                     §§push(§§pop() - _loc17_);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().Set(§§pop(),§§pop());
                                                                                                                                                                  §§push(this.m_u1.§2P§());
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  var _loc18_:* = §§pop();
                                                                                                                                                                  §§push(this.m_u2.§2P§());
                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  var _loc19_:* = §§pop();
                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                     if(!(_loc27_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(b2Settings.b2_linearSlop);
                                                                                                                                                                        loop12:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc27_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr652:
                                                                                                                                                                                 this.m_u1.§[!T§(1 / _loc18_);
                                                                                                                                                                              }
                                                                                                                                                                              loop13:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 loop14:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                    if(!(_loc27_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(b2Settings.b2_linearSlop);
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop12;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc27_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr616:
                                                                                                                                                                                                this.m_u2.§[!T§(1 / _loc19_);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr620:
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr657:
                                                                                                                                                                                             §§push(this.§7-§);
                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr672:
                                                                                                                                                                                                      §§push(this.§ !K§);
                                                                                                                                                                                                      if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr681:
                                                                                                                                                                                                         §§push(§§pop() * _loc19_);
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr685:
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         var _loc20_:* = §§pop();
                                                                                                                                                                                                         if(_loc28_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§><§ = b2internal::9!d;
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§==§ = 0;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop16:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                           if(_loc28_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.m_maxLength1);
                                                                                                                                                                                                                              loop17:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc28_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.m_limitState1 = b2internal::9!d;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.m_limitImpulse1 = 0;
                                                                                                                                                                                                                                       addr800:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr823:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.m_limitState1 = b2internal::6!f;
                                                                                                                                                                                                                                    addr795:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr795:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                    if(!(_loc27_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.m_maxLength2);
                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - §§pop() * this.m_u1.x);
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr880:
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             break loop16;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr873:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop17;
                                                                                                                                                                                                                                       break loop16;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                    §§goto(addr795);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr847:
                                                                                                                                                                                                                                 §§push(this.m_u1.y);
                                                                                                                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr857:
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                       if(_loc28_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr873);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr880);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr873);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                           addr839:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        var _loc21_:* = §§pop();
                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                        if(!(_loc27_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.m_u2.y);
                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr919:
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                                                                 if(!(_loc27_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * this.m_u2.x);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              var _loc22_:* = §§pop();
                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                                                                 §§push(_loc2_.§+5§);
                                                                                                                                                                                                                                 if(_loc28_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc2_.§%L§);
                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc21_);
                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1677:
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1675:
                                                                                                                                                                                                                                             §§push(§§pop() * _loc21_);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().m_limitMass1 = §§pop() + §§pop();
                                                                                                                                                                                                                                          loop27:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                                                                             §§push(_loc3_.§+5§);
                                                                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc3_.§%L§);
                                                                                                                                                                                                                                                if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1642:
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1640:
                                                                                                                                                                                                                                                         §§push(§§pop() * _loc22_);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().m_limitMass2 = §§pop() + §§pop();
                                                                                                                                                                                                                                                      loop28:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this);
                                                                                                                                                                                                                                                         §§push(this.m_limitMass1);
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§ !K§);
                                                                                                                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§ !K§);
                                                                                                                                                                                                                                                               if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1616:
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1614:
                                                                                                                                                                                                                                                                     §§push(§§pop() * this.m_limitMass2);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§pop().§?E§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                  loop29:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     this.m_limitMass1 = 1 / this.m_limitMass1;
                                                                                                                                                                                                                                                                     loop30:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        this.m_limitMass2 = 1 / this.m_limitMass2;
                                                                                                                                                                                                                                                                        loop31:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           this.§?E§ = 1 / this.§?E§;
                                                                                                                                                                                                                                                                           loop32:
                                                                                                                                                                                                                                                                           for(; _loc28_; if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                           },if(_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop27;
                                                                                                                                                                                                                                                                           },§§push(_loc2_),§§push(_loc2_.m_angularVelocity),if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc2_.§%L§);
                                                                                                                                                                                                                                                                              if(_loc28_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                 if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc24_);
                                                                                                                                                                                                                                                                                    if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1221:
                                                                                                                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                                                                                                                          if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1218:
                                                                                                                                                                                                                                                                                             §§push(§§pop() * _loc23_);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1223);
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1221);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1218);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1221);
                                                                                                                                                                                                                                                                           },§§goto(addr1223))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!param1.§7!^§)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 this.§==§ = 0;
                                                                                                                                                                                                                                                                                 loop33:
                                                                                                                                                                                                                                                                                 for(; _loc28_; while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.m_limitImpulse2 = 0;
                                                                                                                                                                                                                                                                                    if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop30;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop33;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 })
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc28_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc28_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             this.m_limitImpulse1 = 0;
                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          loop83:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(this.§==§);
                                                                                                                                                                                                                                                                                                loop45:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                                                                                                                                                                   loop46:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(this.m_u1);
                                                                                                                                                                                                                                                                                                            addr1511:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1379:
                                                                                                                                                                                                                                                                                                            if(_loc27_ && param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(this.m_u2);
                                                                                                                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               loop60:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                  loop63:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        loop61:
                                                                                                                                                                                                                                                                                                                        for(; !_loc27_; continue loop63)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           loop62:
                                                                                                                                                                                                                                                                                                                           while(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc25_ = §§pop();
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(this.§ !K§);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop45;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(this.§==§);
                                                                                                                                                                                                                                                                                                                                       addr1426:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1424:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1335:
                                                                                                                                                                                                                                                                                                                                    if(_loc28_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc28_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop63;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1512:
                                                                                                                                                                                                                                                                                                                                             if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop62;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1379);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      while(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1424);
                                                                                                                                                                                                                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1416:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                      continue loop31;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop31;
                                                                                                                                                                                                                                                                                                                                                   addr1491:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr1396:
                                                                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   _loc26_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc2_.§2!@§);
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1274:
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc2_.§2!@§.x);
                                                                                                                                                                                                                                                                                                                                                            addr1275:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1277:
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc2_.§+5§);
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                               addr1278:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                  addr1279:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1280:
                                                                                                                                                                                                                                                                                                                                                                     addr1281:
                                                                                                                                                                                                                                                                                                                                                                     §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           continue loop29;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        addr1515:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§==§);
                                                                                                                                                                                                                                                                                                                                                                           addr1474:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1280);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop29;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1272:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1549:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                                                                                                                                                                            §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * param1.§,K§);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§pop().m_limitImpulse2 = §§pop();
                                                                                                                                                                                                                                                                                                                                                            continue loop83;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                                                                                                                                                                            §§push(this.§==§);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * param1.§,K§);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§pop().§==§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                            addr1558:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                                                                                                                                                                               §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * param1.§,K§);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§pop().m_limitImpulse1 = §§pop();
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1544);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1544:
                                                                                                                                                                                                                                                                                                                                                         addr1549:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1405:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(this.m_limitImpulse1);
                                                                                                                                                                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(this.m_u1);
                                                                                                                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                            break loop62;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1487:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1491);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1487);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1511);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                break loop61;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1512:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1426);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1391:
                                                                                                                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                          if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1396);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1487);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(this.m_limitImpulse2);
                                                                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                       if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(this.m_u2);
                                                                                                                                                                                                                                                                                                                                             continue loop60;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop46;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop61;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop63;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1474);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(_loc28_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr1491);
                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                              §§goto(addr1515);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr1514);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1462);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1391);
                                                                                                                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1512);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1549);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc3_.§2!@§);
                                                                                                                                                                                                                                                                                                loop35:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc3_.§2!@§);
                                                                                                                                                                                                                                                                                                   addr1140:
                                                                                                                                                                                                                                                                                                   while(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                      while(_loc28_ || this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc3_.§+5§);
                                                                                                                                                                                                                                                                                                            loop38:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc25_);
                                                                                                                                                                                                                                                                                                               addr1160:
                                                                                                                                                                                                                                                                                                               while(_loc28_ || _loc2_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     addr1169:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                        continue loop35;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1080:
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop38;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            while(_loc28_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr1244);
                                                                                                                                                                                                                                                                                                               §§push(_loc2_.§+5§);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1275);
                                                                                                                                                                                                                                                                                                            addr1240:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1247);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                         addr1257:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop32;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1405);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop32;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1274);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1223:
                                                                                                                                                                                                                                                                                             §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1558);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1125);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1037);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1281);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1257);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1512);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1170);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1549);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop28;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc27_ && param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr923);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1614);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1616);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1640);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1642);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1675);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1677);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr957);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                           if(!(_loc27_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr919);
                                                                                                                                                                                                                        while(!(_loc27_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.m_limitState2 = b2internal::9!d;
                                                                                                                                                                                                                           §§goto(addr786);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§><§ = b2internal::6!f;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr839);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr857);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr880);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr685);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr672);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.m_u2);
                                                                                                                                                                                             if(!(_loc27_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().§7_§();
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc28_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr631:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop14;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr631:
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr620);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr657);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr616);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr616);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr681);
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr693:
                                                                                                                                                                                 §§goto(addr685);
                                                                                                                                                                              }
                                                                                                                                                                              addr656:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.m_u1);
                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().§7_§();
                                                                                                                                                                                 §§goto(addr631);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr652);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr652);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr693);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr631);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr547);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr539);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr515);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr512);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr539);
                                                                                                                                          }
                                                                                                                                          §§goto(addr487);
                                                                                                                                       }
                                                                                                                                       §§goto(addr442);
                                                                                                                                    }
                                                                                                                                    §§goto(addr402);
                                                                                                                                 }
                                                                                                                                 §§goto(addr385);
                                                                                                                              }
                                                                                                                              §§goto(addr373);
                                                                                                                           }
                                                                                                                           §§goto(addr351);
                                                                                                                        }
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               §§goto(addr348);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr351);
                                                                                                      }
                                                                                                      §§goto(addr296);
                                                                                                   }
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr351);
                                                                                       }
                                                                                       §§goto(addr334);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr317);
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                      §§goto(addr188);
                                                   }
                                                   §§goto(addr187);
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr175);
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr157);
                                       }
                                    }
                                    §§goto(addr187);
                                 }
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr117);
                        }
                     }
                  }
                  §§goto(addr123);
               }
               §§goto(addr104);
            }
            §§goto(addr123);
         }
         §§goto(addr96);
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
