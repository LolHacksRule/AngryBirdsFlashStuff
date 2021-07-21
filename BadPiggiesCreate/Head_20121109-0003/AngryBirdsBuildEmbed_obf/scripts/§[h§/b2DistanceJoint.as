package §[h§
{
   import § !t§.b2Body;
   import § !t§.b2TimeStep;
   import §<!B§.b2Mat22;
   import §<!B§.b2Math;
   import §<!B§.b2Vec2;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §-!"§:b2Vec2;
      
      private var §>A§:Number;
      
      private var §+!N§:Number;
      
      private var §8,§:Number;
      
      private var §13§:Number;
      
      private var §7!a§:Number;
      
      private var §+!U§:Number;
      
      private var §"?§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || this)
         {
            this.m_localAnchor1 = new b2Vec2();
            this.m_localAnchor2 = new b2Vec2();
            if(!_loc5_)
            {
               this.§-!"§ = new b2Vec2();
               super(param1);
               if(!(_loc5_ && this))
               {
                  this.m_localAnchor1.SetV(param1.§;!1§);
                  addr70:
                  this.m_localAnchor2.SetV(param1.§%?§);
                  if(_loc6_ || param1)
                  {
                     this.§"?§ = param1.length;
                     if(!_loc5_)
                     {
                        this.§>A§ = param1.§4,§;
                        if(!_loc6_)
                        {
                        }
                     }
                     §§goto(addr113);
                  }
                  this.§+!N§ = param1.§>!k§;
                  if(!_loc5_)
                  {
                     this.§7!a§ = 0;
                  }
               }
               §§goto(addr113);
            }
            addr113:
            this.§8,§ = 0;
            this.§13§ = 0;
            return;
         }
         §§goto(addr70);
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
         if(_loc3_)
         {
            §§push(this.§7!a§);
            if(_loc3_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(!_loc2_)
               {
                  §§goto(addr79);
               }
               §§push(param1);
               if(!_loc2_)
               {
                  §§push(this.§7!a§);
                  if(_loc3_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc3_ || _loc2_)
                     {
                     }
                  }
               }
            }
            §§goto(addr79);
         }
         addr79:
         §§push(this.§-!"§.x);
         if(!(_loc2_ && this))
         {
            §§push(§§pop() * §§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop() * this.§-!"§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §`!U§() : Number
      {
         return this.§"?§;
      }
      
      public function §1d§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"?§ = param1;
         }
      }
      
      public function §16§() : Number
      {
         return this.§>A§;
      }
      
      public function §;!D§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§>A§ = param1;
         }
      }
      
      public function §#&§() : Number
      {
         return this.§+!N§;
      }
      
      public function §5]§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+!N§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1198
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::2+;
         var _loc4_:b2Body = b2internal::4P;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc19_ && _loc2_))
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(!(_loc19_ && _loc2_))
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc19_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
               if(!_loc19_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(!_loc19_)
            {
               §§push(_loc5_);
               if(_loc18_ || param1)
               {
                  addr110:
                  §§push(§§pop() * §§pop());
                  if(_loc18_ || _loc3_)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc18_ || _loc3_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                  }
                  var _loc7_:* = §§pop();
                  if(_loc18_ || _loc2_)
                  {
                     §§push(_loc2_.col1.y);
                     if(_loc18_ || param1)
                     {
                        §§push(_loc5_);
                        if(_loc18_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc19_)
                           {
                              §§push(_loc2_.col2.y);
                              if(_loc18_)
                              {
                                 addr139:
                                 §§push(§§pop() * _loc6_);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc19_ && param1))
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc19_ && param1))
                                 {
                                    addr157:
                                    _loc6_ = §§pop();
                                    if(!(_loc19_ && _loc3_))
                                    {
                                       addr165:
                                       §§push(_loc7_);
                                       if(_loc18_ || _loc2_)
                                       {
                                          addr174:
                                          _loc5_ = Number(§§pop());
                                       }
                                       §§goto(addr174);
                                    }
                                    _loc2_ = _loc4_.m_xf.R;
                                    §§push(this.m_localAnchor2.x);
                                    if(_loc18_)
                                    {
                                       §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                       if(!(_loc19_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(this.m_localAnchor2.y);
                                    if(!_loc19_)
                                    {
                                       §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                       if(_loc18_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc9_:* = §§pop();
                                    if(!_loc19_)
                                    {
                                       §§push(_loc2_.col1);
                                       if(_loc18_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc18_ || _loc2_)
                                          {
                                             §§push(§§pop() * _loc8_);
                                             §§push(_loc2_.col2);
                                             if(!_loc19_)
                                             {
                                                §§push(§§pop().x);
                                                §§push(_loc9_);
                                                if(!(_loc19_ && _loc2_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc19_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc18_ || _loc2_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc18_ || _loc3_)
                                                         {
                                                            addr261:
                                                            _loc7_ = §§pop();
                                                            if(_loc18_ || _loc2_)
                                                            {
                                                               addr271:
                                                               §§push(_loc2_.col1.y);
                                                               if(!(_loc19_ && param1))
                                                               {
                                                                  addr281:
                                                                  §§push(§§pop() * _loc8_);
                                                                  §§push(_loc2_.col2.y);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(_loc18_ || this)
                                                                     {
                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                        if(_loc18_ || _loc3_)
                                                                        {
                                                                           _loc9_ = Number(§§pop());
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 addr323:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    addr313:
                                                                                    _loc8_ = §§pop();
                                                                                    addr314:
                                                                                    §§push(_loc3_.§<&§.x);
                                                                                 }
                                                                                 var _loc10_:Number = §§pop();
                                                                                 §§push(_loc3_.§<&§.y);
                                                                                 if(_loc18_ || _loc3_)
                                                                                 {
                                                                                    §§push(_loc3_.m_angularVelocity);
                                                                                    if(_loc18_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() * _loc5_);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       addr349:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc11_:* = §§pop();
                                                                                    §§push(_loc4_.§<&§.x);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       §§push(_loc4_.m_angularVelocity);
                                                                                       if(_loc18_ || param1)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(!(_loc19_ && _loc2_))
                                                                                          {
                                                                                             §§push(§§pop() * _loc9_);
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc18_ || this)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    §§push(_loc4_.§<&§.y);
                                                                                    if(!(_loc19_ && _loc2_))
                                                                                    {
                                                                                       §§push(_loc4_.m_angularVelocity);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(§§pop() * _loc8_);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(this.§-!"§.x);
                                                                                    if(!(_loc19_ && _loc3_))
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!(_loc19_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc19_ && _loc2_))
                                                                                                {
                                                                                                   addr448:
                                                                                                   §§push(this.§-!"§.y);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      addr453:
                                                                                                      §§push(_loc13_);
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         addr458:
                                                                                                         §§push(§§pop() * (§§pop() - _loc11_));
                                                                                                      }
                                                                                                      §§goto(addr458);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      addr462:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   var _loc14_:* = §§pop();
                                                                                                   §§push(this.§+!U§);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      if(!(_loc19_ && this))
                                                                                                      {
                                                                                                         §§push(_loc14_);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§push(this.§13§);
                                                                                                            if(!(_loc19_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc18_ || _loc3_)
                                                                                                               {
                                                                                                                  addr504:
                                                                                                                  §§push(this.§8,§);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     addr500:
                                                                                                                     §§push(§§pop() * this.§7!a§);
                                                                                                                  }
                                                                                                                  §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                  if(_loc18_ || param1)
                                                                                                                  {
                                                                                                                     addr513:
                                                                                                                     var _loc15_:Number = §§pop();
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§7!a§);
                                                                                                                        if(_loc18_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + _loc15_);
                                                                                                                        }
                                                                                                                        §§pop().§7!a§ = §§pop();
                                                                                                                     }
                                                                                                                     §§push(_loc15_);
                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * this.§-!"§.x);
                                                                                                                        if(!(_loc19_ && param1))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     var _loc16_:* = §§pop();
                                                                                                                     §§push(_loc15_);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * this.§-!"§.y);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           addr559:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc17_:* = §§pop();
                                                                                                                        §§push(_loc3_.§<&§);
                                                                                                                        if(!(_loc19_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(_loc3_.§<&§);
                                                                                                                           if(_loc18_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.§7!?§);
                                                                                                                                 §§push(_loc16_);
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       if(_loc18_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.§<&§);
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.§<&§);
                                                                                                                                             if(_loc18_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.§7!?§);
                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                   if(_loc18_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr625:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc18_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                               §§push(_loc3_.m_angularVelocity);
                                                                                                                                                               if(_loc18_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_.§`d§);
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     if(_loc18_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr672:
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr677:
                                                                                                                                                                                 §§push(§§pop() - §§pop() * _loc16_);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr677);
                                                                                                                                                                           }
                                                                                                                                                                           addr680:
                                                                                                                                                                           §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                                           addr679:
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_.§<&§);
                                                                                                                                                                              if(!(_loc19_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr692:
                                                                                                                                                                                 §§push(_loc4_.§<&§);
                                                                                                                                                                                 if(!(_loc19_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr701:
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr704:
                                                                                                                                                                                       §§push(_loc4_.§7!?§);
                                                                                                                                                                                       if(!(_loc19_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                          if(!(_loc19_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr721:
                                                                                                                                                                                             §§pop().x = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr738:
                                                                                                                                                                                                §§push(_loc4_.§<&§);
                                                                                                                                                                                                §§push(_loc4_.§<&§.y);
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr735:
                                                                                                                                                                                                   §§push(_loc4_.§7!?§);
                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr741);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr795);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr738);
                                                                                                                                                                                          §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr735);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr738);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr795);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr677);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr672);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr679);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr680);
                                                                                                                                                            }
                                                                                                                                                            addr741:
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            §§push(_loc4_.m_angularVelocity);
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.§`d§);
                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr795);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  addr795:
                                                                                                                                                                  §§goto(addr796);
                                                                                                                                                               }
                                                                                                                                                               addr796:
                                                                                                                                                               §§goto(addr797);
                                                                                                                                                            }
                                                                                                                                                            addr797:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc18_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(_loc18_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * _loc16_);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                            return;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr704);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr735);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr721);
                                                                                                                                                }
                                                                                                                                                §§goto(addr738);
                                                                                                                                             }
                                                                                                                                             §§goto(addr701);
                                                                                                                                          }
                                                                                                                                          §§goto(addr692);
                                                                                                                                       }
                                                                                                                                       §§goto(addr795);
                                                                                                                                    }
                                                                                                                                    §§goto(addr735);
                                                                                                                                 }
                                                                                                                                 §§goto(addr625);
                                                                                                                              }
                                                                                                                              §§goto(addr735);
                                                                                                                           }
                                                                                                                           §§goto(addr701);
                                                                                                                        }
                                                                                                                        §§goto(addr738);
                                                                                                                     }
                                                                                                                     §§goto(addr559);
                                                                                                                  }
                                                                                                                  §§goto(addr513);
                                                                                                               }
                                                                                                               §§goto(addr504);
                                                                                                            }
                                                                                                            §§goto(addr500);
                                                                                                         }
                                                                                                         §§goto(addr504);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr513);
                                                                                                }
                                                                                                §§goto(addr462);
                                                                                             }
                                                                                             §§goto(addr453);
                                                                                          }
                                                                                          §§goto(addr458);
                                                                                       }
                                                                                       §§goto(addr453);
                                                                                    }
                                                                                    §§goto(addr448);
                                                                                 }
                                                                                 §§goto(addr349);
                                                                              }
                                                                              addr321:
                                                                              §§push(§§pop() + -_loc3_.m_angularVelocity * _loc6_);
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                        §§goto(addr323);
                                                                     }
                                                                  }
                                                                  §§goto(addr321);
                                                               }
                                                               §§goto(addr323);
                                                            }
                                                            §§goto(addr314);
                                                         }
                                                         §§goto(addr313);
                                                      }
                                                      §§goto(addr281);
                                                   }
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr261);
                                       }
                                       §§goto(addr271);
                                    }
                                    §§goto(addr313);
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr165);
               }
               §§push(§§pop() + §§pop());
               if(_loc18_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr110);
         }
         §§goto(addr52);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 815
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
