package §,,§
{
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2GearJoint extends b2Joint
   {
       
      
      private var m_ground1:b2Body;
      
      private var m_ground2:b2Body;
      
      private var m_revolute1:b2RevoluteJoint;
      
      private var m_prismatic1:b2PrismaticJoint;
      
      private var m_revolute2:b2RevoluteJoint;
      
      private var m_prismatic2:b2PrismaticJoint;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §9W§:b2Jacobian;
      
      private var § o§:Number;
      
      private var §4"E§:Number;
      
      private var §,!v§:Number;
      
      private var §2!_§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_ || _loc2_)
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  while(!(_loc6_ && _loc3_))
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        addr49:
                        while(true)
                        {
                           this.§9W§ = new b2Jacobian();
                           addr54:
                           while(!_loc6_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                     }
                     if(!(_loc7_ || _loc3_))
                     {
                        continue;
                     }
                     if(false)
                     {
                        §§goto(addr49);
                     }
                     else
                     {
                        addr94:
                        §§push(param1.joint1.§<"@§);
                        if(_loc7_ || this)
                        {
                           §§push(int(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        §§push(param1.joint2.§<"@§);
                        if(!(_loc6_ && param1))
                        {
                           §§push(int(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        if(_loc7_)
                        {
                           this.m_revolute1 = null;
                           loop7:
                           while(true)
                           {
                              this.m_prismatic1 = null;
                              while(true)
                              {
                                 this.m_revolute2 = null;
                                 loop9:
                                 while(true)
                                 {
                                    this.m_prismatic2 = null;
                                    while(true)
                                    {
                                       this.m_ground1 = param1.joint1.§["H§();
                                       while(true)
                                       {
                                          §3"X§ = param1.joint1.§]!s§();
                                          loop12:
                                          for(; _loc7_ || this; if(_loc6_ && _loc3_)
                                          {
                                             continue;
                                          },§§goto(addr340))
                                          {
                                             §§push(_loc2_);
                                             loop13:
                                             while(true)
                                             {
                                                if(§§pop() == b2Joint.e_revoluteJoint)
                                                {
                                                   continue loop9;
                                                }
                                                this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                                                while(true)
                                                {
                                                   §§push(this.m_groundAnchor1);
                                                   if(!_loc6_)
                                                   {
                                                      §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(this.m_localAnchor1);
                                                         if(_loc7_ || param1)
                                                         {
                                                            §§pop().SetV(this.m_prismatic1.m_localAnchor2);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(this.m_prismatic1.§-"<§());
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           addr303:
                                                                           if(!(_loc7_ || _loc3_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           §§push(this.m_groundAnchor2);
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              §§pop().SetV(this.m_prismatic2.m_localAnchor1);
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    §§push(this.m_localAnchor2);
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       §§pop().SetV(this.m_prismatic2.m_localAnchor2);
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.m_prismatic2.§-"<§());
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(_loc6_ && param1)
                                                                                             {
                                                                                                while(_loc7_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                continue loop18;
                                                                                             }
                                                                                             addr218:
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(!(_loc7_ || _loc2_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                _loc5_ = §§pop();
                                                                                                continue loop15;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                loop27:
                                                                                                while(true)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§4"E§ = param1.§#9§;
                                                                                                      loop29:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§push(this.§4"E§);
                                                                                                                     if(_loc7_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc5_);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                                  §§pop().§ o§ = §§pop();
                                                                                                                  while(_loc7_)
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        this.§2!_§ = 0;
                                                                                                                        if(!(_loc6_ && this))
                                                                                                                        {
                                                                                                                           if(_loc7_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 continue loop27;
                                                                                                                              }
                                                                                                                              continue loop25;
                                                                                                                           }
                                                                                                                           continue loop29;
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     addr301:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           continue loop16;
                                                                                                                        }
                                                                                                                        §§goto(addr303);
                                                                                                                     }
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               return;
                                                                                                               addr163:
                                                                                                               addr203:
                                                                                                            }
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         addr331:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            addr399:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §5!§ = param1.joint2.§]!s§();
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr455:
                                                                                                      addr244:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr393:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.m_ground2 = param1.joint2.§["H§();
                                                                                                            §§goto(addr399);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr218);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          §§goto(addr455);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().SetV(this.m_revolute2.m_localAnchor2);
                                                                                       }
                                                                                       addr327:
                                                                                    }
                                                                                    §§goto(addr331);
                                                                                 }
                                                                                 §§goto(addr385);
                                                                              }
                                                                           }
                                                                           §§goto(addr344);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr453);
                                                                     }
                                                                     §§goto(addr393);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr459);
                                                         }
                                                         §§goto(addr453);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr467);
                                                   }
                                                   §§goto(addr459);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr203);
                     }
                  }
               }
            }
         }
         while(true)
         {
            super(param1);
            if(_loc7_ || this)
            {
               §§goto(addr40);
            }
            §§goto(addr54);
         }
         §§goto(addr94);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3"X.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::5!.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§2!_§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  addr52:
                  §§push(this.§9W§.§7"M§.x);
                  if(!(_loc3_ && _loc2_))
                  {
                     addr64:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_)
                     {
                        addr67:
                        §§push(this.§2!_§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc2_)
                           {
                              addr78:
                              §§push(§§pop() * this.§9W§.§7"M§.y);
                           }
                           return new §§pop().b2Vec2(§§pop(),§§pop());
                        }
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr78);
               }
               §§goto(addr64);
            }
            §§goto(addr67);
         }
         §§goto(addr52);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Mat22 = b2internal::5!.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc8_)
         {
            §§push(§§pop() - b2internal::5!.m_sweep.localCenter.x);
            if(!(_loc9_ && param1))
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc9_)
            {
               §§push(§§pop() - b2internal::5!.m_sweep.localCenter.y);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc8_ || this)
            {
               §§push(_loc3_);
               if(_loc8_ || _loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc8_)
                  {
                     addr75:
                     §§push(_loc2_.col2.x);
                     if(!(_loc9_ && _loc2_))
                     {
                        addr87:
                        §§push(§§pop() + §§pop() * _loc4_);
                        if(_loc8_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr87);
                  }
                  var _loc5_:* = §§pop();
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(_loc2_.col1.y);
                     if(_loc8_)
                     {
                        §§push(_loc3_);
                        if(_loc8_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc9_)
                           {
                              §§push(_loc2_.col2.y);
                              if(!_loc9_)
                              {
                                 addr115:
                                 §§push(§§pop() * _loc4_);
                                 if(_loc8_)
                                 {
                                    addr129:
                                    §§push(§§pop() + §§pop());
                                    if(_loc8_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc8_)
                                       {
                                          _loc4_ = §§pop();
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§push(_loc5_);
                                             if(_loc8_ || param1)
                                             {
                                             }
                                             addr164:
                                             §§push(§§pop() * this.§9W§.§7"M§.x);
                                             if(_loc8_)
                                             {
                                                addr172:
                                                var _loc6_:Number = §§pop();
                                                §§push(this.§2!_§);
                                                if(_loc8_ || this)
                                                {
                                                   §§push(§§pop() * this.§9W§.§7"M§.y);
                                                   if(_loc8_)
                                                   {
                                                      addr189:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc7_:* = §§pop();
                                                   §§push(param1);
                                                   if(_loc8_ || this)
                                                   {
                                                      §§push(this.§2!_§);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(this.§9W§.§;!M§);
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc8_)
                                                               {
                                                                  addr219:
                                                                  §§push(_loc7_);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        §§goto(addr240);
                                                                     }
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                               §§goto(addr240);
                                                            }
                                                            §§goto(addr248);
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   addr240:
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      addr248:
                                                      §§push(_loc4_);
                                                      if(!(_loc9_ && this))
                                                      {
                                                         addr256:
                                                         §§push(§§pop() * _loc6_);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   return §§pop() * §§pop();
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr172);
                                          }
                                          addr155:
                                          §§push(this.§2!_§);
                                          if(_loc8_ || this)
                                          {
                                             §§goto(addr164);
                                          }
                                          §§goto(addr172);
                                       }
                                       §§push(Number(§§pop()));
                                       if(_loc8_)
                                       {
                                          _loc3_ = §§pop();
                                          §§goto(addr155);
                                       }
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr155);
               }
               §§goto(addr87);
            }
            §§goto(addr75);
         }
         §§goto(addr38);
      }
      
      public function §'!;§() : Number
      {
         return this.§4"E§;
      }
      
      public function §]!9§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§4"E§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc4_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::3"X;
         var _loc5_:b2Body = b2internal::5!;
         §§push(0);
         if(_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(!(_loc15_ && this))
         {
            §§push(this.§9W§);
            loop0:
            while(true)
            {
               §§pop().§%y§();
               if(!_loc15_)
               {
                  while(true)
                  {
                     if(!this.m_revolute1)
                     {
                        §§push(_loc2_.m_xf);
                        if(_loc16_)
                        {
                           §§push(§§pop().R);
                           if(_loc16_)
                           {
                              _loc10_ = §§pop();
                              _loc11_ = this.m_prismatic1.§2!L§;
                              if(_loc16_ || _loc2_)
                              {
                                 §§push(_loc10_.col1);
                                 if(!(_loc15_ && _loc3_))
                                 {
                                    §§push(§§pop().x);
                                    if(_loc16_ || _loc2_)
                                    {
                                       §§push(_loc11_.x);
                                       if(_loc16_ || _loc2_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc15_)
                                          {
                                             addr173:
                                             §§push(_loc10_.col2);
                                             if(!_loc15_)
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc15_)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(_loc16_ || _loc2_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc15_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc15_ && _loc2_))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc15_ && _loc3_))
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(_loc16_ || this)
                                                               {
                                                                  addr218:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(_loc15_)
                                                                  {
                                                                  }
                                                                  addr255:
                                                                  _loc7_ = §§pop();
                                                                  addr256:
                                                                  _loc10_ = _loc4_.m_xf.R;
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(this.m_localAnchor1);
                                                                     loop74:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc16_)
                                                                        {
                                                                           §§push(_loc4_.m_sweep);
                                                                           loop75:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().localCenter);
                                                                              addr603:
                                                                              addr571:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr604:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    addr605:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                              }
                                                                              loop81:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_.m_sweep);
                                                                                 if(_loc15_ && this)
                                                                                 {
                                                                                    continue loop75;
                                                                                 }
                                                                                 §§push(§§pop().localCenter);
                                                                                 if(!(_loc16_ || _loc3_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop().y);
                                                                                 loop82:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       loop83:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop84:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc9_ = §§pop();
                                                                                             loop85:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc10_.col1);
                                                                                                loop86:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   loop87:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         loop88:
                                                                                                         while(_loc16_)
                                                                                                         {
                                                                                                            §§push(_loc10_.col2);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               loop98:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc10_.col2);
                                                                                                                  if(_loc15_ && _loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(!(_loc15_ && param1))
                                                                                                                  {
                                                                                                                     §§push(_loc9_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr307:
                                                                                                                        if(!(_loc16_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc16_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr325:
                                                                                                                              §§push(§§pop() * _loc12_);
                                                                                                                           }
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              if(_loc16_)
                                                                                                                              {
                                                                                                                                 addr332:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       addr340:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       if(_loc16_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                addr351:
                                                                                                                                                if(_loc16_ || this)
                                                                                                                                                {
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      continue loop88;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc16_ || this))
                                                                                                                                                   {
                                                                                                                                                      continue loop87;
                                                                                                                                                   }
                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      addr370:
                                                                                                                                                      if(!(_loc15_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr377:
                                                                                                                                                         if(!(_loc15_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               loop112:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§9W§);
                                                                                                                                                                  if(_loc16_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr552:
                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§,"N§ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                        if(!(_loc15_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc4_.§-@§);
                                                                                                                                                                           if(_loc16_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr470:
                                                                                                                                                                              if(!(_loc15_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr518:
                                                                                                                                                                                 if(_loc16_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_.§,H§);
                                                                                                                                                                                       if(!(_loc15_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr307);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr325);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(!(_loc15_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       continue loop98;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop82;
                                                                                                                                                                                    addr490:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    addr517:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(_loc16_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop82;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    while(_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                                                                       break loop112;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                                                                       continue loop74;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    addr563:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc13_ = §§pop();
                                                                                                                                                                                       continue loop86;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr518);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr518:
                                                                                                                                                                                 addr562:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 addr471:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    addr472:
                                                                                                                                                                                    addr489:
                                                                                                                                                                                    while(!_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                                                                       loop109:
                                                                                                                                                                                       for(; _loc16_ || _loc3_; while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc15_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop112;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop109;
                                                                                                                                                                                          §§goto(addr370);
                                                                                                                                                                                       },continue loop86)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§9W§);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().§`5§);
                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                             if(_loc16_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().Set(§§pop(),§§pop());
                                                                                                                                                                                             continue loop109;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop85;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr490);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr470:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr332);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr340);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                        addr553:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           continue loop82;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr401:
                                                                                                                                                                     addr552:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr405);
                                                                                                                                                                  §§goto(addr377);
                                                                                                                                                               }
                                                                                                                                                               while(_loc16_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                       if(!(_loc15_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr458:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          while(_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc15_ && _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop84;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                addr469:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr470);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr518);
                                                                                                                                                                                          addr458:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr468);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr563);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr471);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr470);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr528);
                                                                                                                                                                           §§goto(addr351);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop98;
                                                                                                                                                                        addr437:
                                                                                                                                                                     }
                                                                                                                                                                     continue loop81;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr458);
                                                                                                                                                                  §§goto(addr377);
                                                                                                                                                               }
                                                                                                                                                               continue loop74;
                                                                                                                                                               addr531:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr608);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr531);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr420);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr401);
                                                                                                                                                }
                                                                                                                                                §§goto(addr437);
                                                                                                                                             }
                                                                                                                                             §§goto(addr458);
                                                                                                                                          }
                                                                                                                                          §§goto(addr471);
                                                                                                                                       }
                                                                                                                                       §§goto(addr472);
                                                                                                                                    }
                                                                                                                                    §§goto(addr552);
                                                                                                                                 }
                                                                                                                                 §§goto(addr468);
                                                                                                                              }
                                                                                                                              §§goto(addr553);
                                                                                                                           }
                                                                                                                           §§goto(addr469);
                                                                                                                        }
                                                                                                                        §§goto(addr325);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr517);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop83;
                                                                                                      }
                                                                                                      §§goto(addr552);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr604);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr605);
                                                                              }
                                                                              §§goto(addr603);
                                                                           }
                                                                        }
                                                                        §§goto(addr606);
                                                                     }
                                                                  }
                                                                  §§goto(addr564);
                                                                  addr254:
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                         }
                                                         §§push(_loc11_.x);
                                                         if(_loc16_ || this)
                                                         {
                                                            addr230:
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc15_ && _loc2_))
                                                            {
                                                               addr240:
                                                               §§push(_loc10_.col2.y);
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  addr248:
                                                                  §§push(§§pop() * _loc11_.y);
                                                               }
                                                            }
                                                            §§goto(addr254);
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc15_)
                                                      {
                                                         §§goto(addr256);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   §§goto(addr248);
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr240);
                                          }
                                          §§goto(addr255);
                                       }
                                       §§goto(addr248);
                                    }
                                    §§goto(addr173);
                                 }
                              }
                              §§goto(addr218);
                           }
                           addr681:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§2!L§;
                           if(!_loc15_)
                           {
                              §§push(_loc10_.col1);
                              if(_loc16_)
                              {
                                 §§push(§§pop().x);
                                 if(!_loc15_)
                                 {
                                    §§push(_loc11_.x);
                                    if(!_loc15_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc16_)
                                       {
                                          addr704:
                                          §§push(_loc10_.col2);
                                          if(_loc16_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc16_)
                                             {
                                                §§push(_loc11_.y);
                                                if(_loc16_ || param1)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc15_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc15_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc16_ || _loc3_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(_loc16_ || _loc3_)
                                                            {
                                                               addr744:
                                                               §§push(_loc10_.col1.y);
                                                               if(!(_loc15_ && param1))
                                                               {
                                                                  addr752:
                                                                  §§push(_loc11_.x);
                                                                  if(!(_loc15_ && param1))
                                                                  {
                                                                     addr761:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc16_)
                                                                     {
                                                                        addr766:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(_loc15_ && _loc3_)
                                                                        {
                                                                        }
                                                                        addr777:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc16_)
                                                                        {
                                                                           addr781:
                                                                           _loc7_ = §§pop();
                                                                           _loc10_ = _loc5_.m_xf.R;
                                                                           if(!(_loc15_ && _loc2_))
                                                                           {
                                                                              §§push(this.m_localAnchor2);
                                                                              loop2:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr1215:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.m_sweep);
                                                                                    addr1217:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       addr1218:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr1219:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr1220:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr1221:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   continue loop2;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1152);
                                                                           addr780:
                                                                        }
                                                                     }
                                                                     §§goto(addr781);
                                                                  }
                                                                  addr776:
                                                                  §§goto(addr777);
                                                                  §§push(§§pop() * _loc11_.y);
                                                               }
                                                            }
                                                            §§goto(addr781);
                                                         }
                                                      }
                                                      §§goto(addr780);
                                                   }
                                                   §§goto(addr761);
                                                }
                                                §§goto(addr776);
                                             }
                                             §§goto(addr777);
                                          }
                                          §§goto(addr766);
                                       }
                                       §§goto(addr752);
                                    }
                                    §§goto(addr766);
                                 }
                                 §§goto(addr704);
                              }
                              §§goto(addr744);
                           }
                           §§goto(addr781);
                        }
                        break;
                     }
                     if(!_loc15_)
                     {
                        §§push(this.§9W§);
                        if(_loc16_)
                        {
                           if(_loc15_)
                           {
                              continue loop0;
                           }
                           §§pop().§,"N§ = -1;
                           if(_loc16_)
                           {
                              §§push(_loc14_);
                              if(!(_loc15_ && param1))
                              {
                                 §§push(_loc4_.§,H§);
                                 if(_loc16_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc15_ && _loc3_))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc16_)
                                       {
                                          addr89:
                                          _loc14_ = §§pop();
                                          if(!(_loc15_ && _loc3_))
                                          {
                                             if(false)
                                             {
                                                continue;
                                             }
                                             addr608:
                                             if(!this.m_revolute2)
                                             {
                                                §§push(_loc3_.m_xf);
                                                break;
                                             }
                                             if(!(_loc15_ && _loc2_))
                                             {
                                                break loop0;
                                             }
                                             loop73:
                                             while(true)
                                             {
                                                §§push(_loc5_.§"!_§);
                                                loop48:
                                                while(true)
                                                {
                                                   §§push(_loc5_.§"!_§);
                                                   addr1426:
                                                   loop49:
                                                   while(_loc16_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc16_)
                                                      {
                                                         §§push(_loc5_.§-@§);
                                                         loop50:
                                                         while(true)
                                                         {
                                                            §§push(this.§2!_§);
                                                            addr1435:
                                                            loop51:
                                                            while(!(_loc15_ && _loc3_))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               while(true)
                                                               {
                                                                  §§push(this.§9W§);
                                                                  addr1445:
                                                                  loop53:
                                                                  while(_loc16_)
                                                                  {
                                                                     §§push(§§pop().§7"M§);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr1449:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           addr1450:
                                                                           while(!(_loc15_ && this))
                                                                           {
                                                                              if(!_loc15_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 while(_loc16_)
                                                                                 {
                                                                                    if(!(_loc15_ && this))
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       continue loop48;
                                                                                    }
                                                                                    addr1615:
                                                                                    loop72:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       addr1616:
                                                                                       while(true)
                                                                                       {
                                                                                          addr1520:
                                                                                          §§push(_loc4_.§"!_§);
                                                                                          if(_loc16_ || _loc3_)
                                                                                          {
                                                                                             §§push(_loc4_.§"!_§);
                                                                                             break loop49;
                                                                                          }
                                                                                          addr1594:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_.§"!_§);
                                                                                             addr1596:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr1597:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_.§-@§);
                                                                                                   if(!(_loc15_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(this.§2!_§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                      }
                                                                                                      addr1608:
                                                                                                   }
                                                                                                   addr1609:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§9W§);
                                                                                                      break loop53;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop72;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr1575:
                                                                                 §§pop().y = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    §§push(_loc4_.m_angularVelocity);
                                                                                    if(_loc16_ || _loc3_)
                                                                                    {
                                                                                       §§push(_loc4_.§,H§);
                                                                                       if(_loc16_ || param1)
                                                                                       {
                                                                                          §§push(this.§2!_§);
                                                                                          if(!(_loc15_ && this))
                                                                                          {
                                                                                             addr1507:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                §§push(this.§9W§.§,"N§);
                                                                                             }
                                                                                             §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc16_ || _loc2_)
                                                                                                {
                                                                                                   continue loop73;
                                                                                                }
                                                                                                §§goto(addr1616);
                                                                                             }
                                                                                             addr1509:
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1507);
                                                                                    §§goto(addr1575);
                                                                                 }
                                                                                 addr1460:
                                                                                 addr1576:
                                                                              }
                                                                              §§push(this.§9W§.§`5§);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 break loop51;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr1613:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr1614:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr1615);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr1574:
                                                                           §§goto(addr1575);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr1400:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr1612);
                                                                  }
                                                                  addr1400:
                                                                  if(_loc15_ && _loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc15_)
                                                                  {
                                                                     continue loop50;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc16_ || _loc3_)
                                                                  {
                                                                     §§pop().y = §§pop();
                                                                     loop59:
                                                                     for(; _loc16_; while(_loc15_ && _loc2_)
                                                                     {
                                                                        continue loop59;
                                                                     },return)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           §§push(_loc5_.m_angularVelocity);
                                                                           if(_loc16_ || _loc3_)
                                                                           {
                                                                              §§push(_loc5_.§,H§);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 §§push(this.§2!_§);
                                                                                 if(!(_loc15_ && param1))
                                                                                 {
                                                                                    addr1312:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§push(this.§9W§.§;!M§);
                                                                                    }
                                                                                    §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                    continue loop59;
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                           }
                                                                           §§goto(addr1312);
                                                                        }
                                                                     }
                                                                     continue loop48;
                                                                  }
                                                                  §§goto(addr1597);
                                                               }
                                                            }
                                                            addr1573:
                                                            §§goto(addr1574);
                                                         }
                                                         addr1433:
                                                      }
                                                      §§goto(addr1460);
                                                   }
                                                   if(_loc16_ || _loc3_)
                                                   {
                                                      addr1537:
                                                      §§push(§§pop().y);
                                                      §§push(_loc4_.§-@§);
                                                      if(!(_loc15_ && _loc2_))
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               §§push(this.§2!_§);
                                                               if(_loc16_ || this)
                                                               {
                                                                  if(!(_loc15_ && param1))
                                                                  {
                                                                     §§goto(addr1567);
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§goto(addr1613);
                                                               }
                                                               §§goto(addr1573);
                                                            }
                                                            §§goto(addr1609);
                                                         }
                                                         §§goto(addr1614);
                                                      }
                                                      §§goto(addr1574);
                                                   }
                                                   §§goto(addr1596);
                                                }
                                             }
                                          }
                                          break loop0;
                                       }
                                    }
                                    addr641:
                                    §§push(this.§4"E§);
                                    if(!(_loc15_ && param1))
                                    {
                                       §§push(this.§4"E§);
                                       if(!_loc15_)
                                       {
                                          addr674:
                                          §§push(§§pop() * §§pop());
                                          if(_loc16_ || _loc3_)
                                          {
                                             addr664:
                                             §§push(§§pop() * _loc5_.§,H§);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc15_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc14_ = §§pop();
                                          if(!_loc15_)
                                          {
                                             addr1223:
                                             §§push(this);
                                             if(_loc16_)
                                             {
                                                §§push(_loc14_);
                                                if(!_loc15_)
                                                {
                                                   if(§§pop() > 0)
                                                   {
                                                      addr1232:
                                                      §§push(1 / _loc14_);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc16_ || _loc2_))
                                                         {
                                                            addr1249:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         else
                                                         {
                                                            addr1245:
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                      if(_loc16_)
                                                      {
                                                         §§goto(addr1249);
                                                      }
                                                   }
                                                   §§pop().§,!v§ = §§pop();
                                                   if(_loc16_ || param1)
                                                   {
                                                      if(param1.§@I§)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            addr1592:
                                                            §§goto(addr1594);
                                                            §§push(_loc4_.§"!_§);
                                                         }
                                                         §§goto(addr1616);
                                                      }
                                                      else
                                                      {
                                                         this.§2!_§ = 0;
                                                         if(!_loc15_)
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               if(!(_loc16_ || _loc2_))
                                                               {
                                                                  §§goto(addr1576);
                                                               }
                                                               else
                                                               {
                                                                  addr1280:
                                                               }
                                                               §§goto(addr1259);
                                                            }
                                                            §§goto(addr1509);
                                                         }
                                                      }
                                                      §§goto(addr1314);
                                                   }
                                                   §§goto(addr1420);
                                                }
                                                §§goto(addr1245);
                                             }
                                             §§goto(addr1232);
                                          }
                                          §§goto(addr1592);
                                       }
                                       §§goto(addr664);
                                    }
                                 }
                                 §§goto(addr664);
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr1280);
                        }
                        addr620:
                        §§push(this.§4"E§);
                        if(_loc16_ || _loc2_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§;!M§ = §§pop();
                        if(_loc16_)
                        {
                           addr633:
                           §§push(_loc14_);
                           if(!(_loc15_ && _loc3_))
                           {
                              §§goto(addr641);
                           }
                           §§goto(addr674);
                        }
                        §§goto(addr1470);
                     }
                     §§goto(addr633);
                     §§goto(addr1223);
                  }
                  §§goto(addr681);
                  §§push(§§pop().R);
               }
               break;
            }
            §§goto(addr620);
            §§push(this.§9W§);
         }
         §§goto(addr1321);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = b2internal::3"X;
         var _loc3_:b2Body = b2internal::5!;
         §§push(this.§9W§.§5!m§(_loc2_.§"!_§,_loc2_.m_angularVelocity,_loc3_.§"!_§,_loc3_.m_angularVelocity));
         if(_loc7_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§,!v§);
         if(_loc7_ || this)
         {
            §§push(-§§pop());
            if(_loc7_)
            {
               §§push(§§pop() * _loc4_);
               if(_loc7_ || _loc2_)
               {
                  addr64:
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               §§push(this);
               §§push(this.§2!_§);
               if(_loc7_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§2!_§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(_loc2_.§"!_§);
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_.§"!_§);
                     addr400:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr401:
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_.§-@§);
                           loop4:
                           while(true)
                           {
                              §§push(_loc5_);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc6_)
                                 {
                                    §§push(this.§9W§);
                                    while(true)
                                    {
                                       §§push(§§pop().§`5§);
                                       addr410:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr411:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                    }
                                    addr409:
                                 }
                                 addr412:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop10:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       loop11:
                                       while(true)
                                       {
                                          §§push(_loc2_.§"!_§);
                                          addr364:
                                          while(true)
                                          {
                                             §§push(_loc2_.§"!_§);
                                             addr366:
                                             while(true)
                                             {
                                                §§push(§§pop().y);
                                                addr367:
                                                while(!_loc6_)
                                                {
                                                   §§push(_loc2_.§-@§);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr372:
                                                      while(!_loc6_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(this.§9W§);
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§`5§);
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop().y);
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           §§push(_loc2_.m_angularVelocity);
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              §§push(_loc2_.§,H§);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr352:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr350:
                                                                                       §§push(§§pop() * this.§9W§.§,"N§);
                                                                                    }
                                                                                    §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                    while(_loc7_ || param1)
                                                                                    {
                                                                                       §§push(_loc3_.§"!_§);
                                                                                       continue loop1;
                                                                                       addr235:
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             §§push(_loc3_.m_angularVelocity);
                                                                                             if(_loc7_ || this)
                                                                                             {
                                                                                                §§push(_loc3_.§,H§);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      addr104:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         addr102:
                                                                                                         §§push(§§pop() * this.§9W§.§;!M§);
                                                                                                      }
                                                                                                      §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      while(_loc7_)
                                                                                                      {
                                                                                                         §§goto(addr235);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc7_ || param1)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      loop28:
                                                                                                      for(; _loc7_; if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      })
                                                                                                      {
                                                                                                         §§push(this.§9W§);
                                                                                                         while(!_loc6_)
                                                                                                         {
                                                                                                            §§push(§§pop().§7"M§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               addr285:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr286:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc7_ || this)
                                                                                                                     {
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(this.§9W§);
                                                                                                            if(_loc6_ && param1)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            §§push(§§pop().§7"M§);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr214:
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc6_ && _loc2_)
                                                                                                               {
                                                                                                                  addr272:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  continue loop5;
                                                                                                                  addr272:
                                                                                                               }
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr225:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc7_ || this))
                                                                                                                  {
                                                                                                                     addr301:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        if(_loc6_ && this)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        §§goto(addr225);
                                                                                                                     }
                                                                                                                     continue loop3;
                                                                                                                     addr301:
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  §§goto(addr233);
                                                                                                                  §§goto(addr311);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr284);
                                                                                                            }
                                                                                                            §§goto(addr286);
                                                                                                         }
                                                                                                         §§goto(addr409);
                                                                                                      }
                                                                                                      addr233:
                                                                                                      addr311:
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr102);
                                                                                             }
                                                                                             §§goto(addr104);
                                                                                          }
                                                                                          return;
                                                                                          addr242:
                                                                                       }
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                              }
                                                                              §§goto(addr350);
                                                                           }
                                                                           §§goto(addr352);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr410);
                                                         }
                                                      }
                                                      §§goto(addr411);
                                                      if(_loc6_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                }
                                                continue loop10;
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
            §§goto(addr242);
         }
         §§goto(addr64);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::3"X;
         var _loc4_:b2Body = b2internal::5!;
         if(_loc9_ || _loc2_)
         {
            §§push(this.m_revolute1);
            if(!_loc10_)
            {
               if(!§§pop())
               {
                  §§push(this.m_prismatic1.§-"<§());
                  if(_loc9_ || this)
                  {
                     §§push(Number(§§pop()));
                     loop0:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop1:
                        while(true)
                        {
                           addr74:
                           loop2:
                           while(true)
                           {
                              §§push(this.m_revolute2);
                              if(_loc9_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    addr85:
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       addr94:
                                       §§push(this.m_revolute2.§6""§());
                                       if(!(_loc10_ && this))
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             if(!(_loc10_ && _loc2_))
                                             {
                                                _loc6_ = §§pop();
                                                addr118:
                                                if(!(_loc9_ || this))
                                                {
                                                   continue loop1;
                                                }
                                                if(!_loc10_)
                                                {
                                                   addr157:
                                                   §§push(this.§ o§);
                                                   if(_loc9_ || param1)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         §§push(this.§4"E§);
                                                         if(_loc9_)
                                                         {
                                                            §§push(§§pop() * _loc6_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      addr185:
                                                      var _loc7_:* = §§pop();
                                                      §§push(this.§,!v§);
                                                      if(_loc9_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(!_loc10_)
                                                         {
                                                            §§push(§§pop() * _loc7_);
                                                            if(!(_loc10_ && this))
                                                            {
                                                               addr202:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc8_:* = §§pop();
                                                            if(_loc9_)
                                                            {
                                                               §§push(_loc3_.m_sweep);
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().c);
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_.m_sweep);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().c);
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.§-@§);
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§9W§);
                                                                                       loop11:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§`5§);
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             loop13:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                loop14:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   loop15:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      loop16:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_.m_sweep);
                                                                                                         loop17:
                                                                                                         for(; _loc9_; while(_loc9_ || this)
                                                                                                         {
                                                                                                            §§goto(addr465);
                                                                                                            §§push(§§pop().c);
                                                                                                            §§goto(addr256);
                                                                                                         })
                                                                                                         {
                                                                                                            §§push(§§pop().c);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_.m_sweep);
                                                                                                               addr569:
                                                                                                               addr465:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().c);
                                                                                                                  addr570:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     addr571:
                                                                                                                     while(!_loc10_)
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        §§push(_loc3_.§-@§);
                                                                                                                        if(!(_loc10_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              addr588:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§9W§);
                                                                                                                                 addr590:
                                                                                                                                 while(_loc9_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§`5§);
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                 }
                                                                                                                                 continue loop11;
                                                                                                                              }
                                                                                                                              addr588:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr612:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 addr613:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    addr614:
                                                                                                                                    loop25:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_.m_sweep);
                                                                                                                                       addr533:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.m_sweep);
                                                                                                                                          addr535:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().a);
                                                                                                                                             addr536:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_.§,H§);
                                                                                                                                                addr538:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   if(_loc9_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§9W§);
                                                                                                                                                         addr549:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().§,"N§);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr547:
                                                                                                                                                   }
                                                                                                                                                   addr550:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr551:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         addr552:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().a = §§pop();
                                                                                                                                                            addr553:
                                                                                                                                                            while(!(_loc10_ && this))
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_.m_sweep);
                                                                                                                                                                  continue loop17;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop25;
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
                                                                                                                           addr611:
                                                                                                                        }
                                                                                                                        §§goto(addr588);
                                                                                                                     }
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                               }
                                                                                                               loop40:
                                                                                                               while(!(_loc10_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(_loc4_.m_sweep);
                                                                                                                  loop41:
                                                                                                                  while(!(_loc10_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     §§push(§§pop().c);
                                                                                                                     loop42:
                                                                                                                     while(_loc9_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        loop43:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc4_.§-@§);
                                                                                                                           loop44:
                                                                                                                           while(_loc9_ || this)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop10;
                                                                                                                              }
                                                                                                                              §§push(_loc8_);
                                                                                                                              loop45:
                                                                                                                              while(!_loc10_)
                                                                                                                              {
                                                                                                                                 if(!(_loc9_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop13;
                                                                                                                                 }
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    continue loop9;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§9W§);
                                                                                                                                    addr513:
                                                                                                                                    while(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§7"M§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          addr517:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             addr518:
                                                                                                                                             while(_loc9_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                loop51:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   loop52:
                                                                                                                                                   while(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                                                                      loop53:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop40;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               continue loop4;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc4_.m_sweep);
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               continue loop41;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               continue loop42;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               continue loop6;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                            if(!(_loc10_ && param1))
                                                                                                                                                            {
                                                                                                                                                               continue loop43;
                                                                                                                                                            }
                                                                                                                                                            addr448:
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               continue loop51;
                                                                                                                                                            }
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            while(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop53;
                                                                                                                                                               §§pop().a = §§pop();
                                                                                                                                                               do
                                                                                                                                                               {
                                                                                                                                                                  _loc3_.§+!q§();
                                                                                                                                                                  do
                                                                                                                                                                  {
                                                                                                                                                                     _loc4_.§+!q§();
                                                                                                                                                                  }
                                                                                                                                                                  while(_loc10_ && this);
                                                                                                                                                                  
                                                                                                                                                               }
                                                                                                                                                               while(_loc10_ && param1);
                                                                                                                                                               
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     return _loc2_ < b2Settings.b2_linearSlop;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop52;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr553);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr533);
                                                                                                                                                      }
                                                                                                                                                      continue loop44;
                                                                                                                                                   }
                                                                                                                                                   continue loop16;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr612);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr408:
                                                                                                                                    §§goto(addr590);
                                                                                                                                    if(!(_loc9_ || param1))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§push(this.§9W§);
                                                                                                                                    if(!(_loc10_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§7"M§);
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          addr428:
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             continue loop45;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc9_ || this))
                                                                                                                                             {
                                                                                                                                                continue loop44;
                                                                                                                                             }
                                                                                                                                             if(!(_loc9_ || _loc2_))
                                                                                                                                             {
                                                                                                                                                continue loop8;
                                                                                                                                             }
                                                                                                                                             §§goto(addr448);
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr518);
                                                                                                                                          }
                                                                                                                                          §§goto(addr614);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr516);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr513);
                                                                                                                                    }
                                                                                                                                    §§goto(addr516);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr611);
                                                                                                                           }
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr570);
                                                                                                                  }
                                                                                                                  §§goto(addr569);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop3;
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
                                                               }
                                                            }
                                                            §§goto(addr560);
                                                         }
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   break;
                                                   addr127:
                                                }
                                                else
                                                {
                                                   addr149:
                                                }
                                                while(true)
                                                {
                                                   §§push(this.m_revolute1);
                                                   addr151:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§6""§());
                                                   }
                                                }
                                                §§goto(addr185);
                                             }
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc10_)
                                                {
                                                   _loc5_ = §§pop();
                                                }
                                                else
                                                {
                                                   §§goto(addr185);
                                                }
                                             }
                                          }
                                          §§goto(addr185);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.m_prismatic2.§-"<§());
                                    if(!(_loc9_ || _loc3_))
                                    {
                                       continue loop0;
                                    }
                                    §§push(Number(§§pop()));
                                    if(!_loc10_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr94);
                           }
                        }
                     }
                  }
                  §§goto(addr185);
                  §§push(Number(§§pop()));
               }
               §§goto(addr149);
            }
            §§goto(addr151);
         }
         §§goto(addr127);
      }
   }
}
