package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Mat22;
   import §2"=§.b2Mat33;
   import §2"=§.b2Math;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §2"=§.b2Vec3;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §@!r§:b2Vec2;
      
      private var §;!Y§:b2Vec2;
      
      private var §1![§:Number;
      
      private var §2d§:b2Vec2;
      
      private var §6!V§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §,"0§:b2Mat33;
      
      private var §?;§:b2Vec3;
      
      private var §+!§:Number;
      
      private var §;!T§:Number;
      
      private var §`!v§:Number;
      
      private var §78§:Number;
      
      private var §&5§:Number;
      
      private var §3u§:Number;
      
      private var §!k§:Boolean;
      
      private var §"%§:Boolean;
      
      private var §'T§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && this))
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               addr332:
               while(true)
               {
                  this.§@!r§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§;!Y§ = new b2Vec2();
                     while(true)
                     {
                        this.§2d§ = new b2Vec2();
                        addr295:
                        while(_loc6_)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               while(_loc6_ || param1)
               {
                  this.m_localAnchor1.SetV(param1.§!2§);
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        this.m_localAnchor2.SetV(param1.§ !c§);
                        while(true)
                        {
                           this.§@!r§.SetV(param1.§#"$§);
                           while(true)
                           {
                              §§push(this.§;!Y§);
                              loop12:
                              while(true)
                              {
                                 §§push(this.§@!r§);
                                 addr231:
                                 while(true)
                                 {
                                    §§push(§§pop().y);
                                    if(!_loc5_)
                                    {
                                       §§push(-§§pop());
                                    }
                                    addr235:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       continue loop12;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     break;
                     if(!(_loc6_ || _loc2_))
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        this.§`!v§ = param1.§32§;
                        §§goto(addr144);
                     }
                     §§goto(addr289);
                  }
                  §§goto(addr295);
                  while(_loc6_ || _loc3_)
                  {
                     this.§3u§ = param1.motorSpeed;
                     §§goto(addr119);
                     §§goto(addr62);
                  }
               }
            }
         }
         §§goto(addr151);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0"7.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: `.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§?;§.x);
            if(!_loc3_)
            {
               §§push(this.§6!V§.x);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc2_ || _loc3_)
                  {
                     §§push(this.§;!T§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(this.§?;§.z);
                        if(_loc2_ || this)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              §§push(this.§2d§.x);
                              if(_loc2_ || _loc2_)
                              {
                                 addr90:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr101:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          addr105:
                                          §§push(this.§?;§.x);
                                          if(_loc2_)
                                          {
                                             addr110:
                                             §§push(this.§6!V§.y);
                                             if(!(_loc3_ && param1))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc2_ || this)
                                                {
                                                   addr128:
                                                   §§push(this.§;!T§);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§push(this.§?;§.z);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§goto(addr169);
                                                      }
                                                      addr169:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         addr165:
                                                         §§push(this.§2d§.y);
                                                      }
                                                      return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr165);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr105);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr90);
                     }
                  }
                  §§goto(addr101);
               }
               §§goto(addr110);
            }
         }
         §§goto(addr101);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            return §§pop() * this.§?;§.y;
         }
      }
      
      public function §9[§() : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::0"7;
         var _loc2_:b2Body = b2internal:: `;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!(_loc10_ && _loc3_))
         {
            §§push(§§pop() - _loc4_.x);
            if(!_loc10_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_.y);
         if(!_loc10_)
         {
            §§push(§§pop() - _loc4_.y);
            if(!(_loc10_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2;
         §§push((_loc8_ = _loc1_.§<!v§(this.§@!r§)).x);
         if(!_loc10_)
         {
            §§push(_loc6_);
            if(!_loc10_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc10_ && _loc2_))
               {
                  §§push(_loc8_.y);
                  if(_loc11_)
                  {
                     §§push(§§pop() * _loc7_);
                     if(!_loc10_)
                     {
                        addr109:
                        §§push(§§pop() + §§pop());
                        if(_loc11_ || this)
                        {
                           addr128:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr128);
                     }
                     var _loc9_:* = §§pop();
                     return §§pop();
                  }
                  §§goto(addr109);
               }
               §§goto(addr128);
            }
            §§goto(addr109);
         }
         §§goto(addr128);
      }
      
      public function §%l§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::0"7;
         var _loc2_:b2Body = b2internal:: `;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!(_loc22_ && _loc1_))
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc21_)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(_loc21_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(_loc21_ || this)
            {
               §§push(_loc4_);
               if(!(_loc22_ && _loc2_))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc22_ && _loc2_))
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc21_ || _loc3_)
                     {
                        addr101:
                        §§push(§§pop() + §§pop() * _loc5_);
                        if(_loc22_)
                        {
                        }
                        var _loc6_:* = §§pop();
                        if(!_loc22_)
                        {
                           §§push(_loc3_.col1.y);
                           if(_loc21_ || _loc3_)
                           {
                              §§push(_loc4_);
                              if(!(_loc22_ && _loc2_))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc22_ && _loc2_))
                                 {
                                    §§push(_loc3_.col2.y);
                                    if(_loc21_ || this)
                                    {
                                       addr146:
                                       §§push(§§pop() + §§pop() * _loc5_);
                                       if(!_loc22_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc22_ && _loc2_))
                                          {
                                             addr157:
                                             _loc5_ = §§pop();
                                             addr170:
                                             if(!_loc22_)
                                             {
                                                §§push(_loc6_);
                                                if(_loc21_ || _loc2_)
                                                {
                                                   addr168:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             _loc3_ = _loc2_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(_loc21_)
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                                if(!(_loc22_ && _loc2_))
                                                {
                                                   addr192:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc7_:* = §§pop();
                                                §§push(this.m_localAnchor2.y);
                                                if(!_loc22_)
                                                {
                                                   §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                   if(_loc21_)
                                                   {
                                                      addr206:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(!(_loc22_ && _loc1_))
                                                   {
                                                      §§push(_loc3_.col1);
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc22_)
                                                         {
                                                            §§push(_loc7_);
                                                            if(!(_loc22_ && _loc3_))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc22_)
                                                               {
                                                                  §§push(_loc3_.col2);
                                                                  loop1:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc21_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc22_ && _loc1_))
                                                                              {
                                                                                 loop2:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       loop3:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc22_ && this))
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             loop6:
                                                                                             while(true)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.col1);
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!(_loc22_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(_loc7_);
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc22_ && this)
                                                                                                            {
                                                                                                               _loc8_ = §§pop();
                                                                                                               do
                                                                                                               {
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(_loc21_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc22_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr359:
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                        break loop5;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               while(_loc7_ = §§pop(), _loc22_);
                                                                                                               
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  §§push(_loc1_.m_sweep.c.x);
                                                                                                                  if(_loc21_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§goto(addr359);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(_loc3_.col2);
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                                  break loop5;
                                                                                                               }
                                                                                                               addr264:
                                                                                                               §§push(_loc8_);
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                            continue;
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc22_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc22_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc21_ || this)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     break loop3;
                                                                                                                  }
                                                                                                               }
                                                                                                               break loop5;
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         §§goto(addr264);
                                                                                                      }
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                             addr337:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       addr364:
                                                                                       var _loc9_:* = §§pop();
                                                                                       §§push(_loc1_.m_sweep.c.y);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(§§pop() + _loc5_);
                                                                                          if(!(_loc22_ && _loc1_))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc10_:* = §§pop();
                                                                                       §§push(_loc2_.m_sweep.c.x);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(§§pop() + _loc7_);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             addr392:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc11_:* = §§pop();
                                                                                          §§push(_loc2_.m_sweep.c.y);
                                                                                          if(!_loc22_)
                                                                                          {
                                                                                             §§push(§§pop() + _loc8_);
                                                                                             if(!(_loc22_ && _loc2_))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          var _loc12_:* = §§pop();
                                                                                          §§push(_loc11_);
                                                                                          if(_loc21_ || this)
                                                                                          {
                                                                                             §§push(§§pop() - _loc9_);
                                                                                             if(_loc21_ || _loc3_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          var _loc13_:* = §§pop();
                                                                                          §§push(_loc12_);
                                                                                          if(!_loc22_)
                                                                                          {
                                                                                             §§push(§§pop() - _loc10_);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          var _loc14_:* = §§pop();
                                                                                          var _loc15_:b2Vec2 = _loc1_.§<!v§(this.§@!r§);
                                                                                          var _loc16_:b2Vec2 = _loc1_.§,b§;
                                                                                          var _loc17_:b2Vec2 = _loc2_.§,b§;
                                                                                          §§push(_loc1_.m_angularVelocity);
                                                                                          if(_loc21_ || _loc3_)
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
                                                                                             if(_loc21_ || _loc2_)
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   §§push(_loc15_.y);
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc21_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(_loc14_);
                                                                                                            if(!(_loc22_ && this))
                                                                                                            {
                                                                                                               §§push(_loc18_);
                                                                                                               if(!(_loc22_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(_loc15_.x);
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc22_)
                                                                                                                     {
                                                                                                                        addr527:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc21_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr535:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              addr538:
                                                                                                                              §§push(_loc15_.x);
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(_loc17_.x);
                                                                                                                                 if(_loc21_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc19_);
                                                                                                                                    if(_loc21_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          if(!_loc22_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc21_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc21_)
                                                                                                                                                {
                                                                                                                                                   addr571:
                                                                                                                                                   §§push(_loc16_.x);
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                      addr575:
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(_loc21_ || this)
                                                                                                                                                      {
                                                                                                                                                         addr583:
                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                         if(!(_loc22_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr591:
                                                                                                                                                            §§push(-§§pop());
                                                                                                                                                            if(_loc21_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr599:
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               if(!(_loc22_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     addr610:
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(!(_loc22_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr618:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!(_loc22_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr626:
                                                                                                                                                                           §§push(_loc15_.y);
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              addr630:
                                                                                                                                                                              §§push(_loc17_.y);
                                                                                                                                                                              if(!_loc22_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr634:
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                    if(!(_loc22_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!(_loc22_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr656:
                                                                                                                                                                                             §§push(_loc16_.y);
                                                                                                                                                                                             if(!(_loc22_ && _loc1_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr665:
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                if(_loc22_ && this)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr684);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr683:
                                                                                                                                                                                             addr684:
                                                                                                                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                             if(!(_loc22_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr708);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr708:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!_loc22_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr706:
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                          if(_loc21_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr681:
                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr683);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr665);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr683);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr656);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr665);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr708);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr665);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr634);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr610);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr618);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr610);
                                                                                                                                                }
                                                                                                                                                §§goto(addr630);
                                                                                                                                             }
                                                                                                                                             §§goto(addr610);
                                                                                                                                          }
                                                                                                                                          §§goto(addr681);
                                                                                                                                       }
                                                                                                                                       §§goto(addr591);
                                                                                                                                    }
                                                                                                                                    §§goto(addr575);
                                                                                                                                 }
                                                                                                                                 §§goto(addr571);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr706);
                                                                                                                        }
                                                                                                                        §§goto(addr626);
                                                                                                                     }
                                                                                                                     §§goto(addr665);
                                                                                                                  }
                                                                                                                  §§goto(addr599);
                                                                                                               }
                                                                                                               §§goto(addr527);
                                                                                                            }
                                                                                                            §§goto(addr708);
                                                                                                         }
                                                                                                         §§goto(addr706);
                                                                                                      }
                                                                                                      §§goto(addr708);
                                                                                                   }
                                                                                                   §§goto(addr583);
                                                                                                }
                                                                                                §§goto(addr535);
                                                                                             }
                                                                                             §§goto(addr708);
                                                                                          }
                                                                                          §§goto(addr538);
                                                                                       }
                                                                                       §§goto(addr392);
                                                                                       addr328:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr363:
                                                                                 §§goto(addr364);
                                                                                 §§push(Number(§§pop()));
                                                                                 addr325:
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc21_)
                                                                           {
                                                                              §§goto(addr363);
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        addr316:
                                                                     }
                                                                     §§goto(addr325);
                                                                  }
                                                               }
                                                               §§goto(addr328);
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                         §§goto(addr364);
                                                      }
                                                   }
                                                   §§goto(addr337);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr192);
                                          }
                                          _loc4_ = §§pop();
                                          §§goto(addr170);
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr157);
                     }
                  }
                  §§goto(addr101);
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr101);
         }
         §§goto(addr47);
      }
      
      public function §%!a§() : Boolean
      {
         return this.§!k§;
      }
      
      public function §9H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::0"7.SetAwake(true);
         }
         do
         {
            b2internal:: `.SetAwake(true);
            do
            {
               this.§!k§ = param1;
            }
            while(!(_loc3_ || param1));
            
         }
         while(!_loc3_);
         
      }
      
      public function §4!Z§() : Number
      {
         return this.§`!v§;
      }
      
      public function §5!9§() : Number
      {
         return this.§78§;
      }
      
      public function §<4§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            b2internal::0"7.SetAwake(true);
            do
            {
               b2internal:: `.SetAwake(true);
               do
               {
                  this.§`!v§ = param1;
                  do
                  {
                     this.§78§ = param2;
                  }
                  while(!_loc4_);
                  
               }
               while(!(_loc4_ || this));
               
            }
            while(_loc3_);
            
         }
      }
      
      public function §;_§() : Boolean
      {
         return this.§"%§;
      }
      
      public function §]v§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::0"7.SetAwake(true);
            while(true)
            {
               b2internal:: `.SetAwake(true);
               while(_loc3_)
               {
                  this.§"%§ = param1;
                  if(_loc3_ || this)
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §^x§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            b2internal::0"7.SetAwake(true);
            while(true)
            {
               b2internal:: `.SetAwake(true);
               while(!(_loc3_ && param1))
               {
                  this.§3u§ = param1;
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §7U§() : Number
      {
         return this.§3u§;
      }
      
      public function §1!1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::0"7.SetAwake(true);
         }
         while(true)
         {
            b2internal:: `.SetAwake(true);
            while(!_loc2_)
            {
               this.§&5§ = param1;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §#!8§() : Number
      {
         return this.§;!T§;
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
