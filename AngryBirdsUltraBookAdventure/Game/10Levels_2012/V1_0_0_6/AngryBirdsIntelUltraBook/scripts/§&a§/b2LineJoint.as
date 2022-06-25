package §&a§
{
   import §#V§.b2Body;
   import §#V§.b2TimeStep;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §;%§.b2Mat22;
   import §;%§.b2Math;
   import §;%§.b2Transform;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §!1§:b2Vec2;
      
      private var §&b§:b2Vec2;
      
      private var §<!^§:b2Vec2;
      
      private var §9?§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §%!m§:b2Mat22;
      
      private var §<<§:b2Vec2;
      
      private var §&!w§:Number;
      
      private var §1!'§:Number;
      
      private var §;!a§:Number;
      
      private var §>![§:Number;
      
      private var §1!W§:Number;
      
      private var §0i§:Number;
      
      private var §;!m§:Boolean;
      
      private var §2'§:Boolean;
      
      private var §"!"§:int;
      
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
                  this.§!1§ = new b2Vec2();
                  while(true)
                  {
                     this.§&b§ = new b2Vec2();
                     addr181:
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     this.§1!'§ = 0;
                     loop20:
                     while(true)
                     {
                        if(!(_loc5_ && param1))
                        {
                           if(_loc6_)
                           {
                              this.§;!a§ = param1.§class§;
                              loop21:
                              for(; _loc6_ || _loc3_; while(!(_loc5_ && _loc3_))
                              {
                                 this.§;!m§ = param1.§-Q§;
                                 §§goto(addr78);
                              })
                              {
                                 this.§>![§ = param1.§>^§;
                                 loop22:
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop20;
                                    }
                                    if(!_loc5_)
                                    {
                                       addr123:
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          this.§1!W§ = param1.§4!C§;
                                          while(!_loc5_)
                                          {
                                             this.§0i§ = param1.motorSpeed;
                                             continue loop21;
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             §§push(this.§&b§);
                                             if(_loc6_)
                                             {
                                                §§push(this.§!1§);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§pop().y = §§pop();
                                                         loop17:
                                                         while(true)
                                                         {
                                                            this.§<<§.§&!K§();
                                                            loop18:
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  break loop17;
                                                               }
                                                               this.§&!w§ = 0;
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  if(!(_loc6_ || _loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr181);
                                                                  addr85:
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     this.§2'§ = param1.§2!s§;
                                                                     while(!_loc5_)
                                                                     {
                                                                        this.§"!"§ = b2internal::#!?;
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop22;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr264:
                                                                                 while(true)
                                                                                 {
                                                                                    super(param1);
                                                                                    addr258:
                                                                                    while(true)
                                                                                    {
                                                                                       this.m_localAnchor1.SetV(param1.§4!%§);
                                                                                       break loop21;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr111);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(this.§&b§);
                                                                              break loop16;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           return;
                                                                        }
                                                                     }
                                                                     continue loop21;
                                                                  }
                                                               }
                                                               while(_loc6_ || _loc2_)
                                                               {
                                                                  this.§<<§ = new b2Vec2();
                                                                  §§goto(addr264);
                                                                  §§goto(addr174);
                                                               }
                                                               while(_loc6_ || _loc3_)
                                                               {
                                                                  this.§%!m§ = new b2Mat22();
                                                                  §§goto(addr270);
                                                               }
                                                               addr270:
                                                               while(true)
                                                               {
                                                                  this.§<!^§ = new b2Vec2();
                                                                  break loop20;
                                                                  §§goto(addr283);
                                                               }
                                                               addr283:
                                                            }
                                                         }
                                                         continue loop1;
                                                         addr221:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(-§§pop());
                                                      }
                                                      addr228:
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      continue loop16;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr228);
                                                }
                                                addr227:
                                             }
                                             break;
                                          }
                                          addr111:
                                          while(true)
                                          {
                                             §§goto(addr227);
                                             §§goto(addr230);
                                          }
                                          addr230:
                                       }
                                       break;
                                    }
                                    §§goto(addr221);
                                 }
                                 while(true)
                                 {
                                    this.§!1§.SetV(param1.§"! §);
                                    §§goto(addr237);
                                    §§goto(addr123);
                                 }
                              }
                              while(true)
                              {
                                 this.m_localAnchor2.SetV(param1.§=!I§);
                                 §§goto(addr246);
                                 §§goto(addr136);
                              }
                              addr136:
                           }
                           break;
                        }
                        §§goto(addr258);
                     }
                     while(true)
                     {
                        this.§9?§ = new b2Vec2();
                        §§goto(addr283);
                     }
                  }
               }
            }
         }
         §§goto(addr312);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::>0.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§<<§.x);
            if(_loc2_ || param1)
            {
               §§push(this.§9?§.x);
               if(!_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc3_)
                  {
                     §§push(this.§1!'§);
                     if(!_loc3_)
                     {
                        §§push(this.§<<§.y);
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc2_ || this)
                           {
                              addr60:
                              §§push(this.§<!^§.x);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_ || param1)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_)
                                    {
                                       addr87:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(_loc2_)
                                       {
                                          addr90:
                                          §§push(this.§<<§.x);
                                          if(!(_loc3_ && param1))
                                          {
                                             §§push(this.§9?§.y);
                                             if(!(_loc3_ && param1))
                                             {
                                                addr110:
                                                §§push(§§pop() * §§pop());
                                                if(_loc2_)
                                                {
                                                   addr113:
                                                   §§push(this.§1!'§);
                                                   if(_loc2_ || param1)
                                                   {
                                                      §§push(this.§<<§.y);
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§goto(addr149);
                                                      }
                                                      addr149:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         addr145:
                                                         §§push(this.§<!^§.y);
                                                      }
                                                      return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                §§goto(addr149);
                                             }
                                             §§goto(addr145);
                                          }
                                       }
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr113);
                              }
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr110);
                     }
                  }
                  §§goto(addr149);
               }
               §§goto(addr60);
            }
            §§goto(addr90);
         }
         §§goto(addr87);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() * this.§<<§.y;
         }
      }
      
      public function §null §() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::>0;
         var _loc2_:b2Body = b2internal::[=;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_.y);
         if(!(_loc11_ && _loc2_))
         {
            §§push(§§pop() - _loc4_.y);
            if(!_loc11_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2;
         §§push((_loc8_ = _loc1_.§4!1§(this.§!1§)).x);
         if(!(_loc11_ && _loc3_))
         {
            §§push(_loc6_);
            if(!(_loc11_ && _loc2_))
            {
               §§push(§§pop() * §§pop());
               if(_loc10_)
               {
                  addr110:
                  §§push(_loc8_.y);
                  if(!(_loc11_ && _loc3_))
                  {
                     §§push(§§pop() * _loc7_);
                     if(_loc10_ || _loc1_)
                     {
                        addr128:
                        §§push(§§pop() + §§pop());
                        if(_loc10_)
                        {
                           addr131:
                           §§push(Number(§§pop()));
                        }
                        §§push(§§pop());
                     }
                     var _loc9_:* = §§pop();
                     return §§pop();
                  }
                  §§goto(addr128);
               }
               §§goto(addr131);
            }
            §§goto(addr128);
         }
         §§goto(addr110);
      }
      
      public function §#!d§() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::>0;
         var _loc2_:b2Body = b2internal::[=;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!_loc21_)
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc21_)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(!_loc21_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(_loc22_)
            {
               §§push(_loc4_);
               if(_loc22_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc21_ && this))
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc22_ || _loc1_)
                     {
                        addr85:
                        §§push(§§pop() * _loc5_);
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc21_ && this))
                     {
                        addr96:
                        var _loc6_:* = Number(§§pop());
                        if(!(_loc21_ && this))
                        {
                           §§push(_loc3_.col1.y);
                           if(_loc22_ || _loc3_)
                           {
                              §§push(_loc4_);
                              if(_loc22_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc21_ && _loc2_))
                                 {
                                    §§push(_loc3_.col2.y);
                                    if(_loc22_ || _loc2_)
                                    {
                                       addr137:
                                       §§push(§§pop() + §§pop() * _loc5_);
                                       if(_loc22_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc22_ || _loc3_)
                                          {
                                             addr148:
                                             _loc5_ = §§pop();
                                             if(!_loc21_)
                                             {
                                                addr151:
                                                §§push(_loc6_);
                                                if(_loc22_)
                                                {
                                                   addr154:
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc4_ = §§pop();
                                             }
                                             _loc3_ = _loc2_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(!_loc21_)
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                                if(_loc22_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc7_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(_loc22_)
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                if(_loc22_ || _loc2_)
                                                {
                                                   addr192:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc8_:* = §§pop();
                                                if(_loc22_ || _loc2_)
                                                {
                                                   §§push(_loc3_.col1);
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr304:
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
                                                                  if(_loc22_)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr263:
                                                                        §§push(_loc8_);
                                                                        if(_loc21_ && _loc1_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc21_ && _loc2_))
                                                                        {
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc22_ || _loc3_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    _loc8_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc22_ || this)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          if(!_loc22_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(_loc22_)
                                                                                          {
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                break loop11;
                                                                                             }
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!(_loc22_ || _loc3_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             addr241:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(!(_loc21_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      §§push(_loc3_.col2);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr263);
                                                                                                      }
                                                                                                      addr341:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc22_)
                                                                                                      {
                                                                                                         addr344:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   var _loc9_:* = §§pop();
                                                                                                   §§push(_loc1_.m_sweep.c.y);
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc5_);
                                                                                                      if(!(_loc21_ && _loc1_))
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   var _loc10_:* = §§pop();
                                                                                                   §§push(_loc2_.m_sweep.c.x);
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc7_);
                                                                                                      if(!(_loc21_ && _loc2_))
                                                                                                      {
                                                                                                         addr378:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc11_:* = §§pop();
                                                                                                      §§push(_loc2_.m_sweep.c.y);
                                                                                                      if(_loc22_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc8_);
                                                                                                         if(_loc22_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      var _loc12_:* = §§pop();
                                                                                                      §§push(_loc11_);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() - _loc9_);
                                                                                                         if(!(_loc21_ && _loc1_))
                                                                                                         {
                                                                                                            addr414:
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         var _loc13_:* = §§pop();
                                                                                                         §§push(_loc12_);
                                                                                                         if(_loc22_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() - _loc10_);
                                                                                                            if(_loc22_)
                                                                                                            {
                                                                                                               addr428:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc14_:* = §§pop();
                                                                                                            var _loc15_:b2Vec2 = _loc1_.§4!1§(this.§!1§);
                                                                                                            var _loc16_:b2Vec2 = _loc1_.§%!V§;
                                                                                                            var _loc17_:b2Vec2 = _loc2_.§%!V§;
                                                                                                            §§push(_loc1_.m_angularVelocity);
                                                                                                            if(!(_loc21_ && this))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc18_:* = §§pop();
                                                                                                            §§push(_loc2_.m_angularVelocity);
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc19_:* = §§pop();
                                                                                                            §§push(_loc13_);
                                                                                                            if(_loc22_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(_loc18_);
                                                                                                               if(_loc22_ || _loc1_)
                                                                                                               {
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(!(_loc21_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(_loc15_.y);
                                                                                                                     if(_loc22_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc21_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(_loc14_);
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(_loc18_);
                                                                                                                                 if(_loc22_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc15_.x);
                                                                                                                                    if(_loc22_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc22_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             addr526:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                addr529:
                                                                                                                                                §§push(_loc15_.x);
                                                                                                                                                if(!(_loc21_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc17_.x);
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                      if(!_loc21_)
                                                                                                                                                      {
                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                         if(!(_loc21_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr553:
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            if(!_loc21_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc22_ || this)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!(_loc21_ && _loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc16_.x);
                                                                                                                                                                     if(!(_loc21_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr581:
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(!(_loc21_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           if(_loc22_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              addr597:
                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr600:
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr609);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr616);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr620);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr623);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr637);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr644);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr629);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr597);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr616);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr637);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr629);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr600);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr553);
                                                                                                                                                   }
                                                                                                                                                   addr609:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      addr612:
                                                                                                                                                      §§push(_loc15_.y);
                                                                                                                                                      if(!_loc21_)
                                                                                                                                                      {
                                                                                                                                                         addr616:
                                                                                                                                                         §§push(_loc17_.y);
                                                                                                                                                         if(!_loc21_)
                                                                                                                                                         {
                                                                                                                                                            addr620:
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            if(_loc22_)
                                                                                                                                                            {
                                                                                                                                                               addr623:
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr629);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr662);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr629);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr644);
                                                                                                                                                      }
                                                                                                                                                      addr629:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc22_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         addr637:
                                                                                                                                                         §§push(_loc16_.y);
                                                                                                                                                         if(_loc22_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(_loc22_)
                                                                                                                                                            {
                                                                                                                                                               addr644:
                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                               if(!(_loc21_ && this))
                                                                                                                                                               {
                                                                                                                                                                  addr662:
                                                                                                                                                                  §§push(§§pop() * _loc4_);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr662);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                      if(_loc21_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr684);
                                                                                                                                                }
                                                                                                                                                §§goto(addr612);
                                                                                                                                             }
                                                                                                                                             §§goto(addr682);
                                                                                                                                          }
                                                                                                                                          §§goto(addr612);
                                                                                                                                       }
                                                                                                                                       §§goto(addr629);
                                                                                                                                    }
                                                                                                                                    §§goto(addr581);
                                                                                                                                 }
                                                                                                                                 §§goto(addr629);
                                                                                                                              }
                                                                                                                              §§goto(addr684);
                                                                                                                           }
                                                                                                                           §§goto(addr529);
                                                                                                                        }
                                                                                                                        §§goto(addr612);
                                                                                                                     }
                                                                                                                     §§goto(addr629);
                                                                                                                  }
                                                                                                                  addr684:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc21_ && _loc1_))
                                                                                                                  {
                                                                                                                     addr682:
                                                                                                                     return Number(§§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr526);
                                                                                                            }
                                                                                                            §§goto(addr682);
                                                                                                         }
                                                                                                         §§goto(addr428);
                                                                                                      }
                                                                                                      §§goto(addr414);
                                                                                                   }
                                                                                                   §§goto(addr378);
                                                                                                }
                                                                                                §§goto(addr341);
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       addr323:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr341);
                                                                                    §§push(_loc4_);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    §§goto(addr323);
                                                                                 }
                                                                                 addr322:
                                                                              }
                                                                              §§goto(addr344);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc21_ && _loc3_))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr322);
                                                                           }
                                                                           addr313:
                                                                        }
                                                                        §§goto(addr341);
                                                                     }
                                                                  }
                                                                  §§goto(addr313);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr323);
                                             }
                                             §§goto(addr192);
                                          }
                                       }
                                    }
                                    §§goto(addr137);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr151);
                     }
                  }
                  §§goto(addr96);
               }
               §§goto(addr85);
            }
            §§goto(addr96);
         }
         §§goto(addr43);
      }
      
      public function §=P§() : Boolean
      {
         return this.§;!m§;
      }
      
      public function §5!m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            b2internal::>0.SetAwake(true);
            do
            {
               b2internal::[=.SetAwake(true);
               do
               {
                  this.§;!m§ = param1;
               }
               while(_loc2_ && _loc3_);
               
            }
            while(_loc2_);
            
         }
      }
      
      public function §-J§() : Number
      {
         return this.§;!a§;
      }
      
      public function § !'§() : Number
      {
         return this.§>![§;
      }
      
      public function §1!L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            b2internal::>0.SetAwake(true);
            while(true)
            {
               b2internal::[=.SetAwake(true);
               loop1:
               while(!(_loc3_ && _loc3_))
               {
                  while(true)
                  {
                     this.§;!a§ = param1;
                     do
                     {
                        this.§>![§ = param2;
                     }
                     while(_loc3_ && param1);
                     
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §[!k§() : Boolean
      {
         return this.§2'§;
      }
      
      public function §5!x§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            b2internal::>0.SetAwake(true);
         }
         do
         {
            b2internal::[=.SetAwake(true);
            do
            {
               this.§2'§ = param1;
            }
            while(!_loc2_);
            
         }
         while(_loc3_ && param1);
         
      }
      
      public function §4!K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            b2internal::>0.SetAwake(true);
            while(true)
            {
               b2internal::[=.SetAwake(true);
               loop1:
               while(!(_loc2_ && _loc3_))
               {
                  while(true)
                  {
                     this.§0i§ = param1;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §@!+§() : Number
      {
         return this.§0i§;
      }
      
      public function §'!k§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            b2internal::>0.SetAwake(true);
            while(true)
            {
               b2internal::[=.SetAwake(true);
               while(_loc2_)
               {
                  this.§1!W§ = param1;
                  if(!_loc3_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §"0§() : Number
      {
         return this.§1!W§;
      }
      
      public function §;!<§() : Number
      {
         return this.§1!'§;
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
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc2_:b2Body = b2internal::>0;
         var _loc3_:b2Body = b2internal::[=;
         var _loc4_:b2Vec2 = _loc2_.§%!V§;
         §§push(_loc2_.m_angularVelocity);
         if(_loc24_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc3_.§%!V§;
         §§push(_loc3_.m_angularVelocity);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(_loc24_ || _loc2_)
         {
            §§push(this.§2'§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§<!^§.x);
                              loop5:
                              while(true)
                              {
                                 §§push(_loc6_.x);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc4_.x);
                                    if(!(_loc23_ && this))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc24_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§<!^§);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop().y);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(!_loc23_)
                                                   {
                                                      §§push(_loc4_.y);
                                                      if(_loc24_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc23_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(this.m_a2);
                                                                  if(_loc24_ || _loc2_)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(!(_loc23_ && this))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.m_a1);
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(_loc24_ || _loc3_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc24_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§&!w§);
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§0i§);
                                                                                                      if(!(_loc23_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         if(!(_loc23_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            loop20:
                                                                                                            for(; _loc24_; if(_loc23_ && _loc3_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            },§§push(§§pop() - §§pop()),if(!_loc23_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  if(_loc24_)
                                                                                                                  {
                                                                                                                     _loc5_ = §§pop();
                                                                                                                     §§goto(addr225);
                                                                                                                  }
                                                                                                                  §§goto(addr298);
                                                                                                               }
                                                                                                               §§goto(addr710);
                                                                                                            },§§goto(addr778))
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc24_ || param1)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop21:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc14_ = §§pop();
                                                                                                                     loop22:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§1!'§);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr532:
                                                                                                                           addr433:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc15_ = §§pop();
                                                                                                                              addr533:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1.§&!'§);
                                                                                                                                 if(_loc24_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§1!W§);
                                                                                                                                    if(_loc23_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       break loop6;
                                                                                                                                       addr516:
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(!(_loc24_ || _loc2_))
                                                                                                                                       {
                                                                                                                                          addr710:
                                                                                                                                          §§push(this.§9?§.y);
                                                                                                                                          if(_loc24_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             break loop11;
                                                                                                                                          }
                                                                                                                                          break loop19;
                                                                                                                                       }
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this);
                                                                                                                                          §§push(b2Math);
                                                                                                                                          §§push(this.§1!'§);
                                                                                                                                          if(_loc24_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                addr488:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§pop().§1!'§ = §§pop().§]!M§(§§pop(),§§pop(),_loc16_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§1!'§);
                                                                                                                                                addr416:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   addr417:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      continue loop19;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr495:
                                                                                                                                          }
                                                                                                                                          §§goto(addr488);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop16;
                                                                                                                                    addr772:
                                                                                                                                 }
                                                                                                                                 addr778:
                                                                                                                                 var _loc12_:Number = §§pop();
                                                                                                                                 if(!_loc23_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§;!m§);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       if(!_loc23_)
                                                                                                                                       {
                                                                                                                                          addr788:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc23_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr797:
                                                                                                                                                §§pop();
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§"!"§ == b2internal::#!?);
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      addr807:
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§<!^§.x);
                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.x);
                                                                                                                                                               if(_loc24_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_.x);
                                                                                                                                                                  if(!(_loc23_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§<!^§.y);
                                                                                                                                                                           if(!(_loc23_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_.y);
                                                                                                                                                                              if(_loc24_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 addr868:
                                                                                                                                                                                 §§push(§§pop() - _loc4_.y);
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr873:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc24_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.m_a2);
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr893:
                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                             if(!(_loc23_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr901:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.m_a1);
                                                                                                                                                                                                      if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr917:
                                                                                                                                                                                                         §§push(§§pop() * _loc5_);
                                                                                                                                                                                                         if(!(_loc23_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               if(_loc24_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc17_ = §§pop();
                                                                                                                                                                                                                  if(!(_loc23_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§<<§);
                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc18_ = §§pop().Copy();
                                                                                                                                                                                                                        _loc19_ = this.§%!m§.§-,§(new b2Vec2(),-_loc12_,-_loc17_);
                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1597:
                                                                                                                                                                                                                           this.§<<§.§'!<§(_loc19_);
                                                                                                                                                                                                                           addr1599:
                                                                                                                                                                                                                           if(this.§"!"§ == b2internal::'`)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1583:
                                                                                                                                                                                                                                 §§push(this.§<<§);
                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1591:
                                                                                                                                                                                                                                    §§pop().y = b2Math.§!!X§(this.§<<§.y,0);
                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1539:
                                                                                                                                                                                                                                       _loc20_ = -_loc12_ - (this.§<<§.y - _loc18_.y) * this.§%!m§.col2.x;
                                                                                                                                                                                                                                       addr1538:
                                                                                                                                                                                                                                       addr1523:
                                                                                                                                                                                                                                       addr1525:
                                                                                                                                                                                                                                       addr1532:
                                                                                                                                                                                                                                       addr1531:
                                                                                                                                                                                                                                       addr1536:
                                                                                                                                                                                                                                       addr1529:
                                                                                                                                                                                                                                       addr1537:
                                                                                                                                                                                                                                       addr1540:
                                                                                                                                                                                                                                       addr1526:
                                                                                                                                                                                                                                       if(this.§%!m§.col1.x != 0)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1497:
                                                                                                                                                                                                                                          §§push(Number(_loc20_ / this.§%!m§.col1.x + _loc18_.x));
                                                                                                                                                                                                                                          if(!(_loc23_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc21_ = §§pop();
                                                                                                                                                                                                                                             addr1515:
                                                                                                                                                                                                                                             if(_loc24_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1465:
                                                                                                                                                                                                                                                §§push(this.§<<§);
                                                                                                                                                                                                                                                if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                                                                                                                      §§push(this.§<<§.x);
                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - _loc18_.x);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                                                                      addr1457:
                                                                                                                                                                                                                                                      if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                         §§push(this.§<<§.y);
                                                                                                                                                                                                                                                         if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - _loc18_.y);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                         addr1443:
                                                                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1377:
                                                                                                                                                                                                                                                            §§push(_loc19_.x);
                                                                                                                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1387:
                                                                                                                                                                                                                                                               §§push(this.§9?§.x);
                                                                                                                                                                                                                                                               if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1402:
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc19_.y);
                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1416:
                                                                                                                                                                                                                                                                              _loc8_ = Number(§§pop() + §§pop() * this.§<!^§.x);
                                                                                                                                                                                                                                                                              addr1415:
                                                                                                                                                                                                                                                                              if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1327:
                                                                                                                                                                                                                                                                                    §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                    §§push(this.§9?§);
                                                                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1332:
                                                                                                                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                                                                                                                       if(_loc24_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1342:
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1351:
                                                                                                                                                                                                                                                                                                §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§<!^§);
                                                                                                                                                                                                                                                                                                   if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1363:
                                                                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1368:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1372:
                                                                                                                                                                                                                                                                                                               _loc9_ = Number(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               addr1373:
                                                                                                                                                                                                                                                                                                               addr1371:
                                                                                                                                                                                                                                                                                                               §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1298:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * this.m_s1);
                                                                                                                                                                                                                                                                                                                  §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                  §§push(this.m_a1);
                                                                                                                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1308:
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1320:
                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    addr1323:
                                                                                                                                                                                                                                                                                                                                    §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1234:
                                                                                                                                                                                                                                                                                                                                          §§push(this.m_s2);
                                                                                                                                                                                                                                                                                                                                          if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                             if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr1249:
                                                                                                                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1253:
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                                                   §§push(this.m_a2);
                                                                                                                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1258:
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                      if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1266:
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1281:
                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc4_.x);
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - b2internal::,' * _loc8_);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc4_.y);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - b2internal::,' * _loc9_);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  addr1289:
                                                                                                                                                                                                                                                                                                                                                                  addr1219:
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr1115:
                                                                                                                                                                                                                                                                                                                                                                              §§push(b2internal::=!Z * _loc10_);
                                                                                                                                                                                                                                                                                                                                                                              if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr1131:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr1134:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + b2internal::[!2 * _loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1063:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + b2internal::[!2 * _loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(b2internal::^!? * _loc11_);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr1029:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc24_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1063);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1935:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc2_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc23_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§pop().SetV(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1977:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             _loc2_.m_angularVelocity = _loc5_;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1981:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc3_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1981:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1958:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          _loc3_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1981);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             return;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1971:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1977);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§pop().SetV(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1977);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1599);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1457);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1373);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1323);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1289);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1977);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1538);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1281);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1298);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1266);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1131);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1134);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1029);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1351);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1368);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1258);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1115);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1371);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1029);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1958);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1977);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1573:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1523);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1497);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               addr1489:
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1465);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1443);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1971);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1415);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1308);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1320);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1342);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1298);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1308);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1234);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1253);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1416);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1134);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1219);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1981);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1497);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1402);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1373);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1332);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1298);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1372);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1281);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1387);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1497);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1249);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1327);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1525);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr1485:
                                                                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1488:
                                                                                                                                                                                                                                                                                                                              _loc21_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                              §§goto(addr1489);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1497);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1377);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1416);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1363);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1488);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1532);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1531);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1536);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1416);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1529);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1539);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1537);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1416);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1387);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1540);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1977);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1497);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1416);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1539);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1497);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1515);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1479:
                                                                                                                                                                                                                                                      §§goto(addr1479);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1570:
                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                      §§goto(addr1573);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1591);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1557:
                                                                                                                                                                                                                                                if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1570);
                                                                                                                                                                                                                                                   §§push(b2Math.§=!@§(this.§<<§.y,0));
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1583);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1555:
                                                                                                                                                                                                                                             §§goto(addr1557);
                                                                                                                                                                                                                                             §§push(this.§<<§);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1526);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1485);
                                                                                                                                                                                                                                       §§push(_loc18_.x);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1981);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1597);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1981);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(this.§"!"§);
                                                                                                                                                                                                                           if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop() == b2internal::>6)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1555);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1539);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1597);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1573);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1921:
                                                                                                                                                                                                                        §§push(this.§<<§.x);
                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + _loc22_);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                        addr1916:
                                                                                                                                                                                                                        _loc8_ = Number(_loc22_ * this.§9?§.x);
                                                                                                                                                                                                                        addr1914:
                                                                                                                                                                                                                        addr1929:
                                                                                                                                                                                                                        addr1915:
                                                                                                                                                                                                                        addr1917:
                                                                                                                                                                                                                        addr1913:
                                                                                                                                                                                                                        addr1911:
                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§9?§);
                                                                                                                                                                                                                                    if(!(_loc23_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1907:
                                                                                                                                                                                                                                       _loc9_ = Number(§§pop() * §§pop().y);
                                                                                                                                                                                                                                       addr1871:
                                                                                                                                                                                                                                       _loc10_ = Number(_loc22_ * this.m_s1);
                                                                                                                                                                                                                                       addr1905:
                                                                                                                                                                                                                                       addr1908:
                                                                                                                                                                                                                                       addr1870:
                                                                                                                                                                                                                                       addr1906:
                                                                                                                                                                                                                                       addr1867:
                                                                                                                                                                                                                                       addr1869:
                                                                                                                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1848:
                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1852:
                                                                                                                                                                                                                                             §§push(this.m_s2);
                                                                                                                                                                                                                                             if(!(_loc23_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1860:
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1863:
                                                                                                                                                                                                                                                   _loc11_ = Number(§§pop());
                                                                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                                                                   §§push(_loc4_.x);
                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - b2internal::,' * _loc8_);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                                                                   addr1864:
                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                                                                                                                      §§push(_loc4_.y);
                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - b2internal::,' * _loc9_);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                      addr1824:
                                                                                                                                                                                                                                                      if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1772:
                                                                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                                                                         if(_loc24_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1786:
                                                                                                                                                                                                                                                                  §§push(b2internal::=!Z * _loc10_);
                                                                                                                                                                                                                                                                  if(_loc24_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1802:
                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc5_ = §§pop();
                                                                                                                                                                                                                                                                        addr1805:
                                                                                                                                                                                                                                                                        if(_loc24_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                           §§push(_loc6_.x);
                                                                                                                                                                                                                                                                           if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + b2internal::[!2 * _loc8_);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                                                                           addr1762:
                                                                                                                                                                                                                                                                           if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1720:
                                                                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                                                                              §§push(_loc6_.y);
                                                                                                                                                                                                                                                                              if(_loc24_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() + b2internal::[!2 * _loc9_);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1668:
                                                                                                                                                                                                                                                                                             §§push(b2internal::^!? * _loc11_);
                                                                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1690:
                                                                                                                                                                                                                                                                                                         if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1700:
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                               if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1709:
                                                                                                                                                                                                                                                                                                                     _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1720);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1935);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1918:
                                                                                                                                                                                                                                                                                                                              §§goto(addr1921);
                                                                                                                                                                                                                                                                                                                              §§push(this.§<<§);
                                                                                                                                                                                                                                                                                                                              addr1934:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1824);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1762);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1720);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1921);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1863);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1907);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1848);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1700);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1905);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1852);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1786);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1772);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1802);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1690);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1907);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1864);
                                                                                                                                                                                                                                                                              addr1769:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1805);
                                                                                                                                                                                                                                                                           addr1812:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1908);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1870);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1914);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1906);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1867);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1860);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1863);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1929);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1915);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1869);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1871);
                                                                                                                                                                                                                                          addr1879:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1917);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1913);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1932:
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              _loc22_ = §§pop();
                                                                                                                                                                                                                              §§goto(addr1934);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1911);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1916);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1879);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1646:
                                                                                                                                                                                                                  _loc22_ = §§pop();
                                                                                                                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1918);
                                                                                                                                                                                                                     addr1654:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1812);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1863);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1802);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1907);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1668);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1907);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr917);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1709);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1802);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr901);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr873);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr893);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr1643:
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1646);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1921);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1907);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr868);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr1615:
                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                        if(_loc24_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                           if(!(_loc23_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§%!m§.col1.x);
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1643);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1907);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1860);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1907);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1643);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1769);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1932);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1786);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1762);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§%!m§.col1.x);
                                                                                                                                                         if(!(_loc23_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1615);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1907);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1907);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr807);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1654);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr807);
                                                                                                                                       }
                                                                                                                                       §§goto(addr797);
                                                                                                                                    }
                                                                                                                                    §§goto(addr788);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1918);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           if(_loc23_ && param1)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§push(§§pop());
                                                                                                                           loop32:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc14_ = §§pop();
                                                                                                                              loop33:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§<!^§);
                                                                                                                                 loop34:
                                                                                                                                 while(!(_loc23_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(!(_loc23_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          continue loop12;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       loop35:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          addr463:
                                                                                                                                          loop36:
                                                                                                                                          while(!(_loc23_ && param1))
                                                                                                                                          {
                                                                                                                                             _loc8_ = §§pop();
                                                                                                                                             loop37:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                if(!(_loc23_ && this))
                                                                                                                                                {
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§<!^§);
                                                                                                                                                      if(!(_loc24_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         loop38:
                                                                                                                                                         while(!(_loc23_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc23_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc23_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc9_ = §§pop();
                                                                                                                                                                        loop40:
                                                                                                                                                                        while(_loc24_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                           if(!(_loc23_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.m_a1);
                                                                                                                                                                              continue loop10;
                                                                                                                                                                           }
                                                                                                                                                                           loop49:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_ && _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop40;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              §§push(_loc6_.x);
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + b2internal::[!2 * _loc8_);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              loop50:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + b2internal::[!2 * _loc9_);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc23_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                   if(_loc24_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc24_ || _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop21;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(b2internal::^!? * _loc11_);
                                                                                                                                                                                                      if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop10;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop32;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc24_ || _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop9;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop38;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr760:
                                                                                                                                                                                                               addr745:
                                                                                                                                                                                                               addr745:
                                                                                                                                                                                                               §§push(this.m_s2);
                                                                                                                                                                                                               if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop19;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr763:
                                                                                                                                                                                                                  §§push(this.m_s1);
                                                                                                                                                                                                                  if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr772);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr778);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop43:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc24_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.m_a2);
                                                                                                                                                                                                                     if(_loc24_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc24_ || param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop6;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              addr299:
                                                                                                                                                                                                                              while(!_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop5;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                                                                                                                 while(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                                                                    §§push(_loc4_.x);
                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - b2internal::,' * _loc8_);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                                                                    loop47:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc23_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                                                                §§push(_loc4_.y);
                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - b2internal::,' * _loc9_);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                                                                break loop50;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop37;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr344:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc23_ && _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                                                                             continue loop43;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr527);
                                                                                                                                                                                                                                          continue loop47;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr495);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr533);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop35;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr417);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr532);
                                                                                                                                                                                                                  §§goto(addr533);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr737:
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(_loc24_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr745);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr763);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr778);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr745);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr680:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§"!"§ == b2internal::`C);
                                                                                                                                                                                                   if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc24_ || _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop0;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop1;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr304);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr258);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr778);
                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr681:
                                                                                                                                                                                       §§push(this.§9?§.x);
                                                                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr691:
                                                                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr695:
                                                                                                                                                                                             §§push(_loc4_.x);
                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr699:
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(_loc24_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr710);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr778);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr772);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc4_.y);
                                                                                                                                                                                             break loop9;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr772);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr778);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop49;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 if(_loc23_ && _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc24_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(b2internal::=!Z * _loc10_);
                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop11;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr516);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr299);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr691);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop22;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop4;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop7;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop17;
                                                                                                                                                               }
                                                                                                                                                               continue loop36;
                                                                                                                                                               addr333:
                                                                                                                                                               if(!(_loc24_ || _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  addr343:
                                                                                                                                                                  _loc10_ = §§pop();
                                                                                                                                                                  §§goto(addr344);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr745);
                                                                                                                                                            }
                                                                                                                                                            continue loop33;
                                                                                                                                                         }
                                                                                                                                                         continue loop11;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr763);
                                                                                                                                                      §§goto(addr778);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr416);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr691);
                                                                                                                                                }
                                                                                                                                                §§goto(addr778);
                                                                                                                                             }
                                                                                                                                             continue loop34;
                                                                                                                                          }
                                                                                                                                          continue loop13;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr695);
                                                                                                                                 }
                                                                                                                                 continue loop8;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr763);
                                                                                                            }
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         §§goto(addr699);
                                                                                                         §§goto(addr772);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(_loc7_);
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      addr757:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         §§goto(addr760);
                                                                                                      }
                                                                                                      §§goto(addr772);
                                                                                                   }
                                                                                                   break loop6;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       break loop11;
                                                                                    }
                                                                                    addr662:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr729:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc24_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr737);
                                                                              }
                                                                              §§goto(addr772);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr699);
                                                                  }
                                                                  break;
                                                               }
                                                               §§push(_loc6_.y);
                                                               if(!_loc23_)
                                                               {
                                                                  §§goto(addr695);
                                                               }
                                                               §§goto(addr757);
                                                            }
                                                         }
                                                         §§goto(addr699);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr662);
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(!_loc23_)
                                                {
                                                   §§goto(addr729);
                                                }
                                                §§goto(addr757);
                                             }
                                          }
                                       }
                                       §§goto(addr772);
                                    }
                                    break;
                                 }
                                 §§goto(addr763);
                              }
                           }
                        }
                        §§goto(addr681);
                     }
                     addr597:
                  }
                  §§goto(addr679);
               }
            }
         }
         §§goto(addr680);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc37_:Boolean = true;
         var _loc38_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc4_:b2Body = b2internal::>0;
         var _loc5_:b2Body = b2internal::[=;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         §§push(_loc4_.m_sweep.a);
         if(_loc37_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         §§push(_loc5_.m_sweep.a);
         if(!_loc38_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(0);
         if(_loc37_)
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:* = §§pop();
         §§push(0);
         if(_loc37_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc17_:* = §§pop();
         var _loc18_:Boolean = false;
         §§push(0);
         if(_loc37_)
         {
            §§push(Number(§§pop()));
         }
         var _loc19_:* = §§pop();
         var _loc20_:b2Mat22 = b2Mat22.§9!-§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§9!-§(_loc9_);
         _loc10_ = _loc20_;
         §§push(this.m_localAnchor1.x);
         if(_loc37_ || _loc3_)
         {
            §§push(§§pop() - b2internal::#A.x);
            if(_loc37_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc22_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc38_ && _loc3_))
         {
            §§push(§§pop() - b2internal::#A.y);
            if(_loc37_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc23_:* = §§pop();
         if(_loc37_)
         {
            §§push(_loc10_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               if(_loc37_)
               {
                  §§push(_loc22_);
                  if(_loc37_)
                  {
                     addr265:
                     §§push(§§pop() * §§pop());
                     while(true)
                     {
                        §§push(_loc10_.col2);
                        addr267:
                        while(true)
                        {
                           §§push(§§pop().x);
                        }
                     }
                     addr265:
                  }
                  while(true)
                  {
                     §§push(_loc23_);
                     addr269:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr270:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr271:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr272:
                              while(true)
                              {
                                 _loc11_ = §§pop();
                                 addr273:
                                 while(true)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr268:
               }
               §§goto(addr265);
            }
         }
         §§goto(addr177);
      }
   }
}
