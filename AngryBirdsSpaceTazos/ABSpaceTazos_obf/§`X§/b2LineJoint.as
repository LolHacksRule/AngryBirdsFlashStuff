package §`X§
{
   import §'!&§.b2Body;
   import §'!&§.b2TimeStep;
   import §9t§.b2Mat22;
   import §9t§.b2Math;
   import §9t§.b2Transform;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §0"6§:b2Vec2;
      
      private var §%G§:b2Vec2;
      
      private var §4H§:b2Vec2;
      
      private var §-m§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §<T§:b2Mat22;
      
      private var §0"3§:b2Vec2;
      
      private var §!!#§:Number;
      
      private var §9H§:Number;
      
      private var §+!+§:Number;
      
      private var §3O§:Number;
      
      private var §8!R§:Number;
      
      private var §7B§:Number;
      
      private var §]U§:Boolean;
      
      private var §5!z§:Boolean;
      
      private var §?§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && _loc3_))
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§0"6§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§%G§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§4H§ = new b2Vec2();
                        while(true)
                        {
                           this.§-m§ = new b2Vec2();
                           loop5:
                           while(_loc6_ || _loc2_)
                           {
                              while(true)
                              {
                                 this.§<T§ = new b2Mat22();
                                 loop7:
                                 while(true)
                                 {
                                    this.§0"3§ = new b2Vec2();
                                    loop8:
                                    while(true)
                                    {
                                       super(param1);
                                       loop9:
                                       while(true)
                                       {
                                          this.m_localAnchor1.SetV(param1.§!8§);
                                          loop10:
                                          while(true)
                                          {
                                             this.m_localAnchor2.SetV(param1.§@W§);
                                             loop11:
                                             while(true)
                                             {
                                                this.§0"6§.SetV(param1.§8!<§);
                                                loop12:
                                                for(; _loc6_; while(_loc6_ || _loc2_)
                                                {
                                                   this.§+!+§ = param1.§-!L§;
                                                   §§goto(addr186);
                                                })
                                                {
                                                   §§push(this.§%G§);
                                                   while(true)
                                                   {
                                                      §§push(this.§0"6§);
                                                      addr245:
                                                      addr257:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().y);
                                                         if(_loc6_)
                                                         {
                                                            §§push(-§§pop());
                                                         }
                                                         addr249:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop7;
                                                         }
                                                      }
                                                      §§push(this.§%G§);
                                                      if(_loc5_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(this.§0"6§);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc6_ || this)
                                                         {
                                                            §§pop().y = §§pop();
                                                            while(true)
                                                            {
                                                               this.§0"3§.§@!d§();
                                                               addr215:
                                                               addr86:
                                                               while(true)
                                                               {
                                                                  this.§!!#§ = 0;
                                                                  continue loop1;
                                                               }
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  this.§4H§.§@!d§();
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        addr56:
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_ || _loc2_)
                                                                                 {
                                                                                    addr118:
                                                                                    if(_loc5_ && param1)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    this.§5!z§ = param1.§+!b§;
                                                                                    continue loop26;
                                                                                 }
                                                                                 addr131:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    addr186:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§3O§ = param1.§ !W§;
                                                                                       continue loop10;
                                                                                    }
                                                                                    continue loop25;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§goto(addr215);
                                                                                 §§goto(addr118);
                                                                              }
                                                                              continue loop2;
                                                                              addr148:
                                                                              addr111:
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           this.§?§ = b2internal::[!_;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(!(_loc6_ || _loc3_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr86);
                                                                     }
                                                                     continue loop1;
                                                                     addr72:
                                                                     this.§-m§.§@!d§();
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr245);
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                }
                                                continue loop9;
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
         §§goto(addr310);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::<!1.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?H.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || this)
         {
            §§push(this.§0"3§.x);
            if(!(_loc2_ && this))
            {
               §§push(this.§-m§.x);
               if(!(_loc2_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(this.§9H§);
                     if(_loc3_)
                     {
                        addr58:
                        §§push(this.§0"3§.y);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc3_)
                           {
                              §§push(this.§4H§.x);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc2_)
                                 {
                                    addr89:
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_)
                                    {
                                       addr92:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!_loc2_)
                                       {
                                          addr96:
                                          §§push(this.§0"3§.x);
                                          if(_loc3_)
                                          {
                                             addr101:
                                             §§push(this.§-m§.y);
                                             if(_loc3_ || this)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc2_)
                                                {
                                                   addr114:
                                                   §§push(this.§9H§);
                                                   if(!_loc2_)
                                                   {
                                                      addr118:
                                                      §§push(this.§0"3§.y);
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr145);
                                                      }
                                                      addr145:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc2_ && this))
                                                      {
                                                         addr141:
                                                         §§push(this.§4H§.y);
                                                      }
                                                      return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr141);
                                                }
                                                §§goto(addr145);
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr114);
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr96);
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr96);
               }
               §§goto(addr58);
            }
         }
         §§goto(addr92);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || _loc2_)
         {
            return §§pop() * this.§0"3§.y;
         }
      }
      
      public function §]Z§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::<!1;
         var _loc2_:b2Body = b2internal::?H;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!(_loc11_ && this))
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_)
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(_loc10_ || _loc3_)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc10_ || _loc3_)
               {
                  addr82:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               var _loc8_:b2Vec2;
               §§push((_loc8_ = _loc1_.§+!y§(this.§0"6§)).x);
               if(!(_loc11_ && _loc2_))
               {
                  §§push(_loc6_);
                  if(_loc10_ || this)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc10_)
                     {
                        §§push(_loc8_.y);
                        if(_loc10_ || this)
                        {
                           §§goto(addr119);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr142);
                  }
                  addr119:
                  §§push(§§pop() * _loc7_);
                  if(!_loc11_)
                  {
                     addr123:
                     §§push(§§pop() + §§pop());
                     if(!(_loc11_ && _loc3_))
                     {
                        addr142:
                        §§push(Number(§§pop()));
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr142);
                  }
                  var _loc9_:* = §§pop();
                  return §§pop();
               }
               §§goto(addr142);
            }
            §§goto(addr82);
         }
         §§goto(addr51);
      }
      
      public function §1! §() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::<!1;
         var _loc2_:b2Body = b2internal::?H;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc22_ && _loc1_))
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(_loc21_ || _loc2_)
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc22_)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(!(_loc22_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(_loc21_ || this)
            {
               §§push(_loc4_);
               if(!(_loc22_ && _loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc21_ || this)
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc21_ || _loc1_)
                     {
                        addr109:
                        §§push(§§pop() * _loc5_);
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc22_ && _loc1_))
                     {
                        addr120:
                        var _loc6_:* = Number(§§pop());
                        if(_loc21_ || this)
                        {
                           §§push(_loc3_.col1.y);
                           if(!(_loc22_ && this))
                           {
                              §§push(_loc4_);
                              if(!(_loc22_ && this))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc21_ || _loc1_)
                                 {
                                    addr154:
                                    §§push(_loc3_.col2.y);
                                    if(!(_loc22_ && this))
                                    {
                                       addr164:
                                       §§push(§§pop() * _loc5_);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc22_ && this))
                                    {
                                       addr174:
                                       §§push(Number(§§pop()));
                                       if(_loc21_)
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc21_)
                                          {
                                             §§push(_loc6_);
                                             if(!(_loc22_ && _loc2_))
                                             {
                                                addr188:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc4_ = §§pop();
                                             addr190:
                                             _loc3_ = _loc2_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(_loc21_)
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                                if(!_loc22_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc7_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(!(_loc22_ && _loc1_))
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                if(!_loc22_)
                                                {
                                                   addr226:
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
                                                      if(_loc21_ || _loc3_)
                                                      {
                                                         §§push(_loc7_);
                                                         if(_loc21_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            while(true)
                                                            {
                                                               §§push(_loc3_.col2);
                                                               addr349:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                               }
                                                            }
                                                            addr347:
                                                         }
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §§push(_loc8_);
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc21_ || _loc1_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr361:
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.col1);
                                                                              if(_loc22_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(_loc3_.col2);
                                                                                          if(!(_loc22_ && _loc2_))
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc21_ || _loc1_)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   break loop4;
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   if(_loc21_ || _loc3_)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                                addr324:
                                                                                                loop11:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   addr325:
                                                                                                   while(_loc21_ || this)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         if(_loc21_ || _loc1_)
                                                                                                         {
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      var _loc9_:Number = §§pop();
                                                                                                      §§push(_loc1_.m_sweep.c.y);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc5_);
                                                                                                         if(_loc21_ || _loc1_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      var _loc10_:* = §§pop();
                                                                                                      §§push(_loc2_.m_sweep.c.x);
                                                                                                      if(_loc21_ || _loc1_)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc7_);
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            addr422:
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         var _loc11_:* = §§pop();
                                                                                                         §§push(_loc2_.m_sweep.c.y);
                                                                                                         if(!(_loc22_ && _loc1_))
                                                                                                         {
                                                                                                            §§push(§§pop() + _loc8_);
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               addr439:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc12_:* = §§pop();
                                                                                                            §§push(_loc11_);
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(§§pop() - _loc9_);
                                                                                                               if(!(_loc22_ && _loc3_))
                                                                                                               {
                                                                                                                  addr453:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc13_:* = §§pop();
                                                                                                               §§push(_loc12_);
                                                                                                               if(_loc21_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - _loc10_);
                                                                                                                  if(_loc21_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               var _loc14_:* = §§pop();
                                                                                                               var _loc15_:b2Vec2 = _loc1_.§+!y§(this.§0"6§);
                                                                                                               var _loc16_:b2Vec2 = _loc1_.§?o§;
                                                                                                               var _loc17_:b2Vec2 = _loc2_.§?o§;
                                                                                                               §§push(_loc1_.m_angularVelocity);
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc18_:* = §§pop();
                                                                                                               §§push(_loc2_.m_angularVelocity);
                                                                                                               if(_loc21_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc19_:* = §§pop();
                                                                                                               §§push(_loc13_);
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§push(_loc18_);
                                                                                                                  if(!(_loc22_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(-§§pop());
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(_loc15_.y);
                                                                                                                        if(_loc21_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc22_ && this))
                                                                                                                           {
                                                                                                                              addr536:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc22_ && this))
                                                                                                                              {
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    addr547:
                                                                                                                                    §§push(_loc18_);
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc15_.x);
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc22_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc22_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc21_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc15_.x);
                                                                                                                                                   if(!(_loc22_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc17_.x);
                                                                                                                                                      if(!(_loc22_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr586:
                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                         if(!(_loc22_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(-§§pop());
                                                                                                                                                            if(_loc21_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc21_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc16_.x);
                                                                                                                                                                        if(!(_loc22_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr625:
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              addr628:
                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                              if(!_loc22_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(-§§pop());
                                                                                                                                                                                 if(_loc21_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                    if(!(_loc22_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          if(!(_loc22_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr658:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc21_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr666:
                                                                                                                                                                                                §§push(_loc15_.y);
                                                                                                                                                                                                if(_loc21_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc17_.y);
                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr725);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr728);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr725:
                                                                                                                                                                                          §§goto(addr724);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                       if(!(_loc22_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr687:
                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                          if(!(_loc22_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!_loc22_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr698:
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(!_loc22_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc16_.y);
                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr705);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr725);
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr725);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr721);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr698);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr705:
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    if(!(_loc22_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr713:
                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                       if(!(_loc22_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr721:
                                                                                                                                                                                          §§push(§§pop() * _loc4_);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr724:
                                                                                                                                                                                    §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                    if(!_loc22_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr728:
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(!(_loc22_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr747:
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr747);
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc20_:* = §§pop();
                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr713);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr725);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr725);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr658);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr725);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr687);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr713);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr625);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr628);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr728);
                                                                                                                                                }
                                                                                                                                                §§goto(addr747);
                                                                                                                                             }
                                                                                                                                             §§goto(addr666);
                                                                                                                                          }
                                                                                                                                          §§goto(addr628);
                                                                                                                                       }
                                                                                                                                       §§goto(addr625);
                                                                                                                                    }
                                                                                                                                    §§goto(addr586);
                                                                                                                                 }
                                                                                                                                 §§goto(addr666);
                                                                                                                              }
                                                                                                                              §§goto(addr747);
                                                                                                                           }
                                                                                                                           §§goto(addr728);
                                                                                                                        }
                                                                                                                        §§goto(addr725);
                                                                                                                     }
                                                                                                                     §§goto(addr536);
                                                                                                                  }
                                                                                                                  §§goto(addr547);
                                                                                                               }
                                                                                                               §§goto(addr747);
                                                                                                            }
                                                                                                            §§goto(addr453);
                                                                                                         }
                                                                                                         §§goto(addr439);
                                                                                                      }
                                                                                                      §§goto(addr422);
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                             }
                                                                                             break loop4;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr347);
                                                                                    }
                                                                                    §§goto(addr349);
                                                                                 }
                                                                                 break loop4;
                                                                              }
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc21_)
                                                            {
                                                               §§goto(addr388);
                                                            }
                                                            §§goto(addr389);
                                                         }
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                }
                                                §§goto(addr332);
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr190);
                                       }
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr190);
                     }
                  }
                  §§goto(addr120);
               }
               §§goto(addr109);
            }
            §§goto(addr120);
         }
         §§goto(addr52);
      }
      
      public function §5C§() : Boolean
      {
         return this.§]U§;
      }
      
      public function §;F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::<!1.SetAwake(true);
         }
         do
         {
            b2internal::?H.SetAwake(true);
            do
            {
               this.§]U§ = param1;
            }
            while(_loc2_ && _loc2_);
            
         }
         while(!_loc3_);
         
      }
      
      public function §8,§() : Number
      {
         return this.§+!+§;
      }
      
      public function §`";§() : Number
      {
         return this.§3O§;
      }
      
      public function §&!7§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            b2internal::<!1.SetAwake(true);
            loop0:
            while(true)
            {
               b2internal::?H.SetAwake(true);
               loop1:
               do
               {
                  this.§+!+§ = param1;
                  while(_loc3_)
                  {
                     this.§3O§ = param2;
                     if(!_loc4_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc4_);
               
            }
         }
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§5!z§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::<!1.SetAwake(true);
         }
         do
         {
            b2internal::?H.SetAwake(true);
            do
            {
               this.§5!z§ = param1;
            }
            while(_loc3_ && _loc2_);
            
         }
         while(!_loc2_);
         
      }
      
      public function §+K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::<!1.SetAwake(true);
         }
         while(true)
         {
            b2internal::?H.SetAwake(true);
            while(!(_loc2_ && this))
            {
               this.§7B§ = param1;
               if(_loc3_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function §2"5§() : Number
      {
         return this.§7B§;
      }
      
      public function §`"6§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::<!1.SetAwake(true);
            do
            {
               b2internal::?H.SetAwake(true);
               do
               {
                  this.§8!R§ = param1;
               }
               while(!_loc3_);
               
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §-!B§() : Number
      {
         return this.§8!R§;
      }
      
      public function §'!k§() : Number
      {
         return this.§9H§;
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
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc2_:b2Body = b2internal::<!1;
         var _loc3_:b2Body = b2internal::?H;
         var _loc4_:b2Vec2 = _loc2_.§?o§;
         §§push(_loc2_.m_angularVelocity);
         if(_loc23_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc3_.§?o§;
         §§push(_loc3_.m_angularVelocity);
         if(!_loc24_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!_loc24_)
         {
            §§push(this.§5!z§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc23_)
                        {
                           §§push(this.§4H§.x);
                           if(!_loc24_)
                           {
                              §§push(_loc6_.x);
                              if(_loc23_)
                              {
                                 §§push(_loc4_.x);
                                 if(_loc23_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc23_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop5:
                                       while(true)
                                       {
                                          §§push(this.§4H§);
                                          addr567:
                                          while(true)
                                          {
                                             §§push(§§pop().y);
                                             if(_loc23_ || _loc2_)
                                             {
                                                §§push(_loc6_.y);
                                                if(_loc23_ || _loc3_)
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.y);
                                                      if(_loc23_ || _loc2_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc23_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr598:
                                                               while(true)
                                                               {
                                                                  §§push(this.m_a2);
                                                                  addr600:
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(!_loc24_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc23_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc23_ || _loc2_)
                                                                           {
                                                                              §§push(this.m_a1);
                                                                              if(!_loc24_)
                                                                              {
                                                                                 addr618:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    addr619:
                                                                                    addr713:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc24_)
                                                                                       {
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr713:
                                                                                    §§push(_loc7_);
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       addr716:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc24_ && _loc2_))
                                                                                       {
                                                                                          addr724:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc24_ && _loc2_))
                                                                                          {
                                                                                             addr738:
                                                                                             §§push(this.m_s1);
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                addr736:
                                                                                                §§push(_loc5_);
                                                                                                break loop14;
                                                                                             }
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                addr741:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc12_:* = §§pop();
                                                                                             if(!(_loc24_ && this))
                                                                                             {
                                                                                                §§push(this.§]U§);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                         }
                                                                                                         addr771:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               §§push(this.§4H§.x);
                                                                                                               if(_loc23_ || this)
                                                                                                               {
                                                                                                                  §§push(_loc6_.x);
                                                                                                                  if(_loc23_ || param1)
                                                                                                                  {
                                                                                                                     §§push(_loc4_.x);
                                                                                                                     if(!_loc24_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              §§push(this.§4H§.y);
                                                                                                                              if(_loc23_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - _loc4_.y);
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       addr822:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc24_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(this.m_a2);
                                                                                                                                             if(_loc23_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr842:
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr850:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc23_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.m_a1);
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            addr866:
                                                                                                                                                            §§push(§§pop() * _loc5_);
                                                                                                                                                            if(!(_loc24_ && this))
                                                                                                                                                            {
                                                                                                                                                               addr874:
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(!_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(!(_loc24_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr885:
                                                                                                                                                                     _loc17_ = §§pop();
                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§0"3§);
                                                                                                                                                                        if(!(_loc24_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           _loc18_ = §§pop().Copy();
                                                                                                                                                                           _loc19_ = this.§<T§.§3!N§(new b2Vec2(),-_loc12_,-_loc17_);
                                                                                                                                                                           if(!(_loc24_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§0"3§);
                                                                                                                                                                              loop74:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().§]!H§(_loc19_);
                                                                                                                                                                                 loop75:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§?§);
                                                                                                                                                                                    loop76:
                                                                                                                                                                                    while(§§pop() != b2internal::6!S)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§?§);
                                                                                                                                                                                       if(_loc24_ && param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop() == b2internal::]!=)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc23_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§0"3§);
                                                                                                                                                                                                loop77:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc24_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(b2Math.§+!G§(this.§0"3§.y,0));
                                                                                                                                                                                                      loop78:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                            loop79:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1455:
                                                                                                                                                                                                               loop83:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                                                                  loop84:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§0"3§.y);
                                                                                                                                                                                                                        loop86:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc18_.y);
                                                                                                                                                                                                                           loop87:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              loop88:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§<T§.col2.x);
                                                                                                                                                                                                                                 loop89:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    loop90:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                       loop91:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          loop92:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc20_ = §§pop();
                                                                                                                                                                                                                                             loop93:
                                                                                                                                                                                                                                             while(!_loc24_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§<T§.col1.x);
                                                                                                                                                                                                                                                loop94:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                   loop95:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop() != §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc20_);
                                                                                                                                                                                                                                                            while(_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§<T§.col1.x);
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                  addr1447:
                                                                                                                                                                                                                                                                  addr1256:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc18_.x);
                                                                                                                                                                                                                                                                     addr1449:
                                                                                                                                                                                                                                                                     while(!_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           addr1453:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc21_ = §§pop();
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop88;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1256:
                                                                                                                                                                                                                                                                  while(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     continue loop94;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1148:
                                                                                                                                                                                                                                                               if(!(_loc23_ || this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(this.m_s2);
                                                                                                                                                                                                                                                               if(!(_loc24_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc19_.y);
                                                                                                                                                                                                                                                                              if(_loc23_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1187:
                                                                                                                                                                                                                                                                                 §§push(this.m_a2);
                                                                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc24_ && this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop87;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    loop137:
                                                                                                                                                                                                                                                                                    while(!_loc24_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                             loop138:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                addr1207:
                                                                                                                                                                                                                                                                                                loop139:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                      loop140:
                                                                                                                                                                                                                                                                                                      for(; _loc23_ || _loc3_; if(!(_loc23_ || _loc2_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                                                                      },if(!_loc24_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(b2internal::6"2 * _loc11_);
                                                                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop95;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop138;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr941);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1072);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr949);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1334);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1057);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1348);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr949);
                                                                                                                                                                                                                                                                                                      },§§goto(addr1344))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                                                                                                                                                                         §§push(_loc4_.x);
                                                                                                                                                                                                                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() - b2internal::8"2 * _loc8_);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                         if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1130:
                                                                                                                                                                                                                                                                                                            if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                                                                                                                                                                               §§push(_loc4_.y);
                                                                                                                                                                                                                                                                                                               if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - b2internal::8"2 * _loc9_);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                  if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(b2internal::-!J * _loc10_);
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop137;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                        loop142:
                                                                                                                                                                                                                                                                                                                        while(!_loc24_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1064:
                                                                                                                                                                                                                                                                                                                              if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1072:
                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                 while(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    loop144:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                                                          if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + b2internal::9; * _loc8_);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                          loop145:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr991:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                                                                                if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + b2internal::9; * _loc9_);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop140;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop144;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop145;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr1945:
                                                                                                                                                                                                                                                                                                                                                addr1907:
                                                                                                                                                                                                                                                                                                                                                addr1945:
                                                                                                                                                                                                                                                                                                                                                addr1945:
                                                                                                                                                                                                                                                                                                                                                addr1907:
                                                                                                                                                                                                                                                                                                                                                _loc2_.m_angularVelocity = _loc5_;
                                                                                                                                                                                                                                                                                                                                                loop147:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc3_.§?o§);
                                                                                                                                                                                                                                                                                                                                                   addr1922:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§pop().SetV(_loc6_);
                                                                                                                                                                                                                                                                                                                                                      continue loop147;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1344:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(this.m_s1);
                                                                                                                                                                                                                                                                                                                                                      break loop137;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                                                                   addr941:
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                      if(_loc24_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop142;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop139;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop84;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1320);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1141);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop142;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop91;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1294:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                                                             addr1141:
                                                                                                                                                                                                                                                                                                                                             addr1336:
                                                                                                                                                                                                                                                                                                                                             while(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1148);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1336:
                                                                                                                                                                                                                                                                                                                                             while(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                _loc9_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1344);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             loop109:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                                                loop110:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(this.§4H§);
                                                                                                                                                                                                                                                                                                                                                   loop111:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                      loop112:
                                                                                                                                                                                                                                                                                                                                                      while(_loc23_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         loop113:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                            addr1363:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                               loop115:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc23_ || this))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           break loop76;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§-m§);
                                                                                                                                                                                                                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                 while(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                    while(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§4H§);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                                                             while(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   addr1335:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1336);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                while(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1256);
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             continue loop112;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop113;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       continue loop111;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    continue loop115;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 continue loop110;
                                                                                                                                                                                                                                                                                                                                                                                 addr1312:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                                                 addr1353:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue loop109;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr1352:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1335);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§0"3§.y);
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - _loc18_.y);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                           addr1388:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                                                                                              addr1348:
                                                                                                                                                                                                                                                                                                                                                                              addr1428:
                                                                                                                                                                                                                                                                                                                                                                              loop106:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.§-m§);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                       break loop106;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr1427:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 _loc21_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 break loop140;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1130);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        addr1400:
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1352);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1452);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop89;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop144;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr1294:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1447);
                                                                                                                                                                                                                                                                                                                                 addr1072:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1248);
                                                                                                                                                                                                                                                                                                                                       §§push(this.m_a1);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1353);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1256);
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1064);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop86;
                                                                                                                                                                                                                                                                                                                              addr1238:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop94;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1294);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1335);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1363);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1057:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1072);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1945);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1388);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1907);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      loop133:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1401:
                                                                                                                                                                                                                                                                                                         addr1526:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(this.§0"3§);
                                                                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop77;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop78;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop79;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop93;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1945);
                                                                                                                                                                                                                                                                                                            continue loop133;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(b2Math.§'!i§(this.§0"3§.y,0));
                                                                                                                                                                                                                                                                                                            addr1532:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                               addr1533:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop83;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1428);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1449);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1324);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1238);
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop90;
                                                                                                                                                                                                                                                                                    addr1199:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1248);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1199);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1453);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1207);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1312);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1256);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1187);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop92;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1454:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1427);
                                                                                                                                                                                                                                                         §§push(_loc18_.x);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1401);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop75;
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
                                                                                                                                                                                                         §§goto(addr1532);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1526);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop74;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1533);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1945);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1455);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1526);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1294);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           loop73:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§0"3§.x);
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + _loc22_);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              addr1883:
                                                                                                                                                                              loop64:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                 loop65:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§-m§);
                                                                                                                                                                                    loop60:
                                                                                                                                                                                    do
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       addr1868:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          addr1869:
                                                                                                                                                                                          do
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             do
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                                                                §§push(_loc22_);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(!_loc23_);
                                                                                                                                                                                             
                                                                                                                                                                                          }
                                                                                                                                                                                          while(_loc24_ && _loc2_);
                                                                                                                                                                                          
                                                                                                                                                                                          continue loop60;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    while(§§push(this.§-m§), _loc24_ && this);
                                                                                                                                                                                    
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    addr1852:
                                                                                                                                                                                    loop72:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       loop59:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1854:
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          if(!(_loc24_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc9_ = §§pop();
                                                                                                                                                                                                addr1862:
                                                                                                                                                                                                loop159:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                   loop160:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.m_s1);
                                                                                                                                                                                                      loop155:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            loop156:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc10_ = §§pop();
                                                                                                                                                                                                                  loop154:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc23_ || _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop159;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1823:
                                                                                                                                                                                                                     if(!(_loc23_ || param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop64;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                        if(_loc23_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.m_s2);
                                                                                                                                                                                                                              addr1792:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 addr1607:
                                                                                                                                                                                                                                 if(!(_loc23_ || param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop155;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc24_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc23_ || this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop65;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          loop152:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc23_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc24_ && _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop154;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                                                                                                                   if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1660:
                                                                                                                                                                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop56:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                     §§push(_loc6_.y);
                                                                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + b2internal::9; * _loc9_);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                                                                     addr1682:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(b2internal::6"2 * _loc11_);
                                                                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1607);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    loop52:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc23_ || _loc2_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop72;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                          if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             loop58:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop156;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1727:
                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop160;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                         addr1730:
                                                                                                                                                                                                                                                                                                         while(_loc23_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                                                                            §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + b2internal::9; * _loc8_);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop56;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1660);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         loop51:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc24_ && _loc2_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                                                                                                                               if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(b2internal::-!J * _loc10_);
                                                                                                                                                                                                                                                                                                                  continue loop52;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop58;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1780:
                                                                                                                                                                                                                                                                                                            addr1780:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                                                                                                                                                                               §§push(_loc4_.y);
                                                                                                                                                                                                                                                                                                               if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - b2internal::8"2 * _loc9_);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                               continue loop51;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1871);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop160;
                                                                                                                                                                                                                                                                                                   addr1727:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1854);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop156;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1727);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop72;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1602:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                 addr1888:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1872:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop73;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1887:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop152;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1871);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1889);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc24_ && this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop154;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                                                                  §§push(_loc4_.x);
                                                                                                                                                                                                                                                                  if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() - b2internal::8"2 * _loc8_);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                                                                  §§goto(addr1780);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1888);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop154;
                                                                                                                                                                                                                                                            addr1797:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1730);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1694);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1682);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1796:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc11_ = §§pop();
                                                                                                                                                                                                                                                §§goto(addr1797);
                                                                                                                                                                                                                                                continue loop152;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1636:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop59;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1796);
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop59;
                                                                                                                                                                                                                                       addr1793:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1727);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1636);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1790:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1793);
                                                                                                                                                                                                                        §§goto(addr1823);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop159;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1868);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1861:
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1886:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1887);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1889);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1883);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr1546:
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() != §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1560:
                                                                                                                                                                                 §§push(-§§pop());
                                                                                                                                                                                 if(!(_loc24_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§<T§.col1.x);
                                                                                                                                                                                    if(!(_loc24_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc22_ = §§pop();
                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1872);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1862);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1790);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1861);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1868);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1869);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1886);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1780);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1886);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1852);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1650);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1868);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1714);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr885);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1792);
                                                                                                                                                }
                                                                                                                                                §§goto(addr866);
                                                                                                                                             }
                                                                                                                                             §§goto(addr874);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1560);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr866);
                                                                                                                                 }
                                                                                                                                 §§goto(addr822);
                                                                                                                              }
                                                                                                                              §§goto(addr842);
                                                                                                                           }
                                                                                                                           §§goto(addr1602);
                                                                                                                        }
                                                                                                                        §§goto(addr1868);
                                                                                                                     }
                                                                                                                     §§goto(addr850);
                                                                                                                  }
                                                                                                                  §§goto(addr842);
                                                                                                               }
                                                                                                               §§goto(addr1869);
                                                                                                            }
                                                                                                            §§goto(addr1883);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(this.§<T§.col1.x);
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               §§goto(addr1546);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1729);
                                                                                                      }
                                                                                                      §§goto(addr771);
                                                                                                   }
                                                                                                   §§pop();
                                                                                                   if(!_loc24_)
                                                                                                   {
                                                                                                      §§push(this.§?§ == b2internal::[!_);
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         §§goto(addr771);
                                                                                                         §§push(!§§pop());
                                                                                                      }
                                                                                                      §§goto(addr771);
                                                                                                   }
                                                                                                   §§goto(addr1830);
                                                                                                }
                                                                                                §§goto(addr771);
                                                                                             }
                                                                                             §§goto(addr1862);
                                                                                          }
                                                                                          §§goto(addr741);
                                                                                       }
                                                                                       §§goto(addr736);
                                                                                    }
                                                                                    break loop14;
                                                                                 }
                                                                                 addr618:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc13_ = §§pop();
                                                                                       addr627:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§!!#§);
                                                                                          if(_loc23_ || _loc2_)
                                                                                          {
                                                                                             §§push(this.§7B§);
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                §§push(_loc13_);
                                                                                                if(_loc24_ && this)
                                                                                                {
                                                                                                   addr678:
                                                                                                   §§push(_loc4_.y);
                                                                                                   break loop11;
                                                                                                }
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      if(_loc24_ && param1)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr513:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc14_ = §§pop();
                                                                                                            addr514:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§9H§);
                                                                                                               addr467:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr713);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr619);
                                                                                                }
                                                                                                §§goto(addr713);
                                                                                             }
                                                                                             §§goto(addr738);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr664:
                                                                                             §§push(this.§-m§.y);
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                §§push(_loc6_.y);
                                                                                                if(!(_loc24_ && this))
                                                                                                {
                                                                                                   §§goto(addr678);
                                                                                                }
                                                                                                break loop14;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr724);
                                                                                       }
                                                                                    }
                                                                                    addr626:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr741);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr645:
                                                                              §§push(_loc6_.x);
                                                                              if(_loc23_)
                                                                              {
                                                                                 addr649:
                                                                                 §§push(_loc4_.x);
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc23_ || param1)
                                                                                       {
                                                                                          §§goto(addr664);
                                                                                       }
                                                                                       §§goto(addr738);
                                                                                    }
                                                                                    §§goto(addr736);
                                                                                 }
                                                                                 §§goto(addr716);
                                                                              }
                                                                              §§goto(addr713);
                                                                           }
                                                                        }
                                                                        §§goto(addr738);
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr737:
                                                                  §§goto(addr738);
                                                               }
                                                            }
                                                            addr597:
                                                         }
                                                         §§goto(addr716);
                                                      }
                                                      break;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc24_ && _loc2_))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc24_ && param1))
                                                      {
                                                         addr696:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc23_ || _loc2_)
                                                         {
                                                            addr704:
                                                            §§push(this.m_s2);
                                                            if(_loc23_ || this)
                                                            {
                                                               §§goto(addr713);
                                                            }
                                                         }
                                                         §§goto(addr738);
                                                      }
                                                      §§goto(addr736);
                                                   }
                                                   §§goto(addr737);
                                                   addr584:
                                                }
                                                §§goto(addr619);
                                             }
                                             §§goto(addr618);
                                          }
                                       }
                                    }
                                    §§goto(addr713);
                                 }
                                 §§goto(addr584);
                              }
                              §§goto(addr649);
                           }
                           §§goto(addr738);
                        }
                        §§goto(addr627);
                     }
                     §§push(this.§-m§.x);
                     if(!(_loc24_ && param1))
                     {
                        §§goto(addr645);
                     }
                     §§goto(addr741);
                     addr544:
                  }
                  §§goto(addr633);
               }
               if(!(_loc23_ || this))
               {
                  continue;
               }
               §§goto(addr544);
            }
         }
         §§goto(addr248);
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
