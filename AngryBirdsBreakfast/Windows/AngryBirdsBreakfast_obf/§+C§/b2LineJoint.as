package §+C§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Mat22;
   import §6Z§.b2Math;
   import §6Z§.b2Transform;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §]!<§:b2Vec2;
      
      private var §^!H§:b2Vec2;
      
      private var §"q§:b2Vec2;
      
      private var §"!g§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §#!N§:b2Mat22;
      
      private var §0!F§:b2Vec2;
      
      private var §9q§:Number;
      
      private var §8!9§:Number;
      
      private var §3!<§:Number;
      
      private var §"b§:Number;
      
      private var §[D§:Number;
      
      private var §0!9§:Number;
      
      private var § !§:Boolean;
      
      private var §%O§:Boolean;
      
      private var §%!T§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_)
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§]!<§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§^!H§ = new b2Vec2();
                     while(true)
                     {
                        this.§"q§ = new b2Vec2();
                        continue loop2;
                        addr281:
                        loop5:
                        for(; _loc6_ || param1; while(_loc6_ || param1)
                        {
                           §§goto(addr214);
                           §§push(this.§^!H§);
                        })
                        {
                           this.§#!N§ = new b2Mat22();
                           while(true)
                           {
                              this.§0!F§ = new b2Vec2();
                              loop7:
                              while(_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    continue loop1;
                                 }
                                 super(param1);
                                 loop8:
                                 while(true)
                                 {
                                    this.m_localAnchor1.SetV(param1.§0O§);
                                    while(true)
                                    {
                                       this.m_localAnchor2.SetV(param1.§ @§);
                                       addr247:
                                       while(true)
                                       {
                                          this.§]!<§.SetV(param1.§@`§);
                                          continue loop5;
                                       }
                                       while(_loc6_ || param1)
                                       {
                                          this.§0!F§.§5!H§();
                                          while(!_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop8;
                                             }
                                             this.§9q§ = 0;
                                             while(true)
                                             {
                                                this.§8!9§ = 0;
                                                while(_loc6_ || this)
                                                {
                                                   this.§3!<§ = param1.§9"'§;
                                                   loop20:
                                                   while(true)
                                                   {
                                                      this.§"b§ = param1.§<"%§;
                                                      while(!_loc5_)
                                                      {
                                                         this.§[D§ = param1.§8!B§;
                                                         while(!_loc5_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr247);
                                                         if(_loc6_ || this)
                                                         {
                                                            continue loop20;
                                                         }
                                                      }
                                                      continue loop7;
                                                   }
                                                   if(!(_loc6_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   this.§%O§ = param1.§[!W§;
                                                   §§goto(addr84);
                                                }
                                             }
                                             if(_loc6_ || this)
                                             {
                                                return;
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
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
         §§goto(addr259);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || param1)
         {
            §§push(this.§0!F§.x);
            if(!(_loc2_ && _loc3_))
            {
               §§push(this.§"!g§.x);
               if(_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_ || _loc2_)
                  {
                     §§push(this.§8!9§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(this.§0!F§.y);
                        if(!(_loc2_ && this))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc3_ || _loc3_)
                           {
                              addr86:
                              §§push(this.§"q§.x);
                              if(!_loc2_)
                              {
                                 addr91:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc2_)
                                 {
                                    addr94:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc2_ && this))
                                    {
                                       addr103:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!_loc2_)
                                       {
                                          addr106:
                                          §§push(this.§0!F§.x);
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(this.§"!g§.y);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc3_ || _loc2_)
                                                {
                                                   addr129:
                                                   §§push(this.§8!9§);
                                                   if(_loc3_ || param1)
                                                   {
                                                      §§push(this.§0!F§.y);
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr160);
                                                      }
                                                      addr160:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc3_)
                                                      {
                                                         addr156:
                                                         §§push(this.§"q§.y);
                                                      }
                                                      return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                §§goto(addr160);
                                             }
                                             §§goto(addr156);
                                          }
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr106);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr160);
               }
               §§goto(addr94);
            }
            §§goto(addr106);
         }
         §§goto(addr103);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            return §§pop() * this.§0!F§.y;
         }
      }
      
      public function §#0§() : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::[Z;
         var _loc2_:b2Body = b2internal::8!F;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(_loc11_)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc11_ || _loc2_)
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(!(_loc10_ && this))
            {
               §§push(§§pop() - _loc4_.y);
               if(!(_loc10_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§3!D§(this.§]!<§)).x);
            if(_loc11_)
            {
               §§push(_loc6_);
               if(_loc11_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc11_)
                  {
                     addr106:
                     §§push(_loc8_.y);
                     if(_loc11_ || _loc2_)
                     {
                        §§goto(addr115);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr137);
               }
               addr115:
               §§push(§§pop() * _loc7_);
               if(!(_loc10_ && _loc3_))
               {
                  addr134:
                  §§push(§§pop() + §§pop());
                  if(_loc11_)
                  {
                     addr137:
                     §§push(Number(§§pop()));
                  }
                  §§push(§§pop());
               }
               var _loc9_:* = §§pop();
               return §§pop();
            }
            §§goto(addr106);
         }
         §§goto(addr52);
      }
      
      public function §="'§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::[Z;
         var _loc2_:b2Body = b2internal::8!F;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!_loc22_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(!(_loc22_ && _loc1_))
            {
               addr61:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(_loc21_ || _loc2_)
            {
               §§push(_loc4_);
               if(_loc21_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc22_)
                  {
                     addr79:
                     §§push(_loc3_.col2.x);
                     if(!(_loc22_ && this))
                     {
                        addr89:
                        §§push(§§pop() * _loc5_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc21_ || _loc1_)
                     {
                        addr99:
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     if(!_loc22_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!(_loc22_ && _loc1_))
                        {
                           §§push(_loc4_);
                           if(_loc21_)
                           {
                              addr159:
                              §§push(§§pop() * §§pop());
                              if(_loc21_)
                              {
                                 §§push(_loc3_.col2.y);
                                 if(!(_loc22_ && _loc2_))
                                 {
                                    §§push(§§pop() * _loc5_);
                                 }
                              }
                              _loc4_ = §§pop();
                              _loc3_ = _loc2_.m_xf.R;
                              §§push(this.m_localAnchor2.x);
                              if(_loc21_ || _loc1_)
                              {
                                 §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                 if(!(_loc22_ && this))
                                 {
                                    addr187:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 §§push(this.m_localAnchor2.y);
                                 if(_loc21_)
                                 {
                                    §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                    if(_loc21_)
                                    {
                                       addr201:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    if(!_loc22_)
                                    {
                                       §§push(_loc3_.col1);
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr328:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             addr329:
                                             addr359:
                                             loop2:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc22_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                §§push(_loc3_.col2);
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc22_ && _loc3_))
                                                   {
                                                      §§push(_loc8_);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr349:
                                                         addr292:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr350:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr351:
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  addr352:
                                                                  while(true)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§push(_loc8_);
                                                         if(!(_loc21_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc21_)
                                                         {
                                                            addr303:
                                                            if(!_loc22_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc21_ || this)
                                                               {
                                                                  addr313:
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc21_ || this)
                                                                  {
                                                                     addr321:
                                                                     _loc8_ = §§pop();
                                                                     loop10:
                                                                     for(; _loc21_; _loc7_ = §§pop(),if(!(_loc21_ || this))
                                                                     {
                                                                        continue;
                                                                     },if(false)
                                                                     {
                                                                        continue loop0;
                                                                     },§§push(_loc1_.m_sweep.c.x),if(_loc21_)
                                                                     {
                                                                        break loop2;
                                                                     })
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(!_loc22_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc21_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              addr368:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr352);
                                                                  }
                                                                  addr379:
                                                                  var _loc9_:* = §§pop();
                                                                  §§push(_loc1_.m_sweep.c.y);
                                                                  if(!(_loc22_ && _loc1_))
                                                                  {
                                                                     §§push(§§pop() + _loc5_);
                                                                     if(!(_loc22_ && _loc1_))
                                                                     {
                                                                        addr400:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc10_:* = §§pop();
                                                                     §§push(_loc2_.m_sweep.c.x);
                                                                     if(_loc21_)
                                                                     {
                                                                        §§push(§§pop() + _loc7_);
                                                                        if(_loc21_ || this)
                                                                        {
                                                                           addr417:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc11_:* = §§pop();
                                                                        §§push(_loc2_.m_sweep.c.y);
                                                                        if(_loc21_ || _loc1_)
                                                                        {
                                                                           §§push(§§pop() + _loc8_);
                                                                           if(_loc21_)
                                                                           {
                                                                              addr434:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc12_:* = §§pop();
                                                                           §§push(_loc11_);
                                                                           if(_loc21_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() - _loc9_);
                                                                              if(!(_loc22_ && this))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc13_:* = §§pop();
                                                                           §§push(_loc12_);
                                                                           if(_loc21_ || this)
                                                                           {
                                                                              §§push(§§pop() - _loc10_);
                                                                              if(!_loc22_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc14_:* = §§pop();
                                                                           var _loc15_:b2Vec2 = _loc1_.§3!D§(this.§]!<§);
                                                                           var _loc16_:b2Vec2 = _loc1_.§?!^§;
                                                                           var _loc17_:b2Vec2 = _loc2_.§?!^§;
                                                                           §§push(_loc1_.m_angularVelocity);
                                                                           if(!(_loc22_ && this))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc18_:* = §§pop();
                                                                           §§push(_loc2_.m_angularVelocity);
                                                                           if(_loc21_ || _loc1_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc19_:* = §§pop();
                                                                           §§push(_loc13_);
                                                                           if(!_loc22_)
                                                                           {
                                                                              §§push(_loc18_);
                                                                              if(_loc21_ || this)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(!(_loc22_ && _loc2_))
                                                                                 {
                                                                                    §§push(_loc15_.y);
                                                                                    if(!(_loc22_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             addr539:
                                                                                             §§push(_loc14_);
                                                                                             if(!_loc22_)
                                                                                             {
                                                                                                §§push(_loc18_);
                                                                                                if(!(_loc22_ && _loc3_))
                                                                                                {
                                                                                                   §§push(_loc15_.x);
                                                                                                   if(_loc21_ || _loc1_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc21_ || _loc1_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc21_ || _loc1_)
                                                                                                            {
                                                                                                               addr578:
                                                                                                               §§push(_loc15_.x);
                                                                                                               if(!(_loc22_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(_loc17_.x);
                                                                                                                  if(!(_loc22_ && this))
                                                                                                                  {
                                                                                                                     addr596:
                                                                                                                     §§push(_loc19_);
                                                                                                                     if(_loc21_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(-§§pop());
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 §§goto(addr613);
                                                                                                                              }
                                                                                                                              §§goto(addr701);
                                                                                                                           }
                                                                                                                           §§goto(addr687);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr625);
                                                                                                                  }
                                                                                                                  §§goto(addr621);
                                                                                                               }
                                                                                                               §§goto(addr733);
                                                                                                            }
                                                                                                            §§goto(addr752);
                                                                                                         }
                                                                                                         §§goto(addr733);
                                                                                                      }
                                                                                                      §§goto(addr725);
                                                                                                   }
                                                                                                   addr613:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc21_ || _loc1_)
                                                                                                   {
                                                                                                      addr621:
                                                                                                      §§push(_loc16_.x);
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         addr625:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            §§push(_loc18_);
                                                                                                            if(_loc22_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr701:
                                                                                                            §§push(_loc16_.y);
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!(_loc22_ && this))
                                                                                                               {
                                                                                                                  addr713:
                                                                                                                  §§push(_loc18_);
                                                                                                                  if(_loc21_ || this)
                                                                                                                  {
                                                                                                                     addr723:
                                                                                                                     §§push(§§pop() - §§pop() * _loc4_);
                                                                                                                  }
                                                                                                                  §§goto(addr723);
                                                                                                               }
                                                                                                               §§goto(addr725);
                                                                                                            }
                                                                                                            §§goto(addr723);
                                                                                                         }
                                                                                                         addr725:
                                                                                                         §§goto(addr724);
                                                                                                      }
                                                                                                      §§push(-§§pop());
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         if(_loc21_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc21_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc22_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr661:
                                                                                                                     §§push(_loc15_.y);
                                                                                                                     if(_loc21_ || _loc1_)
                                                                                                                     {
                                                                                                                        §§goto(addr670);
                                                                                                                     }
                                                                                                                     §§goto(addr725);
                                                                                                                  }
                                                                                                                  §§goto(addr733);
                                                                                                               }
                                                                                                               §§goto(addr670);
                                                                                                            }
                                                                                                            §§goto(addr701);
                                                                                                         }
                                                                                                         §§goto(addr723);
                                                                                                      }
                                                                                                      §§goto(addr713);
                                                                                                   }
                                                                                                   §§goto(addr670);
                                                                                                }
                                                                                                §§goto(addr596);
                                                                                             }
                                                                                             §§goto(addr733);
                                                                                          }
                                                                                          §§goto(addr578);
                                                                                       }
                                                                                       §§goto(addr661);
                                                                                    }
                                                                                    addr670:
                                                                                    §§push(_loc17_.y);
                                                                                    if(!(_loc22_ && _loc1_))
                                                                                    {
                                                                                       §§push(_loc19_);
                                                                                       if(!(_loc22_ && _loc3_))
                                                                                       {
                                                                                          addr687:
                                                                                          §§push(_loc7_);
                                                                                          if(_loc21_ || _loc1_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc22_)
                                                                                             {
                                                                                                addr698:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc22_)
                                                                                                {
                                                                                                   §§goto(addr701);
                                                                                                }
                                                                                                §§goto(addr713);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr723);
                                                                                       }
                                                                                       §§goto(addr698);
                                                                                    }
                                                                                    addr724:
                                                                                    §§push(§§pop() + §§pop() * §§pop());
                                                                                    if(_loc21_ || this)
                                                                                    {
                                                                                       addr733:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc21_ || this)
                                                                                       {
                                                                                          addr752:
                                                                                          §§push(Number(§§pop()));
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       §§goto(addr752);
                                                                                    }
                                                                                    var _loc20_:* = §§pop();
                                                                                    return §§pop();
                                                                                 }
                                                                                 §§goto(addr733);
                                                                              }
                                                                              §§goto(addr661);
                                                                           }
                                                                           §§goto(addr539);
                                                                        }
                                                                        §§goto(addr434);
                                                                     }
                                                                     §§goto(addr417);
                                                                  }
                                                                  §§goto(addr400);
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr349);
                                                            }
                                                         }
                                                         addr360:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc22_ && _loc3_))
                                                         {
                                                            §§goto(addr368);
                                                         }
                                                         §§goto(addr379);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr360);
                                                   }
                                                }
                                             }
                                             §§goto(addr360);
                                          }
                                       }
                                    }
                                    §§goto(addr324);
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr187);
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc22_ && _loc2_))
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc22_ && _loc2_))
                              {
                                 _loc5_ = §§pop();
                                 if(!_loc22_)
                                 {
                                    §§push(_loc6_);
                                    if(_loc21_ || _loc1_)
                                    {
                                    }
                                 }
                                 §§goto(addr159);
                              }
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr99);
               }
               §§goto(addr89);
            }
            §§goto(addr79);
         }
         §§goto(addr61);
      }
      
      public function §!!B§() : Boolean
      {
         return this.§ !§;
      }
      
      public function §2!4§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::[Z.SetAwake(true);
            while(true)
            {
               b2internal::8!F.SetAwake(true);
               while(!_loc3_)
               {
                  this.§ !§ = param1;
                  if(!(_loc3_ && param1))
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §]!7§() : Number
      {
         return this.§3!<§;
      }
      
      public function §%!Z§() : Number
      {
         return this.§"b§;
      }
      
      public function §;1§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            b2internal::[Z.SetAwake(true);
         }
         while(true)
         {
            b2internal::8!F.SetAwake(true);
            while(!(_loc3_ && this))
            {
               this.§3!<§ = param1;
               while(!_loc3_)
               {
                  this.§"b§ = param2;
                  if(_loc4_ || param2)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§%O§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            b2internal::[Z.SetAwake(true);
            do
            {
               b2internal::8!F.SetAwake(true);
               do
               {
                  this.§%O§ = param1;
               }
               while(!_loc3_);
               
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function §"!v§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::[Z.SetAwake(true);
            do
            {
               b2internal::8!F.SetAwake(true);
               do
               {
                  this.§0!9§ = param1;
               }
               while(_loc2_ && this);
               
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function §7"%§() : Number
      {
         return this.§0!9§;
      }
      
      public function §5!e§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::[Z.SetAwake(true);
         }
         do
         {
            b2internal::8!F.SetAwake(true);
            do
            {
               this.§[D§ = param1;
            }
            while(!(_loc2_ || param1));
            
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function §4!3§() : Number
      {
         return this.§[D§;
      }
      
      public function §3""§() : Number
      {
         return this.§8!9§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
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
