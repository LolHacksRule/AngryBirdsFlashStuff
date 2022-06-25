package §9!"§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §>H§.b2Mat22;
   import §>H§.b2Math;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §3!i§:Number = 2.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3!i§ = 2;
         }
      }
      
      private var §#!U§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §%E§:Number;
      
      private var §6!K§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §5!!§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §,!2§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §>E§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!_loc6_)
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
                  addr398:
                  while(true)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     continue loop1;
                  }
               }
               while(true)
               {
                  if(_loc6_ && _loc2_)
                  {
                     continue loop0;
                  }
                  §§goto(addr338);
               }
               §§goto(addr327);
            }
         }
         §§goto(addr183);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6!G.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::0!w.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§,!2§);
            if(_loc3_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || _loc3_)
               {
                  §§push(this.m_u2.x);
                  if(!_loc2_)
                  {
                     addr64:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc3_ || this)
                     {
                        addr72:
                        §§push(this.§,!2§);
                        if(_loc3_)
                        {
                           §§goto(addr88);
                        }
                        §§push(§§pop() * §§pop());
                     }
                  }
                  addr88:
                  §§push(§§pop() * §§pop());
                  if(!(_loc2_ && this))
                  {
                     §§push(this.m_u2.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
               §§goto(addr64);
            }
            §§goto(addr72);
         }
         §§goto(addr64);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §,!?§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§#!U§.m_xf.position.Copy();
         if(_loc3_)
         {
            _loc1_.§7x§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §=!§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Vec2 = this.§#!U§.m_xf.position.Copy();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.§7x§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::6!G.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§#!U§.m_xf.position.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!(_loc6_ && _loc3_))
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§#!U§.m_xf.position.y);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() + this.m_groundAnchor1.y);
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(_loc7_)
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
               if(!(_loc6_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         }
         §§goto(addr41);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::0!w.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§#!U§.m_xf.position.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc7_ || _loc1_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§#!U§.m_xf.position.y);
         if(!_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor2.y);
            if(_loc7_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_.x);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() - _loc2_);
            if(_loc7_)
            {
               addr96:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(_loc7_ || _loc1_)
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
         §§goto(addr96);
      }
      
      public function §>!B§() : Number
      {
         return this.§6!K§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc6_:* = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         _loc2_ = b2internal::6!G;
         _loc3_ = b2internal::0!w;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc27_ && _loc3_))
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc28_)
            {
               addr64:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc28_)
            {
               §§push(this.m_localAnchor1.y);
               if(_loc28_)
               {
                  §§push(_loc2_.m_sweep.localCenter.y);
                  if(_loc28_ || param1)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc27_ && param1))
                     {
                        addr92:
                        §§push(Number(§§pop()));
                        if(!_loc27_)
                        {
                           _loc6_ = §§pop();
                           addr96:
                           §§push(_loc4_.col1.x);
                           if(_loc28_)
                           {
                              §§push(_loc5_);
                              if(!(_loc27_ && this))
                              {
                                 addr109:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc27_ && this))
                                 {
                                    addr117:
                                    §§push(_loc4_.col2.x);
                                    if(!_loc27_)
                                    {
                                       addr122:
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc28_ || param1)
                                    {
                                    }
                                    addr133:
                                    var _loc7_:* = §§pop();
                                    if(_loc28_)
                                    {
                                       §§push(_loc4_.col1.y);
                                       if(!(_loc27_ && _loc2_))
                                       {
                                          §§push(_loc5_);
                                          if(_loc28_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc27_)
                                             {
                                                addr152:
                                                §§push(_loc4_.col2.y);
                                                if(_loc28_)
                                                {
                                                   addr159:
                                                   §§push(§§pop() + §§pop() * _loc6_);
                                                   if(!_loc27_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc27_ && param1))
                                                      {
                                                         _loc6_ = §§pop();
                                                         if(_loc28_ || param1)
                                                         {
                                                            §§push(_loc7_);
                                                            if(_loc28_)
                                                            {
                                                               addr181:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc5_ = §§pop();
                                                            addr183:
                                                            _loc4_ = _loc3_.m_xf.R;
                                                            §§push(this.m_localAnchor2.x);
                                                            if(!_loc27_)
                                                            {
                                                               §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                                               if(_loc28_ || param1)
                                                               {
                                                                  addr205:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc8_:* = §§pop();
                                                               §§push(this.m_localAnchor2.y);
                                                               if(_loc28_ || this)
                                                               {
                                                                  §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                                  if(!(_loc27_ && this))
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
                                                                           if(!(_loc27_ && this))
                                                                           {
                                                                              §§push(_loc4_.col2);
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr365:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    addr366:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          loop7:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop8:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                loop9:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop10:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_.col1);
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(!(_loc27_ && param1))
                                                                                                         {
                                                                                                            if(!(_loc28_ || _loc3_))
                                                                                                            {
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            §§push(_loc8_);
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               if(_loc27_ && param1)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc28_ || param1)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               loop12:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc9_ = §§pop();
                                                                                                                  do
                                                                                                                  {
                                                                                                                     if(_loc27_ && this)
                                                                                                                     {
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(!(_loc28_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!(_loc28_ || param1))
                                                                                                                              {
                                                                                                                                 break loop10;
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     addr338:
                                                                                                                     addr377:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                     §§push(_loc5_);
                                                                                                                  }
                                                                                                                  while(_loc8_ = §§pop(), !_loc28_);
                                                                                                                  
                                                                                                                  addr260:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_.m_sweep.c.x);
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           §§goto(addr377);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  addr382:
                                                                                                                  var _loc10_:* = §§pop();
                                                                                                                  §§push(_loc2_.m_sweep.c.y);
                                                                                                                  if(_loc28_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc6_);
                                                                                                                     if(!(_loc27_ && this))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc11_:* = §§pop();
                                                                                                                  §§push(_loc3_.m_sweep.c.x);
                                                                                                                  if(_loc28_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc8_);
                                                                                                                     if(!(_loc27_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc12_:* = §§pop();
                                                                                                                  §§push(_loc3_.m_sweep.c.y);
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc9_);
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc13_:* = §§pop();
                                                                                                                  §§push(this.§#!U§.m_xf.position.x);
                                                                                                                  if(!(_loc27_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + this.m_groundAnchor1.x);
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc14_:* = §§pop();
                                                                                                                  §§push(this.§#!U§.m_xf.position.y);
                                                                                                                  if(!(_loc27_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + this.m_groundAnchor1.y);
                                                                                                                     if(_loc28_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc15_:* = §§pop();
                                                                                                                  §§push(this.§#!U§.m_xf.position.x);
                                                                                                                  if(!(_loc27_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + this.m_groundAnchor2.x);
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc16_:* = §§pop();
                                                                                                                  §§push(this.§#!U§.m_xf.position.y);
                                                                                                                  if(_loc28_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + this.m_groundAnchor2.y);
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        addr507:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc17_:* = §§pop();
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        §§push(this.m_u1);
                                                                                                                        if(_loc28_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(_loc10_);
                                                                                                                           if(!(_loc27_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(_loc14_);
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 addr532:
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 if(!(_loc27_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - _loc15_);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§pop().Set(§§pop(),§§pop());
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 addr545:
                                                                                                                                 §§push(this.m_u2);
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc16_);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       addr554:
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       if(_loc28_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - _loc17_);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§pop().Set(§§pop(),§§pop());
                                                                                                                                    addr560:
                                                                                                                                    §§push(this.m_u1.§>!7§());
                                                                                                                                    if(!(_loc27_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc18_:* = §§pop();
                                                                                                                                    §§push(this.m_u2.§>!7§());
                                                                                                                                    if(_loc28_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc19_:* = §§pop();
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc18_);
                                                                                                                                       loop15:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(b2Settings.b2_linearSlop);
                                                                                                                                          if(!(_loc27_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(§§pop() <= §§pop())
                                                                                                                                             {
                                                                                                                                                §§push(this.m_u1);
                                                                                                                                                if(!(_loc27_ && this))
                                                                                                                                                {
                                                                                                                                                   §§pop().§`!5§();
                                                                                                                                                   loop16:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr613:
                                                                                                                                                      addr714:
                                                                                                                                                      loop17:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                         if(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc28_)
                                                                                                                                                            {
                                                                                                                                                               continue loop15;
                                                                                                                                                            }
                                                                                                                                                            §§push(b2Settings.b2_linearSlop);
                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.m_u2);
                                                                                                                                                                  if(!(_loc27_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§`!5§();
                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop16;
                                                                                                                                                                        }
                                                                                                                                                                        addr629:
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc28_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr640:
                                                                                                                                                                              this.m_u2.§^$§(1 / _loc19_);
                                                                                                                                                                              §§push(this.§%E§);
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr715:
                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    if(_loc28_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§6!K§);
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr696:
                                                                                                                                                                                          §§push(§§pop() * _loc19_);
                                                                                                                                                                                          if(!(_loc27_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop15;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       break loop15;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr713:
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 var _loc20_:* = §§pop();
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    if(_loc28_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§>E§ = b2internal::+!t;
                                                                                                                                                                                             if(_loc28_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§,!2§ = 0;
                                                                                                                                                                                             }
                                                                                                                                                                                             loop21:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                loop22:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                   if(!(_loc27_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.m_maxLength1);
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.m_limitState1 = b2internal::#!F;
                                                                                                                                                                                                               addr855:
                                                                                                                                                                                                               loop93:
                                                                                                                                                                                                               while(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc28_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr835:
                                                                                                                                                                                                                     loop87:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                        if(!(_loc27_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.m_maxLength2);
                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.m_limitState2 = b2internal::#!F;
                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc28_ || _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr785:
                                                                                                                                                                                                                                          if(!(_loc27_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop21;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop93;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(false)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             loop90:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.m_limitImpulse2 = 0;
                                                                                                                                                                                                                                                addr763:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc27_ && param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop90;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr858:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this.m_limitImpulse1 = 0;
                                                                                                                                                                                                                                                            addr840:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop87;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr802:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop90;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.m_u1.y);
                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr892:
                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop() * this.m_u1.x);
                                                                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break loop87;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break loop22;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr892);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break loop87;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr892);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break loop87;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr840);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr763);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr785);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr784:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr892);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     break loop22;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop22;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.m_limitState1 = b2internal::+!t;
                                                                                                                                                                                                                  §§goto(addr858);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr855:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr855);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr892);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr850:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                var _loc21_:* = §§pop();
                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                if(_loc28_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.m_u2.y);
                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc28_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr921:
                                                                                                                                                                                                            §§push(§§pop() * this.m_u2.x);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         if(_loc27_ && _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr934:
                                                                                                                                                                                                         var _loc22_:* = §§pop();
                                                                                                                                                                                                         if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                            §§push(_loc2_.§7n§);
                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc2_.§;5§);
                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1652:
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1650:
                                                                                                                                                                                                                        §§push(§§pop() * _loc21_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().m_limitMass1 = §§pop() + §§pop();
                                                                                                                                                                                                                     loop23:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                        §§push(_loc3_.§7n§);
                                                                                                                                                                                                                        if(_loc28_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc3_.§;5§);
                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1626:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(_loc28_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc22_);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().m_limitMass2 = §§pop() + §§pop();
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                                                                    §§push(this.m_limitMass1);
                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§6!K§);
                                                                                                                                                                                                                                       if(!(_loc27_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§6!K§);
                                                                                                                                                                                                                                          if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1586:
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1584:
                                                                                                                                                                                                                                                §§push(§§pop() * this.m_limitMass2);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop().§5!!§ = §§pop() + §§pop();
                                                                                                                                                                                                                                             loop25:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.m_limitMass1 = 1 / this.m_limitMass1;
                                                                                                                                                                                                                                                addr1552:
                                                                                                                                                                                                                                                while(_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   this.m_limitMass2 = 1 / this.m_limitMass2;
                                                                                                                                                                                                                                                   continue loop25;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop23;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1584);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1586);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1626);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1650);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1652);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1259);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr934);
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr921);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr934);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr855);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§>E§ = b2internal::#!F;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr864);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr784);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr850);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr713);
                                                                                                                                                                              addr644:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.m_u1);
                                                                                                                                                                                 addr672:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().§^$§(1 / _loc18_);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr670:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop17;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr644);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr640);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr629);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr696);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr715);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr672);
                                                                                                                                             }
                                                                                                                                             §§goto(addr670);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(!(_loc27_ && param1))
                                                                                                                                       {
                                                                                                                                          §§goto(addr713);
                                                                                                                                       }
                                                                                                                                       §§goto(addr714);
                                                                                                                                    }
                                                                                                                                    §§goto(addr640);
                                                                                                                                 }
                                                                                                                                 §§goto(addr554);
                                                                                                                              }
                                                                                                                              §§goto(addr560);
                                                                                                                           }
                                                                                                                           §§goto(addr532);
                                                                                                                        }
                                                                                                                        §§goto(addr560);
                                                                                                                     }
                                                                                                                     §§goto(addr545);
                                                                                                                  }
                                                                                                                  §§goto(addr507);
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr382);
                                                                                                         }
                                                                                                         break;
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
                                                                           §§goto(addr382);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                   }
                                                }
                                                §§goto(addr159);
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr133);
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr133);
                        }
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr109);
               }
               §§goto(addr92);
            }
            §§goto(addr96);
         }
         §§goto(addr64);
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
         var _loc2_:b2Body = b2internal::6!G;
         var _loc3_:b2Body = b2internal::0!w;
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc21_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc22_ || param1)
            {
               addr70:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc21_)
            {
               §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
               if(!(_loc21_ && _loc3_))
               {
                  addr89:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc4_.col1.x);
               if(_loc22_)
               {
                  §§push(_loc5_);
                  if(_loc22_ || this)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc21_ && _loc3_))
                     {
                        §§push(_loc4_.col2.x);
                        if(_loc22_ || this)
                        {
                           addr122:
                           §§push(§§pop() * _loc6_);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc21_ && param1))
                        {
                           addr133:
                           var _loc7_:* = Number(§§pop());
                           if(_loc22_ || this)
                           {
                              §§push(_loc4_.col1.y);
                              if(!_loc21_)
                              {
                                 §§push(_loc5_);
                                 if(!_loc21_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc22_)
                                    {
                                       §§push(_loc4_.col2.y);
                                       if(_loc22_)
                                       {
                                          addr157:
                                          §§push(§§pop() * _loc6_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc22_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc22_ || param1)
                                          {
                                             addr170:
                                             _loc6_ = §§pop();
                                             if(_loc22_ || _loc3_)
                                             {
                                                §§push(_loc7_);
                                                if(_loc22_)
                                                {
                                                   addr181:
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc5_ = §§pop();
                                                addr183:
                                                _loc4_ = _loc3_.m_xf.R;
                                                §§push(this.m_localAnchor2.x);
                                                if(_loc22_)
                                                {
                                                   §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
                                                   if(_loc22_ || this)
                                                   {
                                                      addr205:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   §§push(this.m_localAnchor2.y);
                                                   if(_loc22_)
                                                   {
                                                      §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                                                      if(_loc22_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc9_:* = §§pop();
                                                   if(!(_loc21_ && param1))
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
                                                   §§goto(addr1122);
                                                }
                                                §§goto(addr205);
                                             }
                                             §§goto(addr183);
                                          }
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr183);
                        }
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr122);
               }
               §§goto(addr133);
            }
            §§goto(addr89);
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
