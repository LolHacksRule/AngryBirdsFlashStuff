package §@h§
{
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Mat22;
   import §@!E§.b2Math;
   import §@!E§.b2Transform;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §9"5§:b2Vec2;
      
      private var §&!6§:b2Vec2;
      
      private var §0E§:b2Vec2;
      
      private var §-D§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var § U§:b2Mat22;
      
      private var §6!h§:b2Vec2;
      
      private var §=!l§:Number;
      
      private var §8!`§:Number;
      
      private var §>!Z§:Number;
      
      private var §`"$§:Number;
      
      private var §4"$§:Number;
      
      private var §%! §:Number;
      
      private var §2!%§:Boolean;
      
      private var §"Z§:Boolean;
      
      private var §@'§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || _loc3_)
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§9"5§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§&!6§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§0E§ = new b2Vec2();
                        loop4:
                        for(; !_loc5_; if(_loc5_ && _loc3_)
                        {
                           continue;
                        },this.§4"$§ = param1.§;d§,§§goto(addr135))
                        {
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           this.§-D§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§ U§ = new b2Mat22();
                              loop6:
                              while(true)
                              {
                                 this.§6!h§ = new b2Vec2();
                                 loop7:
                                 while(true)
                                 {
                                    super(param1);
                                    loop8:
                                    while(true)
                                    {
                                       this.m_localAnchor1.SetV(param1.§8D§);
                                       loop9:
                                       while(true)
                                       {
                                          this.m_localAnchor2.SetV(param1.§@"$§);
                                          addr271:
                                          addr106:
                                          while(true)
                                          {
                                             this.§9"5§.SetV(param1.§2"#§);
                                             continue loop3;
                                          }
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             this.§@'§ = b2internal::-G;
                                             loop27:
                                             while(true)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   addr70:
                                                   if(!(_loc6_ || param1))
                                                   {
                                                      break;
                                                      addr49:
                                                   }
                                                   this.§0E§.§>![§();
                                                   loop28:
                                                   for(; _loc6_ || param1; while(true)
                                                   {
                                                      this.§-D§.§>![§();
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop27;
                                                      }
                                                      continue loop28;
                                                   },return)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr271);
                                                   }
                                                   continue loop6;
                                                }
                                                loop26:
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      addr85:
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         addr92:
                                                         if(!(_loc5_ && this))
                                                         {
                                                            addr99:
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     this.§8!`§ = 0;
                                                                     while(true)
                                                                     {
                                                                        this.§>!Z§ = param1.§;!W§;
                                                                        addr180:
                                                                        while(!_loc5_)
                                                                        {
                                                                           this.§`"$§ = param1.§2!$§;
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              addr245:
                                                                              while(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 this.§=!l§ = 0;
                                                                                 continue loop19;
                                                                              }
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§&!6§);
                                                                                 if(!(_loc6_ || _loc3_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(this.§9"5§);
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§pop().y = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             this.§6!h§.§>![§();
                                                                                             §§goto(addr208);
                                                                                             continue loop19;
                                                                                          }
                                                                                          addr241:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                          }
                                                                                          addr248:
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       continue loop16;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr247:
                                                                                 }
                                                                                 §§goto(addr248);
                                                                              }
                                                                              addr208:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr247);
                                                                                 §§goto(addr250);
                                                                              }
                                                                              addr250:
                                                                              §§goto(addr85);
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        continue loop3;
                                                                        §§goto(addr92);
                                                                     }
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                               continue loop8;
                                                            }
                                                            §§goto(addr106);
                                                         }
                                                         §§goto(addr187);
                                                      }
                                                      §§goto(addr148);
                                                   }
                                                   else
                                                   {
                                                      while(_loc6_)
                                                      {
                                                         this.§"Z§ = param1.§9!g§;
                                                         continue loop26;
                                                      }
                                                      addr119:
                                                   }
                                                   §§goto(addr180);
                                                }
                                                continue loop9;
                                             }
                                             while(!_loc5_)
                                             {
                                                this.§2!%§ = param1.§05§;
                                                §§goto(addr119);
                                                §§goto(addr70);
                                             }
                                             continue loop2;
                                             addr127:
                                          }
                                       }
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
         §§goto(addr58);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!F.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!n.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§6!h§.x);
            if(!_loc2_)
            {
               §§push(this.§-D§.x);
               if(!(_loc2_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc2_ && this))
                  {
                     §§push(this.§8!`§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(this.§6!h§.y);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && this))
                           {
                              §§push(this.§0E§.x);
                              if(!(_loc2_ && param1))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc2_)
                                    {
                                       addr98:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!_loc2_)
                                       {
                                          §§push(this.§6!h§.x);
                                          if(_loc3_)
                                          {
                                             §§push(this.§-D§.y);
                                             if(!(_loc2_ && this))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc2_ && this))
                                                {
                                                   addr124:
                                                   §§push(this.§8!`§);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr133:
                                                      §§push(this.§6!h§.y);
                                                      if(_loc3_ || param1)
                                                      {
                                                         §§goto(addr160);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                §§goto(addr160);
                                             }
                                             §§goto(addr156);
                                          }
                                       }
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr124);
                              }
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr133);
                     }
                  }
               }
               §§goto(addr160);
            }
            addr160:
            §§push(§§pop() + §§pop());
            if(!_loc2_)
            {
               addr156:
               §§push(this.§0E§.y);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
         }
         §§goto(addr98);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            return §§pop() * this.§6!h§.y;
         }
      }
      
      public function §%!-§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::9!F;
         var _loc2_:b2Body = b2internal::[!n;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(_loc10_ || _loc1_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!_loc11_)
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(!(_loc11_ && this))
            {
               §§push(§§pop() - _loc4_.y);
               if(!_loc11_)
               {
                  addr77:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               var _loc8_:b2Vec2;
               §§push((_loc8_ = _loc1_.§>!O§(this.§9"5§)).x);
               if(_loc10_ || _loc3_)
               {
                  §§push(_loc6_);
                  if(_loc10_ || _loc1_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc11_ && this))
                     {
                        addr110:
                        §§push(_loc8_.y);
                        if(_loc10_ || this)
                        {
                           §§push(§§pop() * _loc7_);
                           if(_loc11_)
                           {
                           }
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr141);
                  }
                  addr143:
                  §§push(§§pop() + §§pop());
                  if(_loc10_ || _loc2_)
                  {
                     addr141:
                     return Number(§§pop());
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr77);
         }
         §§goto(addr51);
      }
      
      public function §,!&§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::9!F;
         var _loc2_:b2Body = b2internal::[!n;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc21_ || _loc1_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!_loc22_)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc21_)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(_loc21_ || _loc3_)
               {
                  addr66:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(_loc3_.col1.x);
               if(!_loc22_)
               {
                  §§push(_loc4_);
                  if(!_loc22_)
                  {
                     addr95:
                     §§push(§§pop() * §§pop());
                     if(_loc21_)
                     {
                        §§push(_loc3_.col2.x);
                        if(!(_loc22_ && this))
                        {
                           §§push(§§pop() * _loc5_);
                        }
                     }
                     var _loc6_:* = §§pop();
                     if(!_loc22_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!(_loc22_ && _loc1_))
                        {
                           §§push(_loc4_);
                           if(_loc21_ || this)
                           {
                              addr149:
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
                              if(!_loc22_)
                              {
                                 §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                 if(!_loc22_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc7_:* = §§pop();
                              §§push(this.m_localAnchor2.y);
                              if(!_loc22_)
                              {
                                 §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                 if(!(_loc22_ && _loc1_))
                                 {
                                    addr186:
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
                                       if(!(_loc22_ && this))
                                       {
                                          §§push(_loc7_);
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc22_ && this))
                                             {
                                                §§push(_loc3_.col2);
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr322:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      addr323:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr324:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr325:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr326:
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  addr327:
                                                                  while(true)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr321:
                                             }
                                             addr262:
                                             if(!(_loc21_ || this))
                                             {
                                                continue;
                                             }
                                             §§push(_loc8_);
                                             if(_loc21_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc22_)
                                                {
                                                   addr275:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc21_ || _loc1_)
                                                   {
                                                      if(!_loc22_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop10:
                                                         while(true)
                                                         {
                                                            _loc8_ = §§pop();
                                                            addr287:
                                                            addr339:
                                                            while(true)
                                                            {
                                                               if(_loc21_)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc21_)
                                                                     {
                                                                        §§push(§§pop() + _loc4_);
                                                                        if(_loc21_)
                                                                        {
                                                                           addr338:
                                                                           §§push(Number(§§pop()));
                                                                           break;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr334:
                                                                     }
                                                                     continue loop10;
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                            }
                                                            var _loc9_:* = §§pop();
                                                            §§push(_loc1_.m_sweep.c.y);
                                                            if(_loc21_)
                                                            {
                                                               §§push(§§pop() + _loc5_);
                                                               if(!_loc22_)
                                                               {
                                                                  addr350:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(_loc2_.m_sweep.c.x);
                                                               if(_loc21_ || this)
                                                               {
                                                                  §§push(§§pop() + _loc7_);
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc2_.m_sweep.c.y);
                                                               if(!_loc22_)
                                                               {
                                                                  §§push(§§pop() + _loc8_);
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc12_:* = §§pop();
                                                               §§push(_loc11_);
                                                               if(_loc21_)
                                                               {
                                                                  §§push(§§pop() - _loc9_);
                                                                  if(!_loc22_)
                                                                  {
                                                                     addr388:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc13_:* = §§pop();
                                                                  §§push(_loc12_);
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(§§pop() - _loc10_);
                                                                     if(_loc21_)
                                                                     {
                                                                        addr397:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc14_:* = §§pop();
                                                                     var _loc15_:b2Vec2 = _loc1_.§>!O§(this.§9"5§);
                                                                     var _loc16_:b2Vec2 = _loc1_.§;!A§;
                                                                     var _loc17_:b2Vec2 = _loc2_.§;!A§;
                                                                     §§push(_loc1_.m_angularVelocity);
                                                                     if(!(_loc22_ && _loc2_))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc18_:* = §§pop();
                                                                     §§push(_loc2_.m_angularVelocity);
                                                                     if(!_loc22_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc19_:* = §§pop();
                                                                     §§push(_loc13_);
                                                                     if(!_loc22_)
                                                                     {
                                                                        §§push(_loc18_);
                                                                        if(!_loc22_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(!(_loc22_ && _loc1_))
                                                                           {
                                                                              §§push(_loc15_.y);
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc21_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       addr459:
                                                                                       §§push(_loc14_);
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          §§push(_loc18_);
                                                                                          if(_loc21_ || _loc3_)
                                                                                          {
                                                                                             §§push(_loc15_.x);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         addr483:
                                                                                                         §§push(_loc15_.x);
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            addr487:
                                                                                                            §§push(_loc17_.x);
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               addr491:
                                                                                                               §§push(_loc19_);
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc21_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc21_ || _loc1_)
                                                                                                                           {
                                                                                                                              §§push(_loc16_.x);
                                                                                                                              if(_loc21_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr525:
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(!(_loc22_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(_loc18_);
                                                                                                                                    if(_loc21_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(_loc21_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          if(!(_loc22_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc22_)
                                                                                                                                             {
                                                                                                                                                addr560:
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                   addr563:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc22_)
                                                                                                                                                   {
                                                                                                                                                      addr566:
                                                                                                                                                      §§push(_loc15_.y);
                                                                                                                                                      if(!(_loc22_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr575:
                                                                                                                                                         §§push(_loc17_.y);
                                                                                                                                                         if(_loc21_)
                                                                                                                                                         {
                                                                                                                                                            addr579:
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            if(!_loc22_)
                                                                                                                                                            {
                                                                                                                                                               addr582:
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc21_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc16_.y);
                                                                                                                                                                        if(!(_loc22_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr605:
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           if(_loc22_)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           addr614:
                                                                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                           if(!_loc22_)
                                                                                                                                                                           {
                                                                                                                                                                              addr628:
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr633:
                                                                                                                                                                                 return Number(§§pop());
                                                                                                                                                                                 addr632:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr632);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr633);
                                                                                                                                                                        }
                                                                                                                                                                        addr613:
                                                                                                                                                                        §§goto(addr614);
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr613);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr613);
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr605);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr633);
                                                                                                                                                }
                                                                                                                                                §§goto(addr575);
                                                                                                                                             }
                                                                                                                                             §§goto(addr605);
                                                                                                                                          }
                                                                                                                                          §§goto(addr582);
                                                                                                                                       }
                                                                                                                                       §§goto(addr605);
                                                                                                                                    }
                                                                                                                                    §§goto(addr560);
                                                                                                                                 }
                                                                                                                                 §§goto(addr575);
                                                                                                                              }
                                                                                                                              §§goto(addr605);
                                                                                                                           }
                                                                                                                           §§goto(addr563);
                                                                                                                        }
                                                                                                                        §§goto(addr525);
                                                                                                                     }
                                                                                                                     §§goto(addr613);
                                                                                                                  }
                                                                                                                  §§goto(addr605);
                                                                                                               }
                                                                                                               §§goto(addr525);
                                                                                                            }
                                                                                                            §§goto(addr563);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr633);
                                                                                                }
                                                                                                §§goto(addr491);
                                                                                             }
                                                                                             §§goto(addr579);
                                                                                          }
                                                                                          §§goto(addr491);
                                                                                       }
                                                                                       §§goto(addr487);
                                                                                    }
                                                                                    §§goto(addr483);
                                                                                 }
                                                                                 §§goto(addr628);
                                                                              }
                                                                              §§goto(addr605);
                                                                           }
                                                                           §§goto(addr566);
                                                                        }
                                                                        §§goto(addr628);
                                                                     }
                                                                     §§goto(addr459);
                                                                  }
                                                                  §§goto(addr397);
                                                               }
                                                               §§goto(addr388);
                                                            }
                                                            §§goto(addr350);
                                                         }
                                                         addr286:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr326);
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                   §§goto(addr286);
                                                }
                                                §§goto(addr334);
                                             }
                                             else
                                             {
                                                §§goto(addr323);
                                             }
                                          }
                                       }
                                       §§goto(addr339);
                                    }
                                 }
                                 §§goto(addr213);
                              }
                              §§goto(addr186);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc22_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc21_ || _loc1_)
                              {
                                 _loc5_ = §§pop();
                                 if(!_loc22_)
                                 {
                                    §§push(_loc6_);
                                    if(!_loc21_)
                                    {
                                    }
                                 }
                              }
                              §§goto(addr149);
                           }
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr149);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc21_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr66);
         }
         §§goto(addr47);
      }
      
      public function §"!&§() : Boolean
      {
         return this.§2!%§;
      }
      
      public function §&"8§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::9!F.SetAwake(true);
            while(true)
            {
               b2internal::[!n.SetAwake(true);
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            this.§2!%§ = param1;
            if(!_loc2_)
            {
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §[!>§() : Number
      {
         return this.§>!Z§;
      }
      
      public function §0`§() : Number
      {
         return this.§`"$§;
      }
      
      public function §=W§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            b2internal::9!F.SetAwake(true);
            do
            {
               b2internal::[!n.SetAwake(true);
               do
               {
                  this.§>!Z§ = param1;
                  do
                  {
                     this.§`"$§ = param2;
                  }
                  while(_loc4_);
                  
               }
               while(!(_loc3_ || _loc3_));
               
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§"Z§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            b2internal::9!F.SetAwake(true);
            do
            {
               b2internal::[!n.SetAwake(true);
               do
               {
                  this.§"Z§ = param1;
               }
               while(_loc3_ && _loc2_);
               
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function §2",§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            b2internal::9!F.SetAwake(true);
            do
            {
               b2internal::[!n.SetAwake(true);
               do
               {
                  this.§%! § = param1;
               }
               while(_loc3_);
               
            }
            while(_loc3_);
            
         }
      }
      
      public function §>g§() : Number
      {
         return this.§%! §;
      }
      
      public function §&!q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            b2internal::9!F.SetAwake(true);
            while(true)
            {
               b2internal::[!n.SetAwake(true);
               loop1:
               while(_loc2_ || this)
               {
                  while(true)
                  {
                     this.§4"$§ = param1;
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
         §§goto(addr61);
      }
      
      public function §%>§() : Number
      {
         return this.§4"$§;
      }
      
      public function §5%§() : Number
      {
         return this.§8!`§;
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
