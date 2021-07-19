package §3g§
{
   import §&!"§.b2Body;
   import §&!"§.b2TimeStep;
   import §9"§.b2Mat22;
   import §9"§.b2Mat33;
   import §9"§.b2Math;
   import §9"§.b2Transform;
   import §9"§.b2Vec2;
   import §9"§.b2Vec3;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §9!M§:b2Vec2;
      
      private var §8o§:b2Vec2;
      
      private var §3_§:Number;
      
      private var §&9§:b2Vec2;
      
      private var §5!§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §@X§:b2Mat33;
      
      private var §8v§:b2Vec3;
      
      private var §9<§:Number;
      
      private var §>G§:Number;
      
      private var §%! §:Number;
      
      private var §-4§:Number;
      
      private var §]d§:Number;
      
      private var §+>§:Number;
      
      private var §%+§:Boolean;
      
      private var §&!E§:Boolean;
      
      private var §^!H§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
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
               while(true)
               {
                  this.§9!M§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§8o§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§&9§ = new b2Vec2();
                        while(true)
                        {
                           this.§5!§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§@X§ = new b2Mat33();
                              addr302:
                              while(true)
                              {
                                 this.§8v§ = new b2Vec3();
                                 continue loop5;
                              }
                           }
                           if(_loc5_ && this)
                           {
                              continue;
                           }
                           this.§-4§ = param1.§1g§;
                           loop23:
                           while(!_loc5_)
                           {
                              this.§]d§ = param1.§6f§;
                              loop24:
                              while(!_loc5_)
                              {
                                 this.§+>§ = param1.motorSpeed;
                                 loop25:
                                 while(_loc6_)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       this.§%+§ = param1.§9[§;
                                       loop26:
                                       while(true)
                                       {
                                          if(_loc5_ && _loc3_)
                                          {
                                             continue loop25;
                                          }
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          this.§&!E§ = param1.§<S§;
                                          loop27:
                                          while(!(_loc5_ && _loc2_))
                                          {
                                             loop28:
                                             while(true)
                                             {
                                                this.§^!H§ = b2internal::1&;
                                                loop29:
                                                while(_loc6_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop24;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      this.§&9§.§^!#§();
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop26;
                                                         }
                                                         continue loop29;
                                                         addr62:
                                                         this.§5!§.§^!#§();
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  break loop28;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop3;
                                                         }
                                                         §§goto(addr195);
                                                      }
                                                      continue loop26;
                                                   }
                                                   §§goto(addr283);
                                                }
                                                continue loop27;
                                             }
                                             return;
                                          }
                                          while(true)
                                          {
                                             this.§8v§.§^!#§();
                                             §§goto(addr195);
                                             §§goto(addr79);
                                          }
                                          addr79:
                                       }
                                       §§goto(addr138);
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop23;
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr183);
                        }
                     }
                  }
                  if(!(_loc6_ || _loc2_))
                  {
                     continue;
                  }
                  this.§%! § = param1.§^!<§;
                  §§goto(addr138);
               }
            }
         }
         §§goto(addr86);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!D.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;B.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§8v§.x);
            if(!_loc3_)
            {
               §§push(this.§5!§.x);
               if(!_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc3_)
                  {
                     §§push(this.§>G§);
                     if(_loc2_ || _loc3_)
                     {
                        addr42:
                        §§push(this.§8v§.z);
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              addr65:
                              §§push(this.§&9§.x);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc3_)
                                    {
                                       addr82:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          addr85:
                                          §§push(this.§8v§.x);
                                          if(_loc2_)
                                          {
                                             addr90:
                                             §§push(this.§5!§.y);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc2_)
                                                {
                                                   §§push(this.§>G§);
                                                   if(_loc2_)
                                                   {
                                                      addr102:
                                                      §§push(this.§8v§.z);
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr124);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr124);
                                                }
                                             }
                                             §§goto(addr120);
                                          }
                                       }
                                       §§goto(addr124);
                                    }
                                    §§goto(addr85);
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr65);
                  }
                  addr124:
                  §§push(§§pop() + §§pop());
                  if(_loc2_)
                  {
                     addr120:
                     §§push(this.§&9§.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
               }
               §§goto(addr42);
            }
            §§goto(addr85);
         }
         §§goto(addr82);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_ || _loc3_)
         {
            return §§pop() * this.§8v§.y;
         }
      }
      
      public function §4[§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2!D;
         var _loc2_:b2Body = b2internal::;B;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!_loc11_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc11_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_.y);
         if(!_loc11_)
         {
            §§push(§§pop() - _loc4_.y);
            if(!(_loc11_ && _loc1_))
            {
               addr77:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§^T§(this.§9!M§)).x);
            if(_loc10_)
            {
               §§push(_loc6_);
               if(!_loc11_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc11_)
                  {
                     §§push(_loc8_.y);
                     if(!_loc11_)
                     {
                        addr99:
                        §§push(§§pop() * _loc7_);
                        if(!_loc11_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc10_)
                           {
                              addr116:
                              §§push(Number(§§pop()));
                           }
                           §§push(§§pop());
                        }
                     }
                     var _loc9_:* = §§pop();
                     return §§pop();
                  }
                  §§goto(addr116);
               }
               §§goto(addr99);
            }
            §§goto(addr116);
         }
         §§goto(addr77);
      }
      
      public function §%p§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2!D;
         var _loc2_:b2Body = b2internal::;B;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc21_ || _loc3_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!_loc22_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc21_ || _loc3_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(_loc21_ || _loc2_)
            {
               addr71:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(!_loc22_)
            {
               §§push(_loc4_);
               if(_loc21_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc21_ || _loc2_)
                  {
                     addr94:
                     §§push(_loc3_.col2.x);
                     if(!_loc22_)
                     {
                        addr101:
                        §§push(§§pop() + §§pop() * _loc5_);
                        if(!_loc22_)
                        {
                           addr104:
                           §§push(Number(§§pop()));
                        }
                        var _loc6_:* = §§pop();
                        if(_loc21_ || _loc2_)
                        {
                           §§push(_loc3_.col1.y);
                           if(_loc21_)
                           {
                              §§push(_loc4_);
                              if(!_loc22_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc22_)
                                 {
                                    §§push(_loc3_.col2.y);
                                    if(!(_loc22_ && _loc3_))
                                    {
                                       addr134:
                                       §§push(§§pop() * _loc5_);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc22_ && _loc2_))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc21_ || _loc3_)
                                       {
                                          addr152:
                                          _loc5_ = §§pop();
                                          if(_loc21_ || _loc2_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc21_)
                                             {
                                                addr163:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc4_ = §§pop();
                                             addr165:
                                             _loc3_ = _loc2_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(!(_loc22_ && _loc1_))
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                                if(!_loc22_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc7_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(!(_loc22_ && this))
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                if(_loc21_ || _loc3_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc8_:* = §§pop();
                                             if(!(_loc22_ && _loc1_))
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
                                                         if(_loc21_)
                                                         {
                                                            §§push(_loc3_.col2);
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  addr351:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc21_ || _loc1_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              addr372:
                                                                              while(true)
                                                                              {
                                                                                 addr250:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_.col1);
                                                                                    if(!_loc22_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc21_ || _loc1_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!(_loc21_ || _loc2_))
                                                                                          {
                                                                                             addr313:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc21_ || _loc1_))
                                                                                             {
                                                                                                break loop2;
                                                                                             }
                                                                                             if(_loc21_ || this)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                continue loop6;
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc22_ && _loc2_)
                                                                                          {
                                                                                             addr393:
                                                                                             §§push(Number(§§pop()));
                                                                                             break loop2;
                                                                                          }
                                                                                       }
                                                                                       if(_loc22_ && this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr385:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc22_ && _loc2_))
                                                                  {
                                                                     §§goto(addr393);
                                                                  }
                                                                  break loop2;
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      var _loc9_:* = §§pop();
                                                      §§push(_loc1_.m_sweep.c.y);
                                                      if(!(_loc22_ && _loc1_))
                                                      {
                                                         §§push(§§pop() + _loc5_);
                                                         if(_loc21_ || _loc3_)
                                                         {
                                                            addr415:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc10_:* = §§pop();
                                                         §§push(_loc2_.m_sweep.c.x);
                                                         if(_loc21_)
                                                         {
                                                            §§push(§§pop() + _loc7_);
                                                            if(!(_loc22_ && _loc1_))
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc11_:* = §§pop();
                                                         §§push(_loc2_.m_sweep.c.y);
                                                         if(!_loc22_)
                                                         {
                                                            §§push(§§pop() + _loc8_);
                                                            if(!_loc22_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc12_:* = §§pop();
                                                         §§push(_loc11_);
                                                         if(_loc21_ || this)
                                                         {
                                                            §§push(§§pop() - _loc9_);
                                                            if(!(_loc22_ && this))
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc13_:* = §§pop();
                                                         §§push(_loc12_);
                                                         if(_loc21_)
                                                         {
                                                            §§push(§§pop() - _loc10_);
                                                            if(!(_loc22_ && this))
                                                            {
                                                               addr477:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc14_:* = §§pop();
                                                            var _loc15_:b2Vec2 = _loc1_.§^T§(this.§9!M§);
                                                            var _loc16_:b2Vec2 = _loc1_.§%=§;
                                                            var _loc17_:b2Vec2 = _loc2_.§%=§;
                                                            §§push(_loc1_.m_angularVelocity);
                                                            if(!(_loc22_ && _loc2_))
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc18_:* = §§pop();
                                                            §§push(_loc2_.m_angularVelocity);
                                                            if(_loc21_ || this)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc19_:* = §§pop();
                                                            §§push(_loc13_);
                                                            if(_loc21_ || _loc2_)
                                                            {
                                                               §§push(_loc18_);
                                                               if(!_loc22_)
                                                               {
                                                                  §§push(-§§pop());
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(_loc15_.y);
                                                                     if(!_loc22_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc21_ || this)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc22_)
                                                                           {
                                                                              addr544:
                                                                              §§push(_loc14_);
                                                                              if(_loc21_)
                                                                              {
                                                                                 addr547:
                                                                                 §§push(_loc18_);
                                                                                 if(!(_loc22_ && this))
                                                                                 {
                                                                                    §§push(_loc15_.x);
                                                                                    if(_loc21_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc22_ && this))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc22_)
                                                                                             {
                                                                                                §§push(_loc15_.x);
                                                                                                if(_loc21_ || this)
                                                                                                {
                                                                                                   addr587:
                                                                                                   §§push(_loc17_.x);
                                                                                                   if(!(_loc22_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(_loc19_);
                                                                                                      if(_loc21_ || _loc1_)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            addr607:
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc21_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     addr621:
                                                                                                                     §§push(_loc16_.x);
                                                                                                                     if(!_loc22_)
                                                                                                                     {
                                                                                                                        addr625:
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!_loc22_)
                                                                                                                        {
                                                                                                                           §§push(_loc18_);
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(!(_loc22_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr642:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(!_loc22_)
                                                                                                                                       {
                                                                                                                                          addr648:
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             addr651:
                                                                                                                                             §§push(_loc15_.y);
                                                                                                                                             if(!_loc22_)
                                                                                                                                             {
                                                                                                                                                addr655:
                                                                                                                                                §§push(_loc17_.y);
                                                                                                                                                if(_loc21_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                   if(!(_loc22_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      if(_loc21_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc22_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!(_loc22_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               addr691:
                                                                                                                                                               §§push(_loc16_.y);
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  addr695:
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  if(!_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     addr704:
                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        addr701:
                                                                                                                                                                        §§push(§§pop() * _loc4_);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                     if(_loc21_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr713:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!(_loc22_ && _loc1_))
                                                                                                                                                                        {
                                                                                                                                                                           addr733:
                                                                                                                                                                           return Number(§§pop());
                                                                                                                                                                           addr732:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr732);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr733);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr704);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr701);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr704);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr701);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr695);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr704);
                                                                                                                                          }
                                                                                                                                          §§goto(addr713);
                                                                                                                                       }
                                                                                                                                       §§goto(addr655);
                                                                                                                                    }
                                                                                                                                    §§goto(addr691);
                                                                                                                                 }
                                                                                                                                 §§goto(addr701);
                                                                                                                              }
                                                                                                                              §§goto(addr704);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr648);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr655);
                                                                                                               }
                                                                                                               §§goto(addr704);
                                                                                                            }
                                                                                                            §§goto(addr642);
                                                                                                         }
                                                                                                         §§goto(addr625);
                                                                                                      }
                                                                                                      §§goto(addr704);
                                                                                                   }
                                                                                                   §§goto(addr621);
                                                                                                }
                                                                                                §§goto(addr651);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr733);
                                                                                       }
                                                                                       §§goto(addr648);
                                                                                    }
                                                                                    §§goto(addr607);
                                                                                 }
                                                                                 §§goto(addr655);
                                                                              }
                                                                              §§goto(addr587);
                                                                           }
                                                                        }
                                                                        §§goto(addr733);
                                                                     }
                                                                     §§goto(addr704);
                                                                  }
                                                               }
                                                               §§goto(addr547);
                                                            }
                                                            §§goto(addr544);
                                                         }
                                                         §§goto(addr477);
                                                      }
                                                      §§goto(addr415);
                                                   }
                                                }
                                             }
                                             §§goto(addr372);
                                          }
                                          §§goto(addr165);
                                       }
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr104);
               }
               §§goto(addr101);
            }
            §§goto(addr94);
         }
         §§goto(addr71);
      }
      
      public function §#§() : Boolean
      {
         return this.§%+§;
      }
      
      public function §40§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::2!D.SetAwake(true);
            while(true)
            {
               b2internal::;B.SetAwake(true);
               while(_loc3_)
               {
                  this.§%+§ = param1;
                  if(!_loc2_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public function §7d§() : Number
      {
         return this.§%! §;
      }
      
      public function §6_§() : Number
      {
         return this.§-4§;
      }
      
      public function §5B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            b2internal::2!D.SetAwake(true);
            while(true)
            {
               b2internal::;B.SetAwake(true);
               addr71:
               while(_loc3_)
               {
               }
            }
         }
         while(true)
         {
            this.§%! § = param1;
            while(_loc3_)
            {
               this.§-4§ = param2;
               if(!(_loc4_ && _loc3_))
               {
                  return;
               }
            }
            §§goto(addr71);
         }
      }
      
      public function §@!'§() : Boolean
      {
         return this.§&!E§;
      }
      
      public function §03§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::2!D.SetAwake(true);
         }
         while(true)
         {
            b2internal::;B.SetAwake(true);
            while(!(_loc2_ && _loc2_))
            {
               this.§&!E§ = param1;
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §!^§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::2!D.SetAwake(true);
            do
            {
               b2internal::;B.SetAwake(true);
               do
               {
                  this.§+>§ = param1;
               }
               while(!(_loc2_ || param1));
               
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function §5t§() : Number
      {
         return this.§+>§;
      }
      
      public function §@!#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::2!D.SetAwake(true);
            while(true)
            {
               b2internal::;B.SetAwake(true);
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§]d§ = param1;
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §5!D§() : Number
      {
         return this.§>G§;
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
