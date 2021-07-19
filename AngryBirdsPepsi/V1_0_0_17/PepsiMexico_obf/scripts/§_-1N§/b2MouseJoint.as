package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §_-9s§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §_-Ht§:b2Vec2;
      
      private var §_-Wr§:b2Vec2;
      
      private var §_-tN§:b2Vec2;
      
      private var §_-jI§:b2Mat22;
      
      private var §_-TZ§:b2Vec2;
      
      private var §_-CU§:Number;
      
      private var §_-Hc§:Number;
      
      private var §_-xD§:Number;
      
      private var §_-4S§:Number;
      
      private var §_-B4§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc4_:b2Mat22 = null;
         if(_loc5_)
         {
            this.§_-9s§ = new b2Mat22();
            if(!(_loc6_ && this))
            {
               this.K1 = new b2Mat22();
               if(_loc5_)
               {
                  this.K2 = new b2Mat22();
                  this.§_-Ht§ = new b2Vec2();
                  this.§_-Wr§ = new b2Vec2();
                  this.§_-tN§ = new b2Vec2();
                  if(!(_loc6_ && param1))
                  {
                     addr60:
                     this.§_-jI§ = new b2Mat22();
                     if(_loc5_)
                     {
                        addr66:
                        this.§_-TZ§ = new b2Vec2();
                        if(_loc5_ || _loc2_)
                        {
                           super(param1);
                           if(_loc6_ && this)
                           {
                           }
                           addr99:
                           §§push(this.§_-Wr§);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop().x);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(§§pop() - b2internal::_-9K.m_xf.position.x);
                                 if(_loc5_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc6_)
                                    {
                                       addr126:
                                       _loc2_ = §§pop();
                                       §§push(this.§_-Wr§.y);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() - b2internal::_-9K.m_xf.position.y);
                                          if(_loc6_ && this)
                                          {
                                          }
                                          §§goto(addr152);
                                       }
                                    }
                                    addr152:
                                    var _loc3_:* = §§pop();
                                    _loc4_ = b2internal::_-9K.m_xf.R;
                                    if(!_loc6_)
                                    {
                                       §§push(this.§_-Ht§);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§push(_loc2_);
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(_loc4_.col1.x);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc6_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc4_.col1.y);
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            addr206:
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               addr209:
                                                               §§pop().x = §§pop();
                                                               §§push(this.§_-Ht§);
                                                               §§push(_loc2_);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  addr220:
                                                                  §§push(_loc4_.col2.x);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr225);
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                            §§goto(addr220);
                                                         }
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   addr225:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr233:
                                                      §§push(_loc3_);
                                                      if(!_loc6_)
                                                      {
                                                         addr236:
                                                         §§push(§§pop() * _loc4_.col2.y);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().y = §§pop();
                                                   this.§_-CU§ = param1.§_-O9§;
                                                   §§goto(addr246);
                                                }
                                                §§goto(addr220);
                                             }
                                             §§goto(addr206);
                                          }
                                       }
                                       §§goto(addr209);
                                    }
                                    addr246:
                                    this.§_-tN§.§_-0a§();
                                    this.§_-Hc§ = param1.§_-Kf§;
                                    this.§_-xD§ = param1.§_-Co§;
                                    if(_loc5_ || this)
                                    {
                                       this.§_-4S§ = 0;
                                    }
                                    this.§_-B4§ = 0;
                                    return;
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr126);
                        }
                     }
                     §§push(this.§_-Wr§);
                     if(_loc5_ || _loc2_)
                     {
                        §§pop().SetV(param1.target);
                        §§goto(addr99);
                     }
                     §§goto(addr126);
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr60);
         }
         §§goto(addr99);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§_-Wr§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-9K.GetWorldPoint(this.§_-Ht§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§_-tN§.x);
            if(_loc2_ || this)
            {
               §§goto(addr40);
            }
            §§goto(addr55);
         }
         addr40:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc2_ || _loc2_)
         {
            addr55:
            §§push(§§pop() * this.§_-tN§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-Qn§() : b2Vec2
      {
         return this.§_-Wr§;
      }
      
      public function §_-e9§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(b2internal::_-9K.IsAwake() == false)
            {
               if(!_loc2_)
               {
                  b2internal::_-9K.SetAwake(true);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr51:
                     this.§_-Wr§ = param1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §_-8N§() : Number
      {
         return this.§_-CU§;
      }
      
      public function §_-23§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-CU§ = param1;
         }
      }
      
      public function §_-51§() : Number
      {
         return this.§_-Hc§;
      }
      
      public function §_-LE§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-Hc§ = param1;
         }
      }
      
      public function §_-po§() : Number
      {
         return this.§_-xD§;
      }
      
      public function §_-b-§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§_-xD§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 911
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-9K;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§_-Ht§.x);
         if(!_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!_loc16_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§_-Ht§.y);
         if(!_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         if(!_loc16_)
         {
            §§push(_loc3_.col1);
            if(!_loc16_)
            {
               §§push(§§pop().x);
               §§push(_loc6_);
               if(_loc15_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc16_)
                  {
                     §§push(_loc3_.col2);
                     if(!_loc16_)
                     {
                        §§push(§§pop().x);
                        if(!_loc16_)
                        {
                           §§push(_loc7_);
                           if(_loc15_ || _loc2_)
                           {
                              addr85:
                              §§push(Number(§§pop() + §§pop() * §§pop()));
                              if(!_loc16_)
                              {
                                 _loc4_ = §§pop();
                                 if(!_loc16_)
                                 {
                                    addr100:
                                    §§push(_loc3_.col1.y * _loc6_);
                                    §§push(_loc3_.col2.y);
                                    §§push(_loc7_);
                                    if(!(_loc16_ && param1))
                                    {
                                       addr111:
                                       _loc7_ = Number(§§pop() + §§pop() * §§pop());
                                       if(_loc15_ || this)
                                       {
                                          addr119:
                                          _loc6_ = Number(_loc4_);
                                       }
                                       addr125:
                                       §§push(_loc2_.§_-ZZ§.x);
                                       §§push(_loc2_.m_angularVelocity);
                                       if(!_loc16_)
                                       {
                                          §§push(-§§pop());
                                          if(!_loc16_)
                                          {
                                             addr133:
                                             §§push(§§pop() * _loc7_);
                                          }
                                       }
                                       var _loc8_:Number = §§pop() + §§pop();
                                       §§push(_loc2_.§_-ZZ§.y);
                                       if(_loc15_ || _loc2_)
                                       {
                                          §§push(_loc2_.m_angularVelocity);
                                          if(_loc15_ || this)
                                          {
                                             §§push(§§pop() * _loc6_);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc15_)
                                          {
                                             addr161:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc9_:* = §§pop();
                                          _loc3_ = this.§_-jI§;
                                          if(_loc15_ || _loc3_)
                                          {
                                             §§push(_loc8_);
                                             if(!(_loc16_ && param1))
                                             {
                                                §§push(this.§_-4S§);
                                                §§push(this.§_-TZ§);
                                                if(!_loc16_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         §§push(this.§_-B4§);
                                                         if(_loc15_ || _loc3_)
                                                         {
                                                            §§push(this.§_-tN§);
                                                            if(_loc15_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!(_loc16_ && _loc3_))
                                                               {
                                                                  addr221:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc15_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc16_)
                                                                        {
                                                                           addr230:
                                                                           _loc4_ = §§pop();
                                                                           addr277:
                                                                           if(_loc15_ || param1)
                                                                           {
                                                                              §§push(_loc9_);
                                                                           }
                                                                           §§push(_loc3_.col1.x);
                                                                           §§push(_loc4_);
                                                                           if(!(_loc16_ && _loc3_))
                                                                           {
                                                                              addr294:
                                                                              §§push(§§pop() * §§pop() + _loc3_.col2.x * _loc5_);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 addr297:
                                                                                 §§push(-§§pop());
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc10_:* = §§pop();
                                                                              §§push(_loc3_.col1.y);
                                                                              if(!(_loc16_ && _loc3_))
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(!(_loc16_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(_loc3_.col2.y);
                                                                                       if(!(_loc16_ && param1))
                                                                                       {
                                                                                          addr342:
                                                                                          §§push(§§pop() + §§pop() * _loc5_);
                                                                                          if(!(_loc16_ && this))
                                                                                          {
                                                                                             addr350:
                                                                                             §§push(-§§pop());
                                                                                             if(_loc16_ && _loc3_)
                                                                                             {
                                                                                             }
                                                                                             addr359:
                                                                                             var _loc11_:* = §§pop();
                                                                                             §§push(this.§_-tN§.x);
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc12_:* = §§pop();
                                                                                             §§push(this.§_-tN§.y);
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc13_:* = §§pop();
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                §§push(this.§_-tN§);
                                                                                                if(_loc15_ || param1)
                                                                                                {
                                                                                                   §§push(this.§_-tN§);
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(_loc15_ || param1)
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc15_ || param1)
                                                                                                            {
                                                                                                               addr408:
                                                                                                               §§pop().x = §§pop();
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  addr415:
                                                                                                                  addr413:
                                                                                                                  §§push(this.§_-tN§);
                                                                                                                  §§push(this.§_-tN§.y);
                                                                                                                  if(_loc15_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr423:
                                                                                                                     §§push(§§pop() + _loc11_);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  addr426:
                                                                                                                  §§push(param1.§_-h8§);
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * this.§_-CU§);
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc14_:* = §§pop();
                                                                                                                  §§push(this.§_-tN§);
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§_-Un§());
                                                                                                                     if(!(_loc16_ && this))
                                                                                                                     {
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc14_);
                                                                                                                           if(!(_loc16_ && this))
                                                                                                                           {
                                                                                                                              if(§§pop() > §§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc16_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(this.§_-tN§);
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(_loc15_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / this.§_-tN§.§_-dP§());
                                                                                                                                       }
                                                                                                                                       §§pop().§_-6z§(§§pop());
                                                                                                                                       addr486:
                                                                                                                                       §§push(this.§_-tN§);
                                                                                                                                       if(!(_loc16_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr495:
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          if(!(_loc16_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             if(!(_loc16_ && this))
                                                                                                                                             {
                                                                                                                                                addr524:
                                                                                                                                                §§push(Number(§§pop() - §§pop()));
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   _loc10_ = §§pop();
                                                                                                                                                   addr518:
                                                                                                                                                   §§push(this.§_-tN§.y);
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      addr522:
                                                                                                                                                      §§push(§§pop() - _loc13_);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                _loc11_ = Number(§§pop());
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc2_.§_-ZZ§);
                                                                                                                                                   if(_loc15_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc2_.§_-ZZ§);
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_.§_-eZ§);
                                                                                                                                                            if(!(_loc16_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!(_loc16_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        addr566:
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        addr571:
                                                                                                                                                                        addr569:
                                                                                                                                                                        §§push(_loc2_.§_-ZZ§);
                                                                                                                                                                        §§push(_loc2_.§_-ZZ§.y);
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           addr574:
                                                                                                                                                                           §§push(_loc2_.§_-eZ§);
                                                                                                                                                                           if(_loc15_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr585:
                                                                                                                                                                              §§push(§§pop() + §§pop() * _loc11_);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr585);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                        if(_loc15_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           addr594:
                                                                                                                                                                           §§push(_loc2_);
                                                                                                                                                                           §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                           if(_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc2_.§_-DZ§);
                                                                                                                                                                              if(_loc15_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 if(!(_loc16_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                    if(_loc15_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr634:
                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                          if(_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr639:
                                                                                                                                                                                             §§push(§§pop() - §§pop() * _loc10_);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr639);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr642:
                                                                                                                                                                                       §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                       return;
                                                                                                                                                                                       addr641:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr639);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr634);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr641);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr642);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr574);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr585);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr566);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr571);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr569);
                                                                                                                                                }
                                                                                                                                                §§goto(addr642);
                                                                                                                                             }
                                                                                                                                             §§goto(addr522);
                                                                                                                                          }
                                                                                                                                          §§goto(addr524);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr518);
                                                                                                                                 }
                                                                                                                                 §§goto(addr594);
                                                                                                                              }
                                                                                                                              §§goto(addr486);
                                                                                                                           }
                                                                                                                           §§goto(addr522);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr524);
                                                                                                                  }
                                                                                                                  §§goto(addr495);
                                                                                                               }
                                                                                                               §§goto(addr426);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr423);
                                                                                                      }
                                                                                                      §§goto(addr408);
                                                                                                   }
                                                                                                   §§goto(addr415);
                                                                                                }
                                                                                                §§goto(addr413);
                                                                                             }
                                                                                             §§goto(addr415);
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                    §§goto(addr359);
                                                                                 }
                                                                                 §§goto(addr342);
                                                                              }
                                                                              §§goto(addr350);
                                                                           }
                                                                           §§goto(addr294);
                                                                        }
                                                                        §§push(this.§_-4S§);
                                                                        if(_loc15_ || _loc3_)
                                                                        {
                                                                           addr250:
                                                                           §§push(this.§_-TZ§.y);
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§push(§§pop() + §§pop() * §§pop());
                                                                              if(!_loc16_)
                                                                              {
                                                                                 addr257:
                                                                                 §§push(this.§_-B4§);
                                                                                 §§push(this.§_-tN§.y);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    addr264:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc16_ && this))
                                                                                    {
                                                                                       addr272:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          addr276:
                                                                                          _loc5_ = §§pop();
                                                                                          §§goto(addr277);
                                                                                       }
                                                                                       §§goto(addr297);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr294);
                                                                              }
                                                                              §§goto(addr276);
                                                                           }
                                                                           §§goto(addr264);
                                                                        }
                                                                        §§goto(addr272);
                                                                     }
                                                                     §§goto(addr257);
                                                                  }
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                      }
                                                      §§goto(addr294);
                                                   }
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr250);
                                             }
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr133);
                        }
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr111);
               }
               §§goto(addr85);
            }
         }
         §§goto(addr100);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
