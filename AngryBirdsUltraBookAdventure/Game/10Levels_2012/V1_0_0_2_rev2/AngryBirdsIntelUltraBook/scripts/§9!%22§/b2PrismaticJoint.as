package §9!"§
{
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §>H§.b2Mat22;
   import §>H§.b2Mat33;
   import §>H§.b2Math;
   import §>H§.b2Transform;
   import §>H§.b2Vec2;
   import §>H§.b2Vec3;
   import §`w§.b2Body;
   import §`w§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §;!3§:b2Vec2;
      
      private var §"A§:b2Vec2;
      
      private var §<!O§:Number;
      
      private var §]]§:b2Vec2;
      
      private var §^^§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §^!u§:b2Mat33;
      
      private var §,!2§:b2Vec3;
      
      private var §<M§:Number;
      
      private var §8t§:Number;
      
      private var §,8§:Number;
      
      private var §9D§:Number;
      
      private var §&e§:Number;
      
      private var §&?§:Number;
      
      private var §5,§:Boolean;
      
      private var §-!>§:Boolean;
      
      private var §>!X§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!_loc5_)
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§;!3§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§"A§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§]]§ = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§^^§ = new b2Vec2();
                           while(true)
                           {
                              this.§^!u§ = new b2Mat33();
                              continue loop3;
                              while(_loc6_ || param1)
                              {
                                 this.§;!3§.SetV(param1.§5!Q§);
                                 continue loop2;
                                 loop21:
                                 while(_loc6_)
                                 {
                                    this.§,8§ = param1.§ !B§;
                                    loop22:
                                    while(true)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          addr144:
                                          if(_loc6_ || _loc3_)
                                          {
                                             if(_loc6_)
                                             {
                                                this.§9D§ = param1.§!!l§;
                                                loop23:
                                                while(true)
                                                {
                                                   this.§&e§ = param1.§>!a§;
                                                   loop24:
                                                   for(; _loc6_; if(_loc6_ || _loc3_)
                                                   {
                                                      this.§>!X§ = b2internal::+!t;
                                                      loop28:
                                                      while(_loc6_)
                                                      {
                                                         this.§]]§.§`!5§();
                                                         while(!(_loc5_ && this))
                                                         {
                                                            this.§^^§.§`!5§();
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               if(!(_loc6_ || param1))
                                                               {
                                                                  continue loop28;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     return;
                                                                  }
                                                                  §§goto(addr93);
                                                               }
                                                               §§goto(addr78);
                                                               continue loop28;
                                                            }
                                                         }
                                                         while(_loc6_ || param1)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§8t§ = 0;
                                                               continue loop21;
                                                            }
                                                            §§goto(addr58);
                                                         }
                                                         addr58:
                                                         while(_loc6_ || param1)
                                                         {
                                                            this.§<M§ = 0;
                                                            §§goto(addr175);
                                                         }
                                                         addr175:
                                                         continue loop3;
                                                      }
                                                      continue loop22;
                                                   })
                                                   {
                                                      if(!(_loc6_ || _loc2_))
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         this.§&?§ = param1.motorSpeed;
                                                         loop25:
                                                         while(_loc6_ || _loc3_)
                                                         {
                                                            this.§5,§ = param1.§&%§;
                                                            while(_loc6_)
                                                            {
                                                               this.§-!>§ = param1.§!;§;
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                                  continue loop25;
                                                               }
                                                               continue loop24;
                                                            }
                                                            continue loop23;
                                                         }
                                                         loop8:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            addr292:
                                                            while(true)
                                                            {
                                                               super(param1);
                                                               continue loop8;
                                                            }
                                                         }
                                                         addr101:
                                                         continue loop4;
                                                      }
                                                      addr272:
                                                      while(true)
                                                      {
                                                         this.m_localAnchor2.SetV(param1.§%!e§);
                                                         break loop21;
                                                      }
                                                   }
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(this.§"A§);
                                                      if(!(_loc6_ || _loc2_))
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§;!3§);
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc5_)
                                                         {
                                                            §§pop().y = §§pop();
                                                            while(true)
                                                            {
                                                               this.§<!O§ = param1.§-!Y§;
                                                               break loop22;
                                                            }
                                                            addr224:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc6_)
                                                            {
                                                               §§push(-§§pop());
                                                            }
                                                         }
                                                         addr230:
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         continue loop15;
                                                      }
                                                   }
                                                   addr228:
                                                   while(true)
                                                   {
                                                      §§goto(addr230);
                                                      §§goto(addr237);
                                                   }
                                                }
                                             }
                                             §§goto(addr224);
                                          }
                                          break;
                                       }
                                       continue loop21;
                                    }
                                    while(true)
                                    {
                                       this.§,!2§.§`!5§();
                                       §§goto(addr187);
                                       §§goto(addr144);
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
         §§goto(addr182);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || this)
         {
            §§push(this.§,!2§.x);
            if(!(_loc3_ && _loc3_))
            {
               §§push(this.§^^§.x);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc2_)
                  {
                     §§push(this.§8t§);
                     if(_loc2_)
                     {
                        §§push(this.§,!2§.z);
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              §§push(this.§]]§.x);
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc3_ && param1))
                                 {
                                    addr93:
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_ || param1)
                                    {
                                       addr102:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(_loc2_)
                                       {
                                          addr105:
                                          §§push(this.§,!2§.x);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr115:
                                             §§push(this.§^^§.y);
                                             if(!_loc3_)
                                             {
                                                addr120:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc3_)
                                                {
                                                   addr123:
                                                   §§push(this.§8t§);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      addr142:
                                                      §§push(this.§,!2§.z);
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         §§goto(addr159);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                §§goto(addr159);
                                             }
                                             §§goto(addr142);
                                          }
                                       }
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr123);
                  }
                  addr159:
                  §§push(§§pop() + §§pop());
                  if(_loc2_)
                  {
                     addr155:
                     §§push(this.§]]§.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
               }
               §§goto(addr93);
            }
            §§goto(addr105);
         }
         §§goto(addr102);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() * this.§,!2§.y;
         }
      }
      
      public function §<!0§() : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::6!G;
         var _loc2_:b2Body = b2internal::0!w;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(_loc11_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc10_ && _loc3_))
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(!_loc10_)
            {
               §§push(§§pop() - _loc4_.y);
               if(!_loc10_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§!!U§(this.§;!3§)).x);
            if(_loc11_)
            {
               §§push(_loc6_);
               if(!_loc10_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc11_ || _loc1_)
                  {
                     §§push(_loc8_.y);
                     if(!(_loc10_ && this))
                     {
                        §§goto(addr115);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr133);
               }
               addr115:
               §§push(§§pop() * _loc7_);
               if(!(_loc10_ && _loc3_))
               {
                  addr124:
                  §§push(§§pop() + §§pop());
                  if(_loc11_ || _loc3_)
                  {
                     addr133:
                     §§push(Number(§§pop()));
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr133);
               }
               var _loc9_:* = §§pop();
               return §§pop();
            }
            §§goto(addr133);
         }
         §§goto(addr52);
      }
      
      public function §4!f§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::6!G;
         var _loc2_:b2Body = b2internal::0!w;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!_loc22_)
            {
               addr42:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc22_)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(!_loc22_)
               {
                  addr56:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(_loc3_.col1.x);
               if(!_loc22_)
               {
                  §§push(_loc4_);
                  if(!_loc22_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc22_ && _loc3_))
                     {
                        addr74:
                        §§push(_loc3_.col2.x);
                        if(!_loc22_)
                        {
                           addr79:
                           §§push(§§pop() * _loc5_);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc22_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc6_:* = §§pop();
                     if(_loc21_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!_loc22_)
                        {
                           §§push(_loc4_);
                           if(_loc21_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc21_ || _loc1_)
                              {
                                 §§push(_loc3_.col2.y);
                                 if(!(_loc22_ && this))
                                 {
                                    addr114:
                                    §§push(§§pop() * _loc5_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc22_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc22_)
                                    {
                                       addr122:
                                       _loc5_ = §§pop();
                                       addr130:
                                       if(_loc21_)
                                       {
                                          §§push(_loc6_);
                                          if(_loc21_)
                                          {
                                             addr128:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       _loc3_ = _loc2_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(_loc21_ || _loc2_)
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                          if(!(_loc22_ && this))
                                          {
                                             addr157:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc7_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(_loc21_)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                             if(!(_loc22_ && _loc1_))
                                             {
                                                addr176:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc8_:* = §§pop();
                                             if(_loc21_)
                                             {
                                                §§push(_loc3_.col1);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_.col2);
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc21_ || _loc3_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr257:
                                                                     §§push(_loc8_);
                                                                     if(!(_loc21_ || _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc21_)
                                                                     {
                                                                        addr268:
                                                                        §§push(§§pop() + §§pop());
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc21_)
                                                                           {
                                                                              if(_loc22_ && _loc2_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              while(!(_loc22_ && _loc3_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(_loc21_ || this)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    addr339:
                                                                                    addr339:
                                                                                    addr329:
                                                                                    addr330:
                                                                                    §§push(§§pop() + _loc4_);
                                                                                    if(!(_loc22_ && _loc1_))
                                                                                    {
                                                                                       break loop11;
                                                                                    }
                                                                                    var _loc9_:* = §§pop();
                                                                                    §§push(_loc1_.m_sweep.c.y);
                                                                                    if(_loc21_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc5_);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc10_:* = §§pop();
                                                                                    §§push(_loc2_.m_sweep.c.x);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc7_);
                                                                                       if(!(_loc22_ && _loc3_))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc11_:* = §§pop();
                                                                                    §§push(_loc2_.m_sweep.c.y);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc8_);
                                                                                       if(!(_loc22_ && _loc2_))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    §§push(_loc11_);
                                                                                    if(!(_loc22_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop() - _loc9_);
                                                                                       if(_loc21_)
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
                                                                                          addr412:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc14_:* = §§pop();
                                                                                       var _loc15_:b2Vec2 = _loc1_.§!!U§(this.§;!3§);
                                                                                       var _loc16_:b2Vec2 = _loc1_.§^O§;
                                                                                       var _loc17_:b2Vec2 = _loc2_.§^O§;
                                                                                       §§push(_loc1_.m_angularVelocity);
                                                                                       if(!(_loc22_ && _loc1_))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc18_:* = §§pop();
                                                                                       §§push(_loc2_.m_angularVelocity);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc19_:* = §§pop();
                                                                                       §§push(_loc13_);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(_loc18_);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(_loc21_ || this)
                                                                                             {
                                                                                                §§push(_loc15_.y);
                                                                                                if(_loc21_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         addr474:
                                                                                                         §§push(_loc14_);
                                                                                                         if(_loc21_ || _loc1_)
                                                                                                         {
                                                                                                            §§push(_loc18_);
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               §§push(_loc15_.x);
                                                                                                               if(_loc21_ || _loc1_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     §§goto(addr497);
                                                                                                                  }
                                                                                                                  §§goto(addr590);
                                                                                                               }
                                                                                                               §§goto(addr550);
                                                                                                            }
                                                                                                            addr497:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               addr500:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  addr503:
                                                                                                                  §§push(_loc15_.x);
                                                                                                                  if(_loc21_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(_loc17_.x);
                                                                                                                     if(!_loc22_)
                                                                                                                     {
                                                                                                                        §§push(_loc19_);
                                                                                                                        if(!_loc22_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc22_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc22_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       addr541:
                                                                                                                                       §§push(_loc16_.x);
                                                                                                                                       if(!(_loc22_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          addr550:
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(!_loc22_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc18_);
                                                                                                                                             if(_loc21_)
                                                                                                                                             {
                                                                                                                                                addr556:
                                                                                                                                                §§push(-§§pop());
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                   if(!(_loc22_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc21_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(_loc21_)
                                                                                                                                                         {
                                                                                                                                                            addr573:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc21_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr581);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr653);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr649);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr646);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr649);
                                                                                                                                    }
                                                                                                                                    §§goto(addr590);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr649);
                                                                                                                        }
                                                                                                                        §§goto(addr556);
                                                                                                                     }
                                                                                                                     §§goto(addr541);
                                                                                                                  }
                                                                                                                  §§goto(addr653);
                                                                                                               }
                                                                                                               §§goto(addr657);
                                                                                                            }
                                                                                                            addr581:
                                                                                                            §§push(_loc15_.y);
                                                                                                            if(!(_loc22_ && _loc3_))
                                                                                                            {
                                                                                                               addr590:
                                                                                                               §§push(_loc17_.y);
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§push(_loc19_);
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!(_loc22_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(_loc16_.y);
                                                                                                                              if(!(_loc22_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc21_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr649);
                                                                                                                                 }
                                                                                                                                 addr649:
                                                                                                                                 §§goto(addr638);
                                                                                                                              }
                                                                                                                              §§goto(addr646);
                                                                                                                           }
                                                                                                                           addr638:
                                                                                                                           §§goto(addr648);
                                                                                                                        }
                                                                                                                        addr648:
                                                                                                                        §§goto(addr650);
                                                                                                                     }
                                                                                                                     §§goto(addr649);
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr649);
                                                                                                            }
                                                                                                            addr650:
                                                                                                            §§push(_loc18_);
                                                                                                            if(_loc21_ || this)
                                                                                                            {
                                                                                                               addr646:
                                                                                                               §§push(_loc4_);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               addr653:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  addr657:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr657);
                                                                                                            }
                                                                                                            var _loc20_:* = §§pop();
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                         §§goto(addr653);
                                                                                                      }
                                                                                                      §§goto(addr503);
                                                                                                   }
                                                                                                   §§goto(addr500);
                                                                                                }
                                                                                                §§goto(addr573);
                                                                                             }
                                                                                             §§goto(addr500);
                                                                                          }
                                                                                          §§goto(addr653);
                                                                                       }
                                                                                       §§goto(addr474);
                                                                                    }
                                                                                    §§goto(addr412);
                                                                                 }
                                                                              }
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_.col1);
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(!(_loc22_ && _loc2_))
                                                                                       {
                                                                                          if(_loc21_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_.col2);
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                if(!_loc22_)
                                                                                                {
                                                                                                   if(!(_loc21_ || _loc2_))
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   §§goto(addr257);
                                                                                                }
                                                                                                §§goto(addr268);
                                                                                             }
                                                                                             continue loop4;
                                                                                             addr243:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr305:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc22_)
                                                                                             {
                                                                                                _loc6_ = §§pop();
                                                                                                continue loop7;
                                                                                             }
                                                                                             §§goto(addr339);
                                                                                          }
                                                                                          §§goto(addr329);
                                                                                       }
                                                                                       break;
                                                                                       addr197:
                                                                                       if(!(_loc21_ || _loc1_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc21_ || _loc1_)
                                                                                       {
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             _loc7_ = §§pop();
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             §§push(_loc1_.m_sweep.c.x);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr339);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr243);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr339);
                                                                                    }
                                                                                    §§goto(addr330);
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              addr280:
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr339);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr339);
                                                                  }
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr287);
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr157);
                                    }
                                    _loc4_ = §§pop();
                                    §§goto(addr130);
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr114);
                        }
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr79);
               }
               §§goto(addr74);
            }
            §§goto(addr56);
         }
         §§goto(addr42);
      }
      
      public function §1!B§() : Boolean
      {
         return this.§5,§;
      }
      
      public function §?j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            b2internal::6!G.SetAwake(true);
            while(true)
            {
               b2internal::0!w.SetAwake(true);
               loop1:
               while(!(_loc3_ && _loc3_))
               {
                  while(true)
                  {
                     this.§5,§ = param1;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §"r§() : Number
      {
         return this.§,8§;
      }
      
      public function §]!u§() : Number
      {
         return this.§9D§;
      }
      
      public function §7_§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            b2internal::6!G.SetAwake(true);
            while(true)
            {
               b2internal::0!w.SetAwake(true);
               while(_loc3_)
               {
                  this.§,8§ = param1;
                  do
                  {
                     this.§9D§ = param2;
                  }
                  while(_loc4_);
                  
                  if(!_loc4_)
                  {
                     return;
                     addr41:
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      public function §>o§() : Boolean
      {
         return this.§-!>§;
      }
      
      public function §8!'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            b2internal::6!G.SetAwake(true);
            while(true)
            {
               b2internal::0!w.SetAwake(true);
               loop1:
               while(_loc3_ || _loc2_)
               {
                  while(true)
                  {
                     this.§-!>§ = param1;
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      public function §[>§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            b2internal::6!G.SetAwake(true);
            do
            {
               b2internal::0!w.SetAwake(true);
               do
               {
                  this.§&?§ = param1;
               }
               while(_loc3_);
               
            }
            while(_loc3_);
            
         }
      }
      
      public function §1!V§() : Number
      {
         return this.§&?§;
      }
      
      public function §1z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            b2internal::6!G.SetAwake(true);
            while(true)
            {
               b2internal::0!w.SetAwake(true);
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            this.§&e§ = param1;
            if(!_loc3_)
            {
               if(!(_loc3_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §!!^§() : Number
      {
         return this.§8t§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc25_:Boolean = false;
         var _loc26_:Boolean = true;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:b2Vec3 = null;
         var _loc20_:b2Vec3 = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc2_:b2Body = b2internal::6!G;
         var _loc3_:b2Body = b2internal::0!w;
         var _loc4_:b2Vec2 = _loc2_.§^O§;
         §§push(_loc2_.m_angularVelocity);
         if(_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc3_.§^O§;
         §§push(_loc3_.m_angularVelocity);
         if(!_loc25_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(_loc26_ || _loc2_)
         {
            §§push(this.§-!>§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr639:
                        do
                        {
                           §§push(this.§>!X§ == b2internal::'!E);
                           if(!(_loc25_ && _loc3_))
                           {
                              if(_loc25_ && _loc3_)
                              {
                                 continue loop2;
                              }
                              if(!_loc26_)
                              {
                                 continue loop0;
                              }
                              §§push(!§§pop());
                           }
                        }
                        while(_loc26_ || _loc3_);
                        
                        continue loop1;
                     }
                  }
                  while(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§push(this.§]]§.x);
                        loop6:
                        while(true)
                        {
                           §§push(_loc6_.x);
                           if(!_loc25_)
                           {
                              §§push(_loc4_.x);
                              if(!(_loc25_ && _loc3_))
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!_loc25_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    while(true)
                                    {
                                       §§push(this.§]]§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          addr591:
                                          loop42:
                                          while(true)
                                          {
                                             §§push(_loc6_.y);
                                             if(!_loc25_)
                                             {
                                                §§push(_loc4_.y);
                                                if(_loc26_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc26_ || _loc2_)
                                                   {
                                                      addr607:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc26_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         while(true)
                                                         {
                                                            §§push(this.m_a2);
                                                            loop44:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               loop45:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc25_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(this.m_a1);
                                                                           loop48:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(_loc26_ || this)
                                                                              {
                                                                                 addr629:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop11:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc14_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§<M§);
                                                                                             if(_loc26_)
                                                                                             {
                                                                                                §§push(this.§&?§);
                                                                                                loop13:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc14_);
                                                                                                   if(!(_loc26_ || param1))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      loop14:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc26_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop42;
                                                                                                         }
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         loop15:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr535:
                                                                                                            loop16:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc15_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§8t§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop19:
                                                                                                                     while(!_loc25_)
                                                                                                                     {
                                                                                                                        _loc16_ = §§pop();
                                                                                                                        loop20:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param1.§^Z§);
                                                                                                                           if(!_loc25_)
                                                                                                                           {
                                                                                                                              §§push(this.§&e§);
                                                                                                                              if(!(_loc25_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    continue loop44;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 loop21:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop22:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc17_ = §§pop();
                                                                                                                                       while(_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(this);
                                                                                                                                          §§push(b2Math);
                                                                                                                                          §§push(this.§8t§);
                                                                                                                                          if(_loc26_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             if(_loc26_ || param1)
                                                                                                                                             {
                                                                                                                                                addr470:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                §§push(_loc17_);
                                                                                                                                                if(!_loc25_)
                                                                                                                                                {
                                                                                                                                                   addr473:
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                }
                                                                                                                                                §§pop().§8t§ = §§pop().§]#§(§§pop(),§§pop(),_loc17_);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§8t§);
                                                                                                                                                   if(!_loc25_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc26_ || param1))
                                                                                                                                                      {
                                                                                                                                                         continue loop16;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                      if(!_loc25_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         loop25:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               continue loop10;
                                                                                                                                                            }
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(!_loc25_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc25_ && _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop48;
                                                                                                                                                                  }
                                                                                                                                                                  _loc15_ = §§pop();
                                                                                                                                                                  loop26:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§]]§);
                                                                                                                                                                     loop27:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        loop28:
                                                                                                                                                                        while(!_loc25_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop21;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              loop29:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                                                                 addr453:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                    if(_loc26_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc25_ && _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(this.§]]§);
                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop27;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop8;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          addr312:
                                                                                                                                                                                          while(!(_loc25_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc25_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop28;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr391:
                                                                                                                                                                                    while(_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop25;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop6;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       if(_loc26_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc9_ = §§pop();
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                             continue loop29;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr406:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop26;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop22;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr650:
                                                                                                                                                                              §§push(_loc6_.x);
                                                                                                                                                                              if(!(_loc25_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc4_.x);
                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr666:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr669);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr736);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr669);
                                                                                                                                                                                 }
                                                                                                                                                                                 break loop13;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop20;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr736);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop14;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr452);
                                                                                                                                                         }
                                                                                                                                                         continue loop48;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr679);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr452);
                                                                                                                                                }
                                                                                                                                                continue loop19;
                                                                                                                                             }
                                                                                                                                             §§goto(addr473);
                                                                                                                                          }
                                                                                                                                          §§goto(addr470);
                                                                                                                                       }
                                                                                                                                       continue loop5;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr666);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(this.m_s2);
                                                                                                                        if(!(_loc25_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(!_loc25_)
                                                                                                                           {
                                                                                                                              break loop48;
                                                                                                                           }
                                                                                                                           §§goto(addr679);
                                                                                                                        }
                                                                                                                        §§goto(addr726);
                                                                                                                     }
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop42;
                                                                                                   }
                                                                                                   continue loop45;
                                                                                                }
                                                                                                §§push(_loc4_.y);
                                                                                                break loop42;
                                                                                                addr515:
                                                                                             }
                                                                                             §§goto(addr535);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr629:
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr716:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc26_)
                                                                           {
                                                                              §§goto(addr669);
                                                                           }
                                                                           §§goto(addr679);
                                                                        }
                                                                     }
                                                                     addr617:
                                                                  }
                                                                  §§goto(addr666);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr617);
                                                   }
                                                   addr693:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc25_ && param1))
                                                   {
                                                      §§goto(addr650);
                                                   }
                                                   §§goto(addr726);
                                                }
                                                break;
                                             }
                                             §§goto(addr607);
                                          }
                                          §§push(§§pop() - §§pop());
                                          if(!_loc25_)
                                          {
                                             §§goto(addr693);
                                          }
                                          §§goto(addr716);
                                       }
                                       if(!(_loc26_ || param1))
                                       {
                                          continue;
                                       }
                                       §§push(b2internal::]+ * _loc11_);
                                       if(!(_loc25_ && this))
                                       {
                                          if(!_loc25_)
                                          {
                                             if(!(_loc25_ && param1))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc25_ && _loc3_))
                                                {
                                                   §§goto(addr128);
                                                }
                                                §§goto(addr140);
                                             }
                                             §§goto(addr629);
                                          }
                                          §§goto(addr515);
                                       }
                                       §§goto(addr650);
                                    }
                                 }
                                 §§goto(addr629);
                              }
                              §§goto(addr693);
                           }
                           §§goto(addr591);
                        }
                     }
                  }
                  §§push(this.§^^§.x);
                  if(_loc26_ || _loc3_)
                  {
                     §§goto(addr650);
                  }
                  §§goto(addr736);
               }
            }
         }
         §§goto(addr278);
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
