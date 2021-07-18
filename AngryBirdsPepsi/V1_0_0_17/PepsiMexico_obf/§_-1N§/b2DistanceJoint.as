package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §_-NQ§:b2Vec2;
      
      private var §_-Hc§:Number;
      
      private var §_-xD§:Number;
      
      private var §_-B4§:Number;
      
      private var §_-f1§:Number;
      
      private var §_-tN§:Number;
      
      private var §_-jI§:Number;
      
      private var §_-GG§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         if(_loc6_ || _loc2_)
         {
            this.m_localAnchor2 = new b2Vec2();
            if(!_loc5_)
            {
               this.§_-NQ§ = new b2Vec2();
               super(param1);
               if(_loc6_ || this)
               {
                  this.m_localAnchor1.SetV(param1.§_-Kz§);
                  this.m_localAnchor2.SetV(param1.§_-Dq§);
                  if(_loc5_)
                  {
                  }
                  §§goto(addr112);
               }
               this.§_-GG§ = param1.length;
               if(!_loc5_)
               {
                  this.§_-Hc§ = param1.§_-Kf§;
                  if(!(_loc5_ && _loc3_))
                  {
                     §§goto(addr88);
                  }
                  §§goto(addr109);
               }
               §§goto(addr106);
            }
            addr88:
            this.§_-xD§ = param1.§_-Co§;
            if(!(_loc5_ && this))
            {
               addr106:
               this.§_-tN§ = 0;
               addr109:
               this.§_-B4§ = 0;
            }
            §§goto(addr112);
         }
         addr112:
         this.§_-f1§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-93.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-9K.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || this)
         {
            §§push(this.§_-tN§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || _loc2_)
               {
                  addr47:
                  §§push(this.§_-NQ§.x);
                  if(_loc3_ || param1)
                  {
                     addr58:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!(_loc2_ && param1))
                     {
                        §§push(this.§_-tN§);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr89);
                        }
                        addr89:
                        §§push(§§pop() * §§pop());
                        if(!_loc2_)
                        {
                           addr85:
                           §§push(this.§_-NQ§.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                  }
                  §§goto(addr85);
               }
               §§goto(addr58);
            }
            §§goto(addr89);
         }
         §§goto(addr47);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-jD§() : Number
      {
         return this.§_-GG§;
      }
      
      public function §_-kW§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-GG§ = param1;
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
         if(_loc2_)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-xD§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1132
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::_-93;
         var _loc4_:b2Body = b2internal::_-9K;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc18_ || _loc2_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc18_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc19_ && _loc2_))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
            if(!(_loc19_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(_loc18_)
         {
            §§push(_loc5_);
            if(_loc18_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc19_ && _loc3_))
               {
                  §§push(_loc2_.col2.x);
                  if(!_loc19_)
                  {
                     addr96:
                     §§push(§§pop() * _loc6_);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc18_ || _loc3_)
                  {
                  }
                  addr107:
                  var _loc7_:* = §§pop();
                  if(!_loc19_)
                  {
                     §§push(_loc2_.col1.y);
                     if(_loc18_ || param1)
                     {
                        §§push(_loc5_);
                        if(_loc18_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc18_)
                           {
                              addr126:
                              §§push(_loc2_.col2.y);
                              if(_loc18_ || param1)
                              {
                                 addr138:
                                 §§push(§§pop() + §§pop() * _loc6_);
                                 if(_loc18_)
                                 {
                                    addr141:
                                    §§push(Number(§§pop()));
                                    if(!(_loc19_ && this))
                                    {
                                       _loc6_ = §§pop();
                                       if(!(_loc19_ && param1))
                                       {
                                          §§push(_loc7_);
                                          if(_loc18_ || param1)
                                          {
                                          }
                                          addr166:
                                          _loc5_ = §§pop();
                                          addr167:
                                          _loc2_ = _loc4_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(_loc18_)
                                          {
                                             §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                             if(_loc18_)
                                             {
                                                addr184:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc8_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(!(_loc19_ && _loc3_))
                                             {
                                                §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                                if(_loc18_ || this)
                                                {
                                                   addr208:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc9_:* = §§pop();
                                                if(!_loc19_)
                                                {
                                                   §§push(_loc2_.col1);
                                                   if(_loc18_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc18_ || _loc3_)
                                                      {
                                                         §§push(§§pop() * _loc8_);
                                                         §§push(_loc2_.col2);
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            §§push(§§pop().x);
                                                            §§push(_loc9_);
                                                            if(_loc18_ || _loc3_)
                                                            {
                                                               addr246:
                                                               §§push(Number(§§pop() + §§pop() * §§pop()));
                                                               if(_loc18_)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  if(!(_loc19_ && _loc2_))
                                                                  {
                                                                     addr259:
                                                                     §§push(_loc2_.col1.y);
                                                                     if(_loc18_ || param1)
                                                                     {
                                                                        addr267:
                                                                        §§push(§§pop() * _loc8_);
                                                                        §§push(_loc2_.col2.y);
                                                                        §§push(_loc9_);
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                           if(!(_loc19_ && param1))
                                                                           {
                                                                              _loc9_ = Number(§§pop());
                                                                              if(_loc18_ || param1)
                                                                              {
                                                                                 addr298:
                                                                                 §§push(_loc7_);
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    addr306:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr309:
                                                                                       _loc8_ = §§pop();
                                                                                       §§push(_loc3_.§_-ZZ§.x);
                                                                                       if(!(_loc19_ && this))
                                                                                       {
                                                                                          addr326:
                                                                                          §§push(_loc3_.m_angularVelocity);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                          }
                                                                                          §§push(§§pop() + §§pop() * _loc6_);
                                                                                          if(_loc18_ || _loc3_)
                                                                                          {
                                                                                             addr335:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    var _loc10_:* = §§pop();
                                                                                    §§push(_loc3_.§_-ZZ§.y);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(_loc3_.m_angularVelocity);
                                                                                       if(!(_loc19_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop() * _loc5_);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc11_:* = §§pop();
                                                                                    §§push(_loc4_.§_-ZZ§.x);
                                                                                    if(_loc18_ || _loc2_)
                                                                                    {
                                                                                       §§push(_loc4_.m_angularVelocity);
                                                                                       if(_loc18_ || _loc3_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§push(§§pop() * _loc9_);
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          addr392:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc12_:* = §§pop();
                                                                                       §§push(_loc4_.§_-ZZ§.y);
                                                                                       if(_loc18_ || param1)
                                                                                       {
                                                                                          §§push(_loc4_.m_angularVelocity);
                                                                                          if(_loc18_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() * _loc8_);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             addr418:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc13_:* = §§pop();
                                                                                          §§push(this.§_-NQ§.x);
                                                                                          if(_loc18_ || this)
                                                                                          {
                                                                                             §§push(_loc12_);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(!(_loc19_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc19_ && param1))
                                                                                                      {
                                                                                                         §§push(this.§_-NQ§.y);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            addr457:
                                                                                                            §§push(_loc13_);
                                                                                                            if(!(_loc19_ && param1))
                                                                                                            {
                                                                                                               addr465:
                                                                                                               §§push(§§pop() - _loc11_);
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc19_ && _loc2_))
                                                                                                         {
                                                                                                            addr477:
                                                                                                            var _loc14_:Number = §§pop();
                                                                                                            §§push(this.§_-jI§);
                                                                                                            if(!(_loc19_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  addr490:
                                                                                                                  §§push(_loc14_);
                                                                                                                  if(!(_loc19_ && param1))
                                                                                                                  {
                                                                                                                     §§push(this.§_-f1§);
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           addr513:
                                                                                                                           §§push(this.§_-B4§);
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              addr509:
                                                                                                                              §§push(§§pop() * this.§_-tN§);
                                                                                                                           }
                                                                                                                           §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                           {
                                                                                                                              addr521:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc15_:* = §§pop();
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§push(this);
                                                                                                                              §§push(this.§_-tN§);
                                                                                                                              if(!(_loc19_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + _loc15_);
                                                                                                                              }
                                                                                                                              §§pop().§_-tN§ = §§pop();
                                                                                                                           }
                                                                                                                           §§push(_loc15_);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * this.§_-NQ§.x);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 addr547:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc16_:* = §§pop();
                                                                                                                              §§push(_loc15_);
                                                                                                                              if(_loc18_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * this.§_-NQ§.y);
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              var _loc17_:* = §§pop();
                                                                                                                              if(_loc18_ || this)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.§_-ZZ§);
                                                                                                                                 if(_loc18_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.§_-ZZ§);
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       §§push(_loc3_.§_-eZ§);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc16_);
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.§_-ZZ§);
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_.§_-ZZ§);
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                         §§push(_loc3_.§_-eZ§);
                                                                                                                                                         if(!(_loc19_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr623:
                                                                                                                                                               §§pop().y = §§pop() - §§pop() * §§pop();
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  addr626:
                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                  §§push(_loc3_.m_angularVelocity);
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.§_-DZ§);
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              addr655:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 if(_loc18_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * _loc16_);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                                              §§push(_loc4_.§_-ZZ§);
                                                                                                                                                                              if(_loc18_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr667:
                                                                                                                                                                                 §§push(_loc4_.§_-ZZ§);
                                                                                                                                                                                 if(!(_loc19_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr676:
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    §§push(_loc4_.§_-eZ§);
                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr683:
                                                                                                                                                                                       §§pop().x = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                       addr689:
                                                                                                                                                                                       addr687:
                                                                                                                                                                                       addr685:
                                                                                                                                                                                       §§push(_loc4_.§_-ZZ§);
                                                                                                                                                                                       §§push(_loc4_.§_-ZZ§.y);
                                                                                                                                                                                       if(_loc18_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc4_.§_-eZ§);
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr702:
                                                                                                                                                                                             §§push(§§pop() * _loc17_);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                       §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc4_.§_-DZ§);
                                                                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc17_);
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr728:
                                                                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                                                                      if(!(_loc19_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr745:
                                                                                                                                                                                                         §§push(§§pop() - §§pop() * _loc16_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr745);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr748:
                                                                                                                                                                                                   §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                   return;
                                                                                                                                                                                                   addr747:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr745);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr728);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr747);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr748);
                                                                                                                                                                                       addr682:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr702);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr689);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr687);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr655);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr685);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr682);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr683);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr676);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr683);
                                                                                                                                             }
                                                                                                                                             §§goto(addr623);
                                                                                                                                          }
                                                                                                                                          §§goto(addr683);
                                                                                                                                       }
                                                                                                                                       §§goto(addr623);
                                                                                                                                    }
                                                                                                                                    §§goto(addr676);
                                                                                                                                 }
                                                                                                                                 §§goto(addr667);
                                                                                                                              }
                                                                                                                              §§goto(addr626);
                                                                                                                           }
                                                                                                                           §§goto(addr547);
                                                                                                                        }
                                                                                                                        §§goto(addr513);
                                                                                                                     }
                                                                                                                     §§goto(addr509);
                                                                                                                  }
                                                                                                                  §§goto(addr513);
                                                                                                               }
                                                                                                               §§goto(addr521);
                                                                                                            }
                                                                                                            §§goto(addr490);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr477);
                                                                                                   }
                                                                                                   §§goto(addr457);
                                                                                                }
                                                                                                §§goto(addr465);
                                                                                             }
                                                                                             §§goto(addr457);
                                                                                          }
                                                                                          §§goto(addr477);
                                                                                       }
                                                                                       §§goto(addr418);
                                                                                    }
                                                                                    §§goto(addr392);
                                                                                 }
                                                                              }
                                                                              §§goto(addr309);
                                                                           }
                                                                           §§goto(addr335);
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     §§goto(addr306);
                                                                  }
                                                                  §§goto(addr298);
                                                               }
                                                               §§goto(addr267);
                                                            }
                                                            §§goto(addr326);
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   §§goto(addr259);
                                                }
                                                §§goto(addr309);
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr166);
               }
               §§goto(addr107);
               §§push(Number(§§pop()));
            }
            §§goto(addr96);
         }
         §§goto(addr107);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 834
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
