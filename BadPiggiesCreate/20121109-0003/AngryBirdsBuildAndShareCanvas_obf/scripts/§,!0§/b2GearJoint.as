package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJoint extends b2Joint
   {
       
      
      private var m_ground1:b2Body;
      
      private var m_ground2:b2Body;
      
      private var m_revolute1:b2RevoluteJoint;
      
      private var m_prismatic1:b2PrismaticJoint;
      
      private var m_revolute2:b2RevoluteJoint;
      
      private var m_prismatic2:b2PrismaticJoint;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §[!I§:b2Jacobian;
      
      private var §1v§:Number;
      
      private var §6!q§:Number;
      
      private var §?j§:Number;
      
      private var §5!i§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(_loc6_)
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
                     while(_loc6_)
                     {
                        while(true)
                        {
                           this.§[!I§ = new b2Jacobian();
                           addr36:
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr29);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+d.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§5!i§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || param1)
               {
                  §§push(this.§[!I§.§>!p§.x);
                  if(!_loc3_)
                  {
                     addr49:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_)
                     {
                        §§push(this.§5!i§);
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc3_)
                           {
                              addr78:
                              §§push(§§pop() * this.§[!I§.§>!p§.y);
                           }
                           return new §§pop().b2Vec2(§§pop(),§§pop());
                        }
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr78);
               }
            }
         }
         §§goto(addr49);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = b2internal::"!l.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc9_)
         {
            §§push(§§pop() - b2internal::"!l.m_sweep.localCenter.x);
            if(_loc9_ || param1)
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc8_)
            {
               §§push(§§pop() - b2internal::"!l.m_sweep.localCenter.y);
               if(!_loc8_)
               {
                  addr53:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc2_.col1.x);
               if(!(_loc8_ && param1))
               {
                  §§push(_loc3_);
                  if(_loc9_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc9_ || _loc3_)
                     {
                        §§push(_loc2_.col2.x);
                        if(_loc9_)
                        {
                           addr83:
                           §§push(§§pop() + §§pop() * _loc4_);
                           if(!(_loc8_ && this))
                           {
                              addr91:
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr83);
                     }
                     var _loc5_:* = §§pop();
                     if(!_loc8_)
                     {
                        §§push(_loc2_.col1.y);
                        if(_loc9_ || _loc3_)
                        {
                           §§push(_loc3_);
                           if(_loc9_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc8_)
                              {
                                 §§push(_loc2_.col2.y);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(§§pop() * _loc4_);
                                    if(!(_loc8_ && param1))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc9_ || _loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc9_)
                                          {
                                             addr156:
                                             _loc4_ = §§pop();
                                             if(_loc9_ || _loc2_)
                                             {
                                                §§push(_loc5_);
                                                if(_loc9_ || param1)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc9_ || this)
                                                   {
                                                      addr180:
                                                      _loc3_ = §§pop();
                                                      addr181:
                                                      §§push(this.§5!i§);
                                                      if(!_loc8_)
                                                      {
                                                         addr189:
                                                         §§push(§§pop() * this.§[!I§.§>!p§.x);
                                                         if(!(_loc8_ && this))
                                                         {
                                                            addr197:
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr197);
                                                }
                                                var _loc6_:* = §§pop();
                                                §§push(this.§5!i§);
                                                if(_loc9_ || this)
                                                {
                                                   §§push(§§pop() * this.§[!I§.§>!p§.y);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      addr220:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc7_:* = §§pop();
                                                   §§push(param1);
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      §§push(this.§5!i§);
                                                      if(_loc9_ || this)
                                                      {
                                                         §§push(this.§[!I§.§=!m§);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc9_ || _loc2_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(!(_loc8_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc8_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           addr289:
                                                                           §§push(_loc4_);
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr294:
                                                                              §§push(§§pop() + §§pop() * _loc6_);
                                                                           }
                                                                           §§goto(addr294);
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            §§goto(addr289);
                                                         }
                                                         §§goto(addr294);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                   addr296:
                                                   return §§pop() * §§pop();
                                                }
                                                §§goto(addr220);
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr156);
                                    }
                                 }
                              }
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr83);
               }
               §§goto(addr91);
            }
            §§goto(addr53);
         }
         §§goto(addr39);
      }
      
      public function § !k§() : Number
      {
         return this.§6!q§;
      }
      
      public function §[!5§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6!q§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc4_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::+d;
         var _loc5_:b2Body = b2internal::"!l;
         §§push(0);
         if(!_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(_loc16_)
         {
            §§push(this.§[!I§);
            loop0:
            while(true)
            {
               §§pop().§?b§();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     if(!this.m_revolute1)
                     {
                        §§push(_loc2_.m_xf);
                        if(_loc16_)
                        {
                           §§push(§§pop().R);
                           if(_loc16_)
                           {
                              _loc10_ = §§pop();
                              _loc11_ = this.m_prismatic1.§01§;
                              if(_loc16_)
                              {
                                 §§push(_loc10_.col1);
                                 if(_loc16_ || this)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc16_)
                                    {
                                       §§push(_loc11_.x);
                                       if(_loc16_ || this)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc15_ && this))
                                          {
                                             §§push(_loc10_.col2);
                                             if(_loc16_ || param1)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc16_ || _loc3_)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         addr197:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc15_ && _loc3_))
                                                         {
                                                            addr205:
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc15_ && _loc2_))
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(_loc16_ || this)
                                                               {
                                                                  addr223:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(!(_loc15_ && param1))
                                                                  {
                                                                     §§push(_loc11_.x);
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc16_ || _loc3_)
                                                                        {
                                                                           addr243:
                                                                           §§push(_loc10_.col2.y);
                                                                           if(_loc16_)
                                                                           {
                                                                              addr251:
                                                                              addr250:
                                                                              §§push(§§pop() + §§pop() * _loc11_.y);
                                                                              if(_loc15_ && _loc3_)
                                                                              {
                                                                              }
                                                                              addr260:
                                                                              _loc7_ = §§pop();
                                                                              _loc10_ = _loc4_.m_xf.R;
                                                                              if(!_loc15_)
                                                                              {
                                                                                 addr626:
                                                                                 _loc8_ = Number(this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x);
                                                                                 addr627:
                                                                                 addr620:
                                                                                 addr625:
                                                                                 addr624:
                                                                                 addr623:
                                                                                 addr622:
                                                                                 §§push(this.m_localAnchor1);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    addr600:
                                                                                    §§push(§§pop().y);
                                                                                    §§push(_loc4_.m_sweep);
                                                                                    if(!(_loc15_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          addr615:
                                                                                          _loc9_ = §§pop() - §§pop().y;
                                                                                          addr570:
                                                                                          addr616:
                                                                                          addr613:
                                                                                          addr614:
                                                                                          §§push(_loc10_.col1.x * _loc8_);
                                                                                          if(!(_loc15_ && _loc3_))
                                                                                          {
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   addr587:
                                                                                                   §§push(_loc10_.col2.x * _loc9_);
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      addr592:
                                                                                                      _loc13_ = §§pop() + §§pop();
                                                                                                      addr591:
                                                                                                      addr593:
                                                                                                      §§push(_loc10_.col1);
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         addr528:
                                                                                                         §§push(§§pop().y);
                                                                                                         §§push(_loc8_);
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            addr532:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            §§push(_loc10_.col2);
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!(_loc15_ && _loc2_))
                                                                                                               {
                                                                                                                  addr546:
                                                                                                                  §§push(§§pop() + §§pop() * _loc9_);
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     if(!(_loc15_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr557:
                                                                                                                        _loc9_ = §§pop();
                                                                                                                        addr558:
                                                                                                                        if(!(_loc15_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr437:
                                                                                                                           §§push(Number(_loc13_));
                                                                                                                           if(_loc16_ || param1)
                                                                                                                           {
                                                                                                                              if(!(_loc15_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr453:
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    if(_loc16_ || this)
                                                                                                                                    {
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          addr466:
                                                                                                                                          §§push(_loc7_);
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             addr469:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_);
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   addr475:
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   if(!(_loc15_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr483:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc16_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!(_loc15_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr498:
                                                                                                                                                            if(!(_loc15_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr506:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(!(_loc15_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  _loc12_ = §§pop();
                                                                                                                                                                  addr514:
                                                                                                                                                                  if(_loc16_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr417:
                                                                                                                                                                     §§push(this.§[!I§.§4!J§);
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                     if(!(_loc15_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().Set(§§pop(),§§pop());
                                                                                                                                                                     addr432:
                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        addr396:
                                                                                                                                                                        §§push(this.§[!I§);
                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           if(!(_loc15_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().§2!j§ = §§pop();
                                                                                                                                                                           addr411:
                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc14_);
                                                                                                                                                                              if(_loc16_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_.§@"!§);
                                                                                                                                                                                    if(_loc16_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc15_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc15_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc4_.§=!N§);
                                                                                                                                                                                                   if(_loc16_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc16_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                                                                         if(!_loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr331:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!(_loc15_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc16_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr334:
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(_loc16_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(!(_loc15_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr344:
                                                                                                                                                                                                                     if(!(_loc15_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc15_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc16_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc16_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr373:
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc15_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                                                                                                                       if(_loc16_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(false)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr396);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr628);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr627);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr558);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr411);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr620);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr469);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr600);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr570);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr532);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr506);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr373);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr453);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr475);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr331);
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr587);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr331);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr570);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr587);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr466);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr483);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr334);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr437);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr344);
                                                                                                                                                                              addr413:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr432);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr417);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr514);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr616);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr557);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr591);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr506);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr546);
                                                                                                                                                }
                                                                                                                                                §§goto(addr483);
                                                                                                                                             }
                                                                                                                                             §§goto(addr528);
                                                                                                                                          }
                                                                                                                                          §§goto(addr587);
                                                                                                                                       }
                                                                                                                                       §§goto(addr546);
                                                                                                                                    }
                                                                                                                                    §§goto(addr498);
                                                                                                                                 }
                                                                                                                                 §§goto(addr613);
                                                                                                                              }
                                                                                                                              §§goto(addr592);
                                                                                                                           }
                                                                                                                           §§goto(addr506);
                                                                                                                        }
                                                                                                                        §§goto(addr593);
                                                                                                                     }
                                                                                                                     §§goto(addr625);
                                                                                                                  }
                                                                                                                  §§goto(addr626);
                                                                                                               }
                                                                                                               §§goto(addr546);
                                                                                                            }
                                                                                                            §§goto(addr587);
                                                                                                         }
                                                                                                         §§goto(addr546);
                                                                                                      }
                                                                                                      §§goto(addr570);
                                                                                                   }
                                                                                                   §§goto(addr624);
                                                                                                }
                                                                                                §§goto(addr614);
                                                                                             }
                                                                                             §§goto(addr615);
                                                                                          }
                                                                                          §§goto(addr592);
                                                                                       }
                                                                                       §§goto(addr623);
                                                                                    }
                                                                                    §§goto(addr622);
                                                                                 }
                                                                                 addr619:
                                                                                 §§goto(addr619);
                                                                              }
                                                                              §§goto(addr413);
                                                                           }
                                                                           §§goto(addr251);
                                                                        }
                                                                        §§goto(addr260);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   §§goto(addr250);
                                                }
                                                §§goto(addr251);
                                             }
                                             §§goto(addr243);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr251);
                                 }
                              }
                              §§goto(addr223);
                           }
                           addr691:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§01§;
                           if(!_loc15_)
                           {
                              §§push(_loc10_.col1);
                              if(_loc16_ || _loc3_)
                              {
                                 §§push(§§pop().x);
                                 if(_loc16_ || this)
                                 {
                                    §§push(_loc11_.x);
                                    if(_loc16_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc15_)
                                       {
                                          §§push(_loc10_.col2);
                                          if(_loc16_)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc15_)
                                             {
                                                addr731:
                                                §§push(_loc11_.y);
                                                if(!(_loc15_ && _loc2_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc16_)
                                                   {
                                                      addr743:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc16_ || _loc2_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(_loc16_)
                                                            {
                                                               addr764:
                                                               §§push(_loc10_.col1.y);
                                                               if(_loc16_ || _loc3_)
                                                               {
                                                                  addr772:
                                                                  §§push(_loc11_.x);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc16_ || _loc3_)
                                                                     {
                                                                        addr786:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(_loc15_ && _loc3_)
                                                                        {
                                                                        }
                                                                        addr797:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc15_ && _loc3_))
                                                                        {
                                                                           addr816:
                                                                           _loc7_ = Number(§§pop());
                                                                           _loc10_ = _loc5_.m_xf.R;
                                                                           if(_loc16_ || _loc3_)
                                                                           {
                                                                              §§push(this.m_localAnchor2);
                                                                              loop41:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr1230:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.m_sweep);
                                                                                    addr1232:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       addr1233:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr1234:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr1235:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr1236:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   continue loop41;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1130);
                                                                           addr805:
                                                                        }
                                                                     }
                                                                     §§goto(addr816);
                                                                  }
                                                                  addr796:
                                                                  §§goto(addr797);
                                                                  §§push(§§pop() * _loc11_.y);
                                                               }
                                                            }
                                                            §§goto(addr816);
                                                         }
                                                         §§goto(addr805);
                                                      }
                                                      §§goto(addr816);
                                                   }
                                                   §§goto(addr797);
                                                }
                                                §§goto(addr796);
                                             }
                                             §§goto(addr743);
                                          }
                                          §§goto(addr786);
                                       }
                                       §§goto(addr772);
                                    }
                                    §§goto(addr731);
                                 }
                                 §§goto(addr772);
                              }
                           }
                           §§goto(addr764);
                        }
                        break;
                     }
                     if(_loc16_ || _loc2_)
                     {
                        while(true)
                        {
                           §§push(this.§[!I§);
                           if(!(_loc15_ && _loc3_))
                           {
                              if(!_loc16_)
                              {
                                 continue loop0;
                              }
                              §§pop().§2!j§ = -1;
                              if(!(_loc15_ && param1))
                              {
                                 if(_loc15_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(_loc14_);
                                 if(_loc16_)
                                 {
                                    §§push(_loc4_.§=!N§);
                                    if(!_loc15_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc15_)
                                       {
                                          addr71:
                                          §§push(Number(§§pop()));
                                          if(!_loc15_)
                                          {
                                             addr74:
                                             _loc14_ = §§pop();
                                             if(_loc16_ || param1)
                                             {
                                                if(false)
                                                {
                                                   continue loop2;
                                                }
                                                addr628:
                                                if(!this.m_revolute2)
                                                {
                                                   §§push(_loc3_.m_xf);
                                                   break loop2;
                                                }
                                                if(!_loc15_)
                                                {
                                                   addr633:
                                                   §§push(this.§[!I§);
                                                   break;
                                                }
                                                loop40:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   §§push(_loc5_.m_angularVelocity);
                                                   if(_loc16_ || _loc2_)
                                                   {
                                                      §§push(_loc5_.§=!N§);
                                                      if(_loc16_)
                                                      {
                                                         §§push(this.§5!i§);
                                                         if(_loc16_)
                                                         {
                                                            addr1339:
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc15_ && _loc2_))
                                                            {
                                                               addr1337:
                                                               §§push(§§pop() * this.§[!I§.§=!m§);
                                                            }
                                                            §§pop().m_angularVelocity = §§pop() + §§pop();
                                                            while(true)
                                                            {
                                                               if(_loc15_ && _loc3_)
                                                               {
                                                                  continue loop40;
                                                               }
                                                               if(_loc16_)
                                                               {
                                                                  if(!_loc15_)
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.§]!g§);
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_.§]!g§);
                                                                           loop7:
                                                                           while(_loc16_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              loop8:
                                                                              while(_loc16_)
                                                                              {
                                                                                 §§push(_loc4_.§@"!§);
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§5!i§);
                                                                                    loop10:
                                                                                    while(_loc16_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       loop11:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§[!I§);
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§4!J§);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   loop14:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop15:
                                                                                                      while(!(_loc15_ && _loc3_))
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            §§push(_loc4_.m_angularVelocity);
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               §§push(_loc4_.§=!N§);
                                                                                                               if(!(_loc15_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(this.§5!i§);
                                                                                                                  if(_loc16_)
                                                                                                                  {
                                                                                                                     addr1561:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc16_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr1559:
                                                                                                                        §§push(§§pop() * this.§[!I§.§2!j§);
                                                                                                                     }
                                                                                                                     §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                     loop17:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.§]!g§);
                                                                                                                        loop18:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.§]!g§);
                                                                                                                           addr1479:
                                                                                                                           while(!(_loc15_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.§@"!§);
                                                                                                                                 addr1489:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§5!i§);
                                                                                                                                    addr1491:
                                                                                                                                    while(!(_loc15_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          continue loop9;
                                                                                                                                       }
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          continue loop14;
                                                                                                                                       }
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§[!I§);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().§>!p§);
                                                                                                                                             addr1508:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                addr1509:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   continue loop9;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1507:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             break loop8;
                                                                                                                                          }
                                                                                                                                          addr1634:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop10;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr1528:
                                                                                                                           continue loop7;
                                                                                                                           addr1528:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_.§]!g§);
                                                                                                                              if(!(_loc15_ && _loc2_))
                                                                                                                              {
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              continue loop18;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1519:
                                                                                                                        loop28:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc16_ || _loc3_))
                                                                                                                           {
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              §§goto(addr1528);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr1605:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_.§]!g§);
                                                                                                                                 addr1607:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.§]!g§);
                                                                                                                                    break loop7;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1605:
                                                                                                                           }
                                                                                                                           addr1518:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              continue loop28;
                                                                                                                              addr1459:
                                                                                                                              if(!(_loc16_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       break loop28;
                                                                                                                                    }
                                                                                                                                    continue loop8;
                                                                                                                                 }
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                              §§goto(addr1487);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        continue loop40;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1559);
                                                                                                            }
                                                                                                            §§goto(addr1561);
                                                                                                         }
                                                                                                      }
                                                                                                      addr1610:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_.§@"!§);
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            §§push(this.§5!i§);
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                            }
                                                                                                            break loop10;
                                                                                                         }
                                                                                                         addr1629:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§[!I§);
                                                                                                            addr1631:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().§4!J§);
                                                                                                               break loop12;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr1405:
                                                                                                   if(!(_loc16_ || this))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc15_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      §§push(this.§[!I§);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         if(!(_loc16_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            §§push(§§pop().§>!p§);
                                                                                                            if(_loc16_ || _loc3_)
                                                                                                            {
                                                                                                               addr1446:
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  addr1449:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc16_ || this)
                                                                                                                  {
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        §§goto(addr1459);
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                     §§goto(addr1629);
                                                                                                                  }
                                                                                                                  §§goto(addr1489);
                                                                                                               }
                                                                                                               §§goto(addr1491);
                                                                                                            }
                                                                                                            §§goto(addr1508);
                                                                                                         }
                                                                                                         §§goto(addr1631);
                                                                                                      }
                                                                                                      §§goto(addr1507);
                                                                                                   }
                                                                                                   §§goto(addr1449);
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             break loop10;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr1634);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr1610);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr1601);
                                                               }
                                                               §§goto(addr1519);
                                                               §§goto(addr1339);
                                                            }
                                                            addr1289:
                                                            return;
                                                            addr1340:
                                                         }
                                                      }
                                                      §§goto(addr1337);
                                                   }
                                                   §§goto(addr1339);
                                                }
                                             }
                                             §§goto(addr633);
                                          }
                                          addr679:
                                          _loc14_ = Number(§§pop());
                                          addr678:
                                          if(_loc16_ || _loc2_)
                                          {
                                             addr1238:
                                             §§push(this);
                                             if(!(_loc15_ && _loc2_))
                                             {
                                                §§push(_loc14_);
                                                if(_loc16_)
                                                {
                                                   if(§§pop() > 0)
                                                   {
                                                      addr1252:
                                                      §§push(1 / _loc14_);
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc16_ || _loc2_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr1279:
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                      if(_loc16_ || param1)
                                                      {
                                                         §§goto(addr1279);
                                                      }
                                                   }
                                                   §§pop().§?j§ = §§pop();
                                                   if(_loc16_ || _loc3_)
                                                   {
                                                      if(!param1.§@!D§)
                                                      {
                                                         this.§5!i§ = 0;
                                                         if(_loc15_ && param1)
                                                         {
                                                            §§goto(addr1340);
                                                         }
                                                         §§goto(addr1289);
                                                      }
                                                      §§goto(addr1605);
                                                      addr1288:
                                                   }
                                                   §§goto(addr1528);
                                                }
                                                §§goto(addr1279);
                                             }
                                             §§goto(addr1252);
                                          }
                                          §§goto(addr1601);
                                       }
                                       §§goto(addr74);
                                    }
                                    addr675:
                                    §§push(§§pop() + §§pop());
                                    if(!_loc15_)
                                    {
                                       §§goto(addr678);
                                    }
                                    §§goto(addr679);
                                 }
                                 §§goto(addr71);
                              }
                              §§goto(addr1288);
                           }
                           break;
                        }
                        §§push(this.§6!q§);
                        if(!(_loc15_ && param1))
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§=!m§ = §§pop();
                        if(_loc16_ || this)
                        {
                           §§push(_loc14_);
                           if(!_loc15_)
                           {
                              §§push(this.§6!q§);
                              if(!(_loc15_ && param1))
                              {
                                 §§push(this.§6!q§);
                                 if(!_loc15_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc16_)
                                    {
                                       §§push(_loc5_.§=!N§);
                                    }
                                    §§goto(addr675);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§goto(addr675);
                           }
                           §§goto(addr71);
                        }
                        §§goto(addr1605);
                        addr95:
                     }
                     §§goto(addr1601);
                     §§goto(addr1238);
                  }
                  §§goto(addr691);
               }
            }
         }
         §§goto(addr95);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = b2internal::+d;
         var _loc3_:b2Body = b2internal::"!l;
         §§push(this.§[!I§.§14§(_loc2_.§]!g§,_loc2_.m_angularVelocity,_loc3_.§]!g§,_loc3_.m_angularVelocity));
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§?j§);
         if(!(_loc6_ && _loc2_))
         {
            §§push(-§§pop());
            if(!_loc6_)
            {
               §§push(§§pop() * _loc4_);
               if(!_loc6_)
               {
                  addr54:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc7_ || _loc2_)
               {
                  §§push(this);
                  §§push(this.§5!i§);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§5!i§ = §§pop();
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_.§]!g§);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.§]!g§);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop3:
                           while(true)
                           {
                              §§push(_loc2_.§@"!§);
                              if(_loc7_)
                              {
                                 §§push(_loc5_);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc7_ || this)
                                    {
                                       §§push(this.§[!I§);
                                       while(true)
                                       {
                                          §§push(§§pop().§4!J§);
                                          addr403:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr404:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                       }
                                       addr402:
                                    }
                                    addr202:
                                    if(!(_loc7_ || param1))
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          addr230:
                                          §§push(§§pop() + §§pop());
                                          if(_loc7_)
                                          {
                                             addr232:
                                             if(_loc7_ || param1)
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   §§pop().y = §§pop();
                                                   loop34:
                                                   while(!_loc6_)
                                                   {
                                                      §§push(_loc3_);
                                                      §§push(_loc3_.m_angularVelocity);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(_loc3_.§=!N§);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc7_ || this)
                                                            {
                                                               addr93:
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc7_)
                                                               {
                                                                  §§push(this.§[!I§.§=!m§);
                                                               }
                                                               §§pop().m_angularVelocity = §§pop() + §§pop();
                                                               if(!_loc7_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc7_)
                                                               {
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        return;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  addr380:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     §§push(_loc2_.m_angularVelocity);
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        §§push(_loc2_.§=!N§);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              addr359:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr357:
                                                                                 §§push(§§pop() * this.§[!I§.§2!j§);
                                                                              }
                                                                              §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                              break loop34;
                                                                           }
                                                                        }
                                                                        §§goto(addr357);
                                                                     }
                                                                     §§goto(addr359);
                                                                  }
                                                                  addr380:
                                                               }
                                                               loop33:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.§]!g§);
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     addr124:
                                                                     if(_loc6_ && _loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  addr253:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_.§]!g§);
                                                                     addr255:
                                                                     while(_loc7_ || param1)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              if(_loc7_ || _loc3_)
                                                                              {
                                                                                 if(_loc6_ && _loc2_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(_loc3_.§@"!§);
                                                                                 if(_loc7_ || _loc2_)
                                                                                 {
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr302:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§[!I§);
                                                                                             addr304:
                                                                                             loop28:
                                                                                             while(!(_loc6_ && _loc2_))
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop().§>!p§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr315:
                                                                                                      while(_loc7_ || param1)
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr325:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr326:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  continue loop33;
                                                                                                               }
                                                                                                            }
                                                                                                            addr325:
                                                                                                         }
                                                                                                      }
                                                                                                      addr370:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr371:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§[!I§);
                                                                                                            break loop28;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr314:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr402);
                                                                                                }
                                                                                                §§goto(addr404);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().§4!J§);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr403);
                                                                                          }
                                                                                          addr193:
                                                                                          if(!(_loc7_ || param1))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§goto(addr202);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr377);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       break loop25;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr325);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 continue loop0;
                                                                              }
                                                                              addr406:
                                                                           }
                                                                           break;
                                                                           §§goto(addr232);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           §§goto(addr380);
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§]!g§);
                                                                  addr366:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     addr367:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§@"!§);
                                                                        addr369:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr370);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr124);
                                                               }
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                      }
                                                      §§goto(addr93);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr253);
                                                   }
                                                }
                                                §§goto(addr367);
                                             }
                                             §§goto(addr263);
                                          }
                                          §§goto(addr326);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr406);
                                       }
                                       addr405:
                                    }
                                    §§goto(addr325);
                                 }
                              }
                              §§goto(addr405);
                           }
                        }
                     }
                  }
               }
               §§goto(addr380);
            }
         }
         §§goto(addr54);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::+d;
         var _loc4_:b2Body = b2internal::"!l;
         if(!_loc10_)
         {
            §§push(this.m_revolute1);
            if(_loc9_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && param1))
                  {
                     addr150:
                     _loc5_ = Number(this.m_revolute1.§7i§());
                     addr149:
                  }
                  loop53:
                  while(true)
                  {
                     loop54:
                     while(true)
                     {
                        §§push(this.m_revolute2);
                        if(!(_loc10_ && this))
                        {
                           if(§§pop())
                           {
                              continue loop53;
                           }
                           §§push(this.m_prismatic2.§>!b§());
                           if(!(_loc10_ && this))
                           {
                              if(_loc9_ || _loc2_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc10_)
                                 {
                                    if(_loc9_)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc9_ || this)
                                       {
                                          if(!_loc9_)
                                          {
                                             continue loop53;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          addr179:
                                          addr152:
                                          §§push(this.§1v§);
                                          if(!_loc10_)
                                          {
                                             §§push(_loc5_);
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                §§push(this.§6!q§);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() * _loc6_);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§push(§§pop() - §§pop());
                                             if(_loc9_ || _loc2_)
                                             {
                                             }
                                             addr180:
                                             var _loc7_:* = §§pop();
                                             §§push(this.§?j§);
                                             if(!_loc10_)
                                             {
                                                §§push(-§§pop());
                                                if(_loc9_ || param1)
                                                {
                                                   addr193:
                                                   §§push(§§pop() * _loc7_);
                                                   if(!_loc10_)
                                                   {
                                                      addr197:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(_loc9_ || this)
                                                   {
                                                      §§push(_loc3_.m_sweep);
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().c);
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_.m_sweep);
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().c);
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_.§@"!§);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§[!I§);
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§4!J§);
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       loop11:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_.m_sweep);
                                                                                                loop14:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().c);
                                                                                                   loop15:
                                                                                                   while(_loc9_)
                                                                                                   {
                                                                                                      §§push(_loc3_.m_sweep);
                                                                                                      loop16:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().c);
                                                                                                         loop17:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            loop18:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_.§@"!§);
                                                                                                               loop19:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc8_);
                                                                                                                  loop20:
                                                                                                                  while(!_loc10_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     loop21:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§[!I§);
                                                                                                                        loop22:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§4!J§);
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§pop().y);
                                                                                                                           loop23:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              loop24:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 while(!(_loc10_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    loop26:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.m_sweep);
                                                                                                                                       loop27:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.m_sweep);
                                                                                                                                          loop28:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().a);
                                                                                                                                             loop29:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.§=!N§);
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   loop30:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc9_ || this)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§[!I§);
                                                                                                                                                            addr522:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().§2!j§);
                                                                                                                                                               addr523:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr520:
                                                                                                                                                      }
                                                                                                                                                      loop31:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         loop32:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().a = §§pop();
                                                                                                                                                            loop33:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.m_sweep);
                                                                                                                                                               loop34:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                  loop35:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_.m_sweep);
                                                                                                                                                                     loop36:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop16;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                        loop37:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           loop38:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_.§@"!§);
                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                 if(_loc9_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    while(!(_loc10_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§[!I§);
                                                                                                                                                                                       while(!(_loc10_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().§>!p§);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop8;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop19;
                                                                                                                                                                                    addr457:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop10;
                                                                                                                                                                                 addr475:
                                                                                                                                                                              }
                                                                                                                                                                              loop43:
                                                                                                                                                                              while(_loc9_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 loop44:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc10_ && param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    loop45:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_.m_sweep);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop27;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop().c);
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop35;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop15;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(_loc4_.m_sweep);
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop36;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop().c);
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop37;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc10_ && _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop17;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop3;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          if(!(_loc9_ || _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop44;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop38;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(_loc4_.§@"!§);
                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop7;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                             if(_loc9_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop21;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(this.§[!I§);
                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop22;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop().§>!p§);
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr397:
                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                            if(_loc9_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr405:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  continue loop44;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop11;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr474);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr475);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr466);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr457);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr466);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr405);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr397);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr405);
                                                                                                                                                                                          addr429:
                                                                                                                                                                                          §§push(_loc4_.m_sweep);
                                                                                                                                                                                          if(!(_loc9_ || this))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop34;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop14;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop0;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(_loc4_.m_sweep);
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop28;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop().a);
                                                                                                                                                                                          if(!(_loc10_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop32;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop29;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc4_.§=!N§);
                                                                                                                                                                                             if(!(_loc10_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc9_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr302:
                                                                                                                                                                                                            §§push(this.§[!I§);
                                                                                                                                                                                                            if(!(_loc10_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr312:
                                                                                                                                                                                                               §§push(§§pop() * §§pop().§=!m§);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr522);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc10_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr321:
                                                                                                                                                                                                            §§pop().a = §§pop() + §§pop();
                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop31;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop30;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr523);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr312);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr302);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr321);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                       addr420:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc10_ && _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop45;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop33;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr429);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr522);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop12;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop24;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop2;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr520);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
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
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr222);
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr180);
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    else
                                    {
                                       addr93:
                                       _loc6_ = §§pop();
                                    }
                                    if(!(_loc10_ && param1))
                                    {
                                       break;
                                    }
                                    addr133:
                                    while(true)
                                    {
                                       continue loop54;
                                    }
                                 }
                                 §§goto(addr180);
                              }
                              else
                              {
                                 addr92:
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr180);
                        }
                        else
                        {
                           addr91:
                           §§push(§§pop().§7i§());
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr152);
                  }
                  addr151:
               }
               else
               {
                  §§push(this.m_prismatic1.§>!b§());
                  if(!(_loc10_ && this))
                  {
                     if(!(_loc10_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc10_ && param1))
                        {
                           addr130:
                           if(!_loc10_)
                           {
                              _loc5_ = §§pop();
                              §§goto(addr133);
                           }
                           else
                           {
                              §§goto(addr149);
                           }
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr130);
               }
            }
            §§goto(addr150);
         }
         §§goto(addr133);
      }
   }
}
