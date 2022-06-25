package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Mat22;
   import §&H§.b2Vec2;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
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
      
      private var § !Q§:b2Jacobian;
      
      private var §-#§:Number;
      
      private var §2z§:Number;
      
      private var §"X§:Number;
      
      private var §&""§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(_loc6_)
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  while(!(_loc7_ && _loc2_))
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     loop3:
                     for(; _loc6_; while(_loc6_ || param1)
                     {
                        super(param1);
                        if(_loc7_ && _loc2_)
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           continue loop0;
                        }
                        §§goto(addr36);
                     })
                     {
                        while(true)
                        {
                           do
                           {
                              this.§ !Q§ = new b2Jacobian();
                              continue loop3;
                           }
                           while(false);
                           
                           §§push(param1.joint1.§3r§);
                           if(!(_loc7_ && param1))
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           §§push(param1.joint2.§3r§);
                           if(!(_loc7_ && param1))
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           if(_loc6_ || this)
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
                                    while(_loc6_)
                                    {
                                       this.m_prismatic2 = null;
                                       loop10:
                                       while(true)
                                       {
                                          this.m_ground1 = param1.joint1.§&,§();
                                          loop11:
                                          while(true)
                                          {
                                             §&A§ = param1.joint1.§<! §();
                                             loop12:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                loop13:
                                                while(true)
                                                {
                                                   if(§§pop() != b2Joint.e_revoluteJoint)
                                                   {
                                                      this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(this.m_groundAnchor1);
                                                         if(!_loc7_)
                                                         {
                                                            §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  §§push(this.m_localAnchor1);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§pop().SetV(this.m_prismatic1.m_localAnchor2);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_prismatic1.§+t§());
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           addr391:
                                                                           while(true)
                                                                           {
                                                                              addr376:
                                                                              while(true)
                                                                              {
                                                                                 this.m_ground2 = param1.joint2.§&,§();
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §4!d§ = param1.joint2.§<! §();
                                                                                    addr359:
                                                                                    addr481:
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc7_ && this))
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             addr473:
                                                                                             while(!_loc7_)
                                                                                             {
                                                                                                this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
                                                                                                break loop21;
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                       continue loop20;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.m_groundAnchor1);
                                                                                       addr461:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().SetV(this.m_revolute1.m_localAnchor1);
                                                                                          addr465:
                                                                                          while(!_loc7_)
                                                                                          {
                                                                                             §§push(this.m_localAnchor1);
                                                                                          }
                                                                                          continue loop10;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr215:
                                                                           if(!(_loc6_ || param1))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr225:
                                                                              _loc5_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    addr233:
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       loop27:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§2z§ = param1.§?!s§;
                                                                                          loop28:
                                                                                          while(!(_loc7_ && this))
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(_loc4_);
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   §§push(this.§2z§);
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§push(§§pop() * _loc5_);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§pop().§-#§ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc6_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr300:
                                                                                                      while(_loc6_)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            §§goto(addr359);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   continue loop28;
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                             addr346:
                                                                                             addr346:
                                                                                             while(true)
                                                                                             {
                                                                                                this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr332);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             §§goto(addr310);
                                                                                             §§push(this.m_localAnchor2);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§goto(addr272);
                                                                              }
                                                                           }
                                                                           §§goto(addr434);
                                                                        }
                                                                     }
                                                                  }
                                                                  loop35:
                                                                  while(true)
                                                                  {
                                                                     §§pop().SetV(this.m_revolute1.m_localAnchor2);
                                                                     addr443:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        §§goto(addr481);
                                                                        continue loop35;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               §§goto(addr465);
                                                            }
                                                         }
                                                         §§goto(addr461);
                                                      }
                                                   }
                                                   §§goto(addr473);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr346);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4!d.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§&""§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(this.§ !Q§.§"S§.x);
                  if(_loc2_)
                  {
                     §§goto(addr59);
                  }
                  §§goto(addr69);
               }
               §§goto(addr59);
            }
            §§goto(addr62);
         }
         addr59:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc3_)
         {
            addr62:
            §§push(this.§&""§);
            if(_loc2_)
            {
               §§goto(addr74);
            }
            §§push(§§pop() * §§pop());
         }
         addr74:
         §§push(§§pop() * §§pop());
         if(_loc2_)
         {
            addr69:
            §§push(this.§ !Q§.§"S§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = b2internal::4!d.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc9_ || _loc2_)
         {
            §§push(§§pop() - b2internal::4!d.m_sweep.localCenter.x);
            if(!(_loc8_ && _loc3_))
            {
               addr44:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!(_loc8_ && _loc2_))
            {
               §§push(§§pop() - b2internal::4!d.m_sweep.localCenter.y);
               if(!_loc8_)
               {
                  addr63:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc2_.col1.x);
               if(!_loc8_)
               {
                  §§push(_loc3_);
                  if(_loc9_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc9_ || _loc3_)
                     {
                        §§push(_loc2_.col2.x);
                        if(!(_loc8_ && _loc3_))
                        {
                           addr93:
                           §§push(§§pop() + §§pop() * _loc4_);
                           if(_loc8_ && this)
                           {
                           }
                           var _loc5_:* = §§pop();
                           if(!_loc8_)
                           {
                              §§push(_loc2_.col1.y);
                              if(!_loc8_)
                              {
                                 §§push(_loc3_);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc9_ || this)
                                    {
                                       §§push(_loc2_.col2.y);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() * _loc4_);
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             addr145:
                                             §§push(§§pop() + §§pop());
                                             if(_loc9_ || _loc3_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc9_)
                                                {
                                                   addr156:
                                                   _loc4_ = §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      addr159:
                                                      §§push(_loc5_);
                                                      if(!_loc8_)
                                                      {
                                                         addr162:
                                                         §§push(Number(§§pop()));
                                                         if(_loc9_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr166:
                                                            §§push(this.§&""§);
                                                            if(!_loc8_)
                                                            {
                                                               addr170:
                                                               §§push(§§pop() * this.§ !Q§.§"S§.x);
                                                               if(_loc9_)
                                                               {
                                                                  addr177:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                         }
                                                         var _loc6_:* = §§pop();
                                                         §§push(this.§&""§);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§pop() * this.§ !Q§.§"S§.y);
                                                            if(_loc9_)
                                                            {
                                                               addr190:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc7_:* = §§pop();
                                                            §§push(param1);
                                                            if(_loc9_ || param1)
                                                            {
                                                               §§push(this.§&""§);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(this.§ !Q§.§5!<§);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc8_ && _loc2_))
                                                                     {
                                                                        addr217:
                                                                        §§push(_loc3_);
                                                                        if(_loc9_)
                                                                        {
                                                                           addr230:
                                                                           §§push(_loc7_);
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc8_ && param1)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr255);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr252);
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            addr255:
                                                            §§push(_loc4_);
                                                            if(!(_loc8_ && _loc2_))
                                                            {
                                                               addr252:
                                                               §§push(§§pop() * _loc6_);
                                                            }
                                                            return §§pop() * (§§pop() + §§pop());
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr170);
                                             }
                                             §§goto(addr162);
                                          }
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr156);
                           }
                           §§goto(addr159);
                        }
                     }
                     §§goto(addr93);
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr63);
         }
         §§goto(addr44);
      }
      
      public function §%!d§() : Number
      {
         return this.§2z§;
      }
      
      public function §0!<§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§2z§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc4_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::&A;
         var _loc5_:b2Body = b2internal::4!d;
         §§push(0);
         if(!_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(!_loc16_)
         {
            §§push(this.§ !Q§);
            loop0:
            while(true)
            {
               §§pop().§+J§();
               if(_loc15_ || _loc3_)
               {
                  while(true)
                  {
                     if(!this.m_revolute1)
                     {
                        §§push(_loc2_.m_xf);
                        if(_loc15_)
                        {
                           §§push(§§pop().R);
                           if(_loc15_)
                           {
                              _loc10_ = §§pop();
                              _loc11_ = this.m_prismatic1.§>!C§;
                              if(_loc15_ || _loc2_)
                              {
                                 §§push(_loc10_.col1);
                                 if(_loc15_ || param1)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc15_ || param1)
                                    {
                                       §§push(_loc11_.x);
                                       if(!(_loc16_ && this))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc16_ && this))
                                          {
                                             addr187:
                                             §§push(_loc10_.col2);
                                             if(_loc15_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc15_ || this)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(!(_loc16_ && param1))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc15_)
                                                      {
                                                         addr211:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc15_ || param1)
                                                         {
                                                            addr219:
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc16_ && _loc2_))
                                                            {
                                                               addr227:
                                                               _loc6_ = §§pop();
                                                               if(_loc15_)
                                                               {
                                                                  addr232:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(_loc11_.x);
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc15_ || _loc3_)
                                                                        {
                                                                           addr249:
                                                                           §§push(_loc10_.col2.y);
                                                                           if(_loc16_)
                                                                           {
                                                                           }
                                                                           addr255:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr259:
                                                                              _loc7_ = §§pop();
                                                                              _loc10_ = _loc4_.m_xf.R;
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push(this.m_localAnchor1);
                                                                                 loop79:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(_loc4_.m_sweep);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().localCenter);
                                                                                          addr592:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr593:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                addr594:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr591:
                                                                                    }
                                                                                    addr595:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       continue loop79;
                                                                                    }
                                                                                 }
                                                                                 addr586:
                                                                              }
                                                                              loop85:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.m_localAnchor1);
                                                                                 if(!(_loc16_ && this))
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    loop86:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_.m_sweep);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          §§push(§§pop().localCenter);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(§§pop().y);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop89:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc9_ = §§pop();
                                                                                                   loop90:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc10_.col1);
                                                                                                      loop91:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr525:
                                                                                                         while(_loc15_ || this)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               addr534:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc10_.col2);
                                                                                                                  addr536:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     addr537:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        addr538:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr539:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              addr540:
                                                                                                                              while(!(_loc16_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 while(!_loc16_)
                                                                                                                                 {
                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          if(_loc16_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          continue loop91;
                                                                                                                                       }
                                                                                                                                       continue loop90;
                                                                                                                                    }
                                                                                                                                    continue loop85;
                                                                                                                                 }
                                                                                                                                 continue loop86;
                                                                                                                              }
                                                                                                                              §§goto(addr594);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop89;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr591);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr592);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr586);
                                                                                 }
                                                                              }
                                                                              addr258:
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        §§goto(addr258);
                                                                     }
                                                                     addr254:
                                                                     §§goto(addr255);
                                                                     §§push(§§pop() * _loc11_.y);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr259);
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   §§goto(addr254);
                                                }
                                                §§goto(addr255);
                                             }
                                             §§goto(addr249);
                                          }
                                          §§goto(addr219);
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr187);
                                 }
                              }
                              §§goto(addr232);
                           }
                           addr680:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§>!C§;
                           if(!(_loc16_ && param1))
                           {
                              §§push(_loc10_.col1);
                              if(!(_loc16_ && this))
                              {
                                 §§push(§§pop().x);
                                 if(!(_loc16_ && _loc2_))
                                 {
                                    §§push(_loc11_.x);
                                    if(!_loc16_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc15_)
                                       {
                                          §§push(_loc10_.col2);
                                          if(_loc15_ || this)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc15_)
                                             {
                                                §§push(_loc11_.y);
                                                if(!_loc16_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc15_)
                                                   {
                                                      addr737:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc16_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc15_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               addr753:
                                                               §§push(_loc10_.col1.y);
                                                               if(_loc15_)
                                                               {
                                                                  addr756:
                                                                  §§push(_loc11_.x);
                                                                  if(!(_loc16_ && param1))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        addr768:
                                                                        addr770:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(!_loc15_)
                                                                        {
                                                                        }
                                                                        addr776:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc15_ || _loc3_)
                                                                        {
                                                                           addr795:
                                                                           _loc7_ = §§pop();
                                                                           _loc10_ = _loc5_.m_xf.R;
                                                                           if(_loc15_ || _loc3_)
                                                                           {
                                                                              §§push(this.m_localAnchor2);
                                                                              loop2:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr1204:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.m_sweep);
                                                                                    addr1206:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       addr1207:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr1208:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr1209:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr1210:
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
                                                                           §§goto(addr1200);
                                                                        }
                                                                     }
                                                                     §§goto(addr795);
                                                                  }
                                                                  §§goto(addr776);
                                                                  §§push(§§pop() * _loc11_.y);
                                                               }
                                                               §§goto(addr768);
                                                            }
                                                            §§goto(addr795);
                                                         }
                                                         §§goto(addr756);
                                                      }
                                                      §§goto(addr795);
                                                   }
                                                   §§goto(addr768);
                                                }
                                                §§goto(addr756);
                                             }
                                             §§goto(addr737);
                                          }
                                          §§goto(addr770);
                                       }
                                       §§goto(addr756);
                                    }
                                    §§goto(addr737);
                                 }
                                 §§goto(addr756);
                              }
                           }
                           §§goto(addr753);
                        }
                        break;
                     }
                     if(_loc15_)
                     {
                        §§push(this.§ !Q§);
                        if(!(_loc16_ && _loc3_))
                        {
                           continue loop0;
                        }
                        addr609:
                        §§push(this.§2z§);
                        if(!(_loc16_ && this))
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§5!<§ = §§pop();
                        if(!(_loc16_ && this))
                        {
                           §§push(_loc14_);
                           if(_loc15_ || _loc3_)
                           {
                              addr635:
                              §§push(this.§2z§);
                              if(!(_loc16_ && _loc2_))
                              {
                                 §§push(this.§2z§);
                                 if(_loc15_ || param1)
                                 {
                                    addr659:
                                    §§push(§§pop() * §§pop());
                                    if(_loc15_)
                                    {
                                       §§push(_loc5_.§2!1§);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc15_ || this)
                                    {
                                       addr668:
                                       _loc14_ = Number(§§pop());
                                       if(!(_loc16_ && _loc3_))
                                       {
                                          addr1212:
                                          §§push(this);
                                          if(_loc15_ || _loc3_)
                                          {
                                             §§push(_loc14_);
                                             if(!_loc16_)
                                             {
                                                if(§§pop() > 0)
                                                {
                                                   addr1226:
                                                   §§push(1 / _loc14_);
                                                   if(_loc15_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc16_ && _loc2_)
                                                      {
                                                      }
                                                      addr1244:
                                                      §§pop().§"X§ = §§pop();
                                                      if(_loc15_ || _loc3_)
                                                      {
                                                         if(!param1.§9!w§)
                                                         {
                                                            this.§&""§ = 0;
                                                            if(!_loc16_)
                                                            {
                                                               addr1253:
                                                               return;
                                                               addr1265:
                                                            }
                                                            else
                                                            {
                                                               loop44:
                                                               while(true)
                                                               {
                                                                  if(_loc15_)
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     loop45:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(_loc5_.§%!<§);
                                                                           if(_loc15_)
                                                                           {
                                                                              if(!_loc16_)
                                                                              {
                                                                                 if(!(_loc16_ && _loc2_))
                                                                                 {
                                                                                    §§push(_loc5_.§%!<§);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       if(_loc15_ || this)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc15_ || _loc2_)
                                                                                          {
                                                                                             if(_loc15_ || param1)
                                                                                             {
                                                                                                §§push(_loc5_.§3!q§);
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      if(_loc15_ || this)
                                                                                                      {
                                                                                                         §§push(this.§&""§);
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc15_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(this.§ !Q§);
                                                                                                                  if(!(_loc16_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop().§"S§);
                                                                                                                     if(_loc15_ || param1)
                                                                                                                     {
                                                                                                                        addr1389:
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           if(!(_loc16_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc15_ || this)
                                                                                                                              {
                                                                                                                                 addr1406:
                                                                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       while(!_loc15_)
                                                                                                                                       {
                                                                                                                                          loop75:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                addr1532:
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   addr1534:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_.§%!<§);
                                                                                                                                                      addr1418:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_.§%!<§);
                                                                                                                                                         addr1420:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_.§3!q§);
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§&""§);
                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc16_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc16_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc15_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1459:
                                                                                                                                                                                          §§push(this.§ !Q§);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc15_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc16_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1475:
                                                                                                                                                                                                   §§push(§§pop().§"S§);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                      addr1477:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         addr1478:
                                                                                                                                                                                                         loop60:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc16_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               while(_loc16_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop62:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc4_.§3!q§);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§&""§);
                                                                                                                                                                                                                           addr1547:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              addr1548:
                                                                                                                                                                                                                              loop65:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§ !Q§);
                                                                                                                                                                                                                                 addr1550:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().§,!]§);
                                                                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1554:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                                                                          addr1592:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             addr1593:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                addr1594:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                                                                   addr1595:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc4_.§%!<§);
                                                                                                                                                                                                                                                      addr1538:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc4_.§%!<§);
                                                                                                                                                                                                                                                         addr1540:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop62;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1591:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1595);
                                                                                                                                                                                                                                    continue loop65;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1545:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1594);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop45;
                                                                                                                                                                                                               addr1486:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               addr1556:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                  addr1567:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                                                                     §§push(_loc4_.m_angularVelocity);
                                                                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc4_.§2!1§);
                                                                                                                                                                                                                        if(_loc15_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§&""§);
                                                                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1529:
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!(_loc16_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1527:
                                                                                                                                                                                                                                 §§push(§§pop() * this.§ !Q§.§[!p§);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                                                                                                              continue loop75;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1527);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1529);
                                                                                                                                                                                                                     continue loop75;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1532);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop60;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1595);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1475);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1476:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop49:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().§,!]§);
                                                                                                                                                                                                      addr1588:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop49;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1590:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1591);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1550);
                                                                                                                                                                                             §§goto(addr1459);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1461:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1588);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1590);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1548);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1478);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1547);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1477);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§&""§);
                                                                                                                                                                              addr1587:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1585:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1588);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1545);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1478);
                                                                                                                                                               }
                                                                                                                                                               addr1423:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  if(_loc15_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1585);
                                                                                                                                                                     §§push(_loc4_.§3!q§);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr1575:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1594);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr1534:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1595);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1567);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       §§push(_loc5_.m_angularVelocity);
                                                                                                                                       if(!(_loc15_ || param1))
                                                                                                                                       {
                                                                                                                                          continue loop44;
                                                                                                                                       }
                                                                                                                                       §§push(_loc5_.§2!1§);
                                                                                                                                       if(!(_loc16_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(this.§&""§);
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                addr1296:
                                                                                                                                                §§push(§§pop() * this.§ !Q§.§5!<§);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             continue loop44;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1296);
                                                                                                                                       addr1412:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1556);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1423);
                                                                                                                              }
                                                                                                                              §§goto(addr1592);
                                                                                                                           }
                                                                                                                           §§goto(addr1554);
                                                                                                                        }
                                                                                                                        §§goto(addr1477);
                                                                                                                     }
                                                                                                                     §§goto(addr1476);
                                                                                                                  }
                                                                                                                  §§goto(addr1461);
                                                                                                               }
                                                                                                               §§goto(addr1406);
                                                                                                            }
                                                                                                            §§goto(addr1587);
                                                                                                         }
                                                                                                         §§goto(addr1389);
                                                                                                      }
                                                                                                      §§goto(addr1593);
                                                                                                   }
                                                                                                   §§goto(addr1478);
                                                                                                }
                                                                                                §§goto(addr1406);
                                                                                             }
                                                                                             §§goto(addr1486);
                                                                                          }
                                                                                          §§goto(addr1406);
                                                                                       }
                                                                                       §§goto(addr1540);
                                                                                    }
                                                                                    §§goto(addr1420);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr1573:
                                                                                 }
                                                                                 §§goto(addr1575);
                                                                              }
                                                                              §§goto(addr1538);
                                                                           }
                                                                           §§goto(addr1418);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr1571:
                                                                        }
                                                                        §§goto(addr1573);
                                                                     }
                                                                  }
                                                                  §§goto(addr1412);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr1571);
                                                         addr1252:
                                                      }
                                                      §§goto(addr1265);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(_loc15_)
                                                   {
                                                      addr1243:
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§goto(addr1244);
                                             }
                                             §§goto(addr1243);
                                          }
                                          §§goto(addr1226);
                                       }
                                       §§goto(addr1534);
                                    }
                                    §§goto(addr668);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§goto(addr659);
                           }
                           §§goto(addr668);
                        }
                        §§goto(addr1252);
                     }
                     §§goto(addr1567);
                     §§goto(addr1212);
                  }
                  §§goto(addr680);
                  §§push(§§pop().R);
                  addr88:
               }
               break;
            }
            §§goto(addr1253);
         }
         §§goto(addr1595);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = b2internal::&A;
         var _loc3_:b2Body = b2internal::4!d;
         §§push(this.§ !Q§.§]l§(_loc2_.§%!<§,_loc2_.m_angularVelocity,_loc3_.§%!<§,_loc3_.m_angularVelocity));
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§"X§);
         if(_loc6_)
         {
            §§push(-§§pop());
            if(_loc6_ || this)
            {
               addr49:
               §§push(§§pop() * _loc4_);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               §§push(this);
               §§push(this.§&""§);
               if(_loc6_ || _loc2_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§&""§ = §§pop();
            }
            loop0:
            while(true)
            {
               §§push(_loc2_.§%!<§);
               while(true)
               {
                  §§push(_loc2_.§%!<§);
                  addr380:
                  while(true)
                  {
                     §§push(§§pop().x);
                     loop3:
                     while(true)
                     {
                        §§push(_loc2_.§3!q§);
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!(_loc7_ && param1))
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc7_)
                              {
                                 §§push(this.§ !Q§);
                                 while(true)
                                 {
                                    §§push(§§pop().§,!]§);
                                    addr407:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr408:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                       }
                                    }
                                 }
                                 addr406:
                              }
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    while(!_loc7_)
                                    {
                                       §§push(_loc2_.§%!<§);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc2_.§%!<§);
                                          addr338:
                                          while(true)
                                          {
                                             §§push(§§pop().y);
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§push(_loc2_.§3!q§);
                                                if(!_loc7_)
                                                {
                                                   §§push(_loc5_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc6_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§ !Q§);
                                                            addr356:
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop().§,!]§);
                                                                  if(_loc7_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop().y);
                                                                  while(!_loc7_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§goto(addr408);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr406);
                                                               }
                                                            }
                                                            §§goto(addr407);
                                                         }
                                                         addr354:
                                                      }
                                                      addr370:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr371:
                                                         while(!_loc7_)
                                                         {
                                                            §§pop().y = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               §§push(_loc2_.m_angularVelocity);
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  §§push(_loc2_.§2!1§);
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        addr331:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           addr329:
                                                                           §§push(§§pop() * this.§ !Q§.§[!p§);
                                                                        }
                                                                        §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.§%!<§);
                                                                           continue loop10;
                                                                        }
                                                                        addr332:
                                                                     }
                                                                  }
                                                                  §§goto(addr329);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                   addr351:
                                                }
                                                §§goto(addr354);
                                             }
                                             §§goto(addr371);
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr408);
                        }
                     }
                  }
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  §§push(_loc3_.§%!<§);
                  if(!_loc7_)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        §§push(§§pop().y);
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(_loc3_.§3!q§);
                           if(!_loc7_)
                           {
                              §§push(_loc5_);
                              if(_loc6_ || _loc3_)
                              {
                                 if(!_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_)
                                          {
                                             addr163:
                                             if(!_loc7_)
                                             {
                                                §§push(this.§ !Q§);
                                                if(!_loc7_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop().§"S§);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§goto(addr180);
                                                         §§push(§§pop().y);
                                                      }
                                                      §§goto(addr271);
                                                   }
                                                   §§goto(addr356);
                                                }
                                                §§goto(addr270);
                                             }
                                             §§goto(addr261);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr351);
                                    }
                                    §§goto(addr367);
                                 }
                                 §§goto(addr272);
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr380);
                  }
                  §§goto(addr235);
               }
            }
         }
         §§goto(addr49);
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
         var _loc3_:b2Body = b2internal::&A;
         var _loc4_:b2Body = b2internal::4!d;
         if(!(_loc10_ && _loc2_))
         {
            §§push(this.m_revolute1);
            if(!(_loc10_ && this))
            {
               if(!§§pop())
               {
                  §§push(this.m_prismatic1.§+t§());
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
                           if(_loc9_ || this)
                           {
                              if(_loc9_ || _loc2_)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.m_revolute2);
                                    if(!_loc10_)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(this.m_prismatic2.§+t§());
                                          if(!_loc10_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc9_)
                                             {
                                             }
                                             addr170:
                                             var _loc7_:* = §§pop();
                                             §§push(this.§"X§);
                                             if(!(_loc10_ && param1))
                                             {
                                                §§push(-§§pop());
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() * _loc7_);
                                                   if(_loc9_ || param1)
                                                   {
                                                      addr192:
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc8_:* = §§pop();
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc3_.m_sweep);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().c);
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.m_sweep);
                                                         while(true)
                                                         {
                                                            §§push(§§pop().c);
                                                            addr646:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.§3!q§);
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§ !Q§);
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§,!]§);
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_.m_sweep);
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().c);
                                                                                                addr587:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.m_sweep);
                                                                                                   addr589:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().c);
                                                                                                      addr590:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         loop24:
                                                                                                         while(!_loc10_)
                                                                                                         {
                                                                                                            §§push(_loc3_.§3!q§);
                                                                                                            if(_loc9_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               loop25:
                                                                                                               while(_loc9_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  loop26:
                                                                                                                  while(_loc9_ || this)
                                                                                                                  {
                                                                                                                     if(_loc9_ || this)
                                                                                                                     {
                                                                                                                        §§push(this.§ !Q§);
                                                                                                                        loop27:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§,!]§);
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§pop().y);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr446:
                                                                                                                              if(_loc10_ && _loc3_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              addr454:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc10_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(!(_loc10_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr469:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc9_ || this)
                                                                                                                                    {
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       loop56:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             continue loop19;
                                                                                                                                          }
                                                                                                                                          §§push(_loc4_.m_sweep);
                                                                                                                                          if(_loc10_ && param1)
                                                                                                                                          {
                                                                                                                                             continue loop6;
                                                                                                                                          }
                                                                                                                                          addr238:
                                                                                                                                          if(_loc9_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_.m_sweep);
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().a);
                                                                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_.§2!1§);
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(_loc9_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!(_loc10_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§ !Q§);
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        addr298:
                                                                                                                                                                        §§push(§§pop().§5!<§);
                                                                                                                                                                        if(_loc9_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr305:
                                                                                                                                                                           if(_loc9_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr313:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc10_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr331);
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr573);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           addr578:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              addr579:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().a = §§pop();
                                                                                                                                                                                 §§goto(addr580);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr577:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr577);
                                                                                                                                                                     }
                                                                                                                                                                     addr576:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr313);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr298);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr578);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr313);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr563);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr579);
                                                                                                                                                }
                                                                                                                                                addr331:
                                                                                                                                                §§pop().a = §§pop() + §§pop();
                                                                                                                                                do
                                                                                                                                                {
                                                                                                                                                   _loc3_.§@!1§();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_ && _loc2_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      continue loop56;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         addr483:
                                                                                                                                                         §§push(_loc4_.m_sweep);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc10_ && this))
                                                                                                                                                            {
                                                                                                                                                               continue loop20;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr238);
                                                                                                                                                         }
                                                                                                                                                         continue loop20;
                                                                                                                                                         addr483:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr639:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.m_sweep);
                                                                                                                                                         }
                                                                                                                                                         addr639:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_.m_sweep);
                                                                                                                                                         addr562:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().a);
                                                                                                                                                            addr563:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_.§2!1§);
                                                                                                                                                               if(!(_loc10_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     break loop56;
                                                                                                                                                                     §§goto(addr305);
                                                                                                                                                                  }
                                                                                                                                                                  addr573:
                                                                                                                                                               }
                                                                                                                                                               break loop56;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr483);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(_loc10_);
                                                                                                                                                
                                                                                                                                                addr212:
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                                                                      continue loop6;
                                                                                                                                                      §§goto(addr212);
                                                                                                                                                   }
                                                                                                                                                   addr556:
                                                                                                                                                }
                                                                                                                                                return _loc2_ < b2Settings.b2_linearSlop;
                                                                                                                                             }
                                                                                                                                             §§goto(addr562);
                                                                                                                                          }
                                                                                                                                          §§goto(addr483);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr576);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                       }
                                                                                                                                       addr638:
                                                                                                                                    }
                                                                                                                                    §§goto(addr639);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr637:
                                                                                                                                 }
                                                                                                                                 §§goto(addr638);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    loop47:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       loop48:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§ !Q§);
                                                                                                                                          addr533:
                                                                                                                                          while(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc9_ || _loc2_))
                                                                                                                                             {
                                                                                                                                                continue loop14;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop().§"S§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                loop51:
                                                                                                                                                while(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      addr548:
                                                                                                                                                      while(_loc9_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                      }
                                                                                                                                                      addr393:
                                                                                                                                                      continue loop24;
                                                                                                                                                      if(_loc10_ && _loc2_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         continue loop48;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         continue loop26;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(_loc9_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc10_ && this)
                                                                                                                                                            {
                                                                                                                                                               continue loop25;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc9_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop17;
                                                                                                                                                               }
                                                                                                                                                               §§push(this.§ !Q§);
                                                                                                                                                               if(_loc9_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().§"S§);
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr444);
                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr543);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr533);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr454);
                                                                                                                                                            continue loop25;
                                                                                                                                                         }
                                                                                                                                                         continue loop47;
                                                                                                                                                      }
                                                                                                                                                      addr444:
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         continue loop51;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr446);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop16;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr454);
                                                                                                                                 }
                                                                                                                                 addr529:
                                                                                                                              }
                                                                                                                              §§goto(addr556);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            §§goto(addr637);
                                                                                                         }
                                                                                                         continue loop18;
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
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr639);
                                             }
                                             §§goto(addr192);
                                          }
                                          if(_loc9_)
                                          {
                                             if(_loc9_ || param1)
                                             {
                                                if(!_loc9_)
                                                {
                                                   continue loop0;
                                                }
                                                _loc6_ = §§pop();
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   if(_loc9_)
                                                   {
                                                      if(false)
                                                      {
                                                         continue;
                                                      }
                                                      addr147:
                                                      §§push(this.§-#§);
                                                      if(_loc9_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            §§push(this.§2z§);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(§§pop() * _loc6_);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc10_)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr170);
                                                      §§push(Number(§§pop()));
                                                   }
                                                   else
                                                   {
                                                      addr79:
                                                      while(true)
                                                      {
                                                         §§push(this.m_revolute2);
                                                         addr81:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§5M§());
                                                            addr82:
                                                            while(true)
                                                            {
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        break loop2;
                                                                     }
                                                                  }
                                                                  addr90:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  addr144:
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  addr146:
                                                                  while(true)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr79:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      break loop1;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             §§goto(addr82);
                                          }
                                          §§goto(addr90);
                                       }
                                       §§goto(addr79);
                                    }
                                    §§goto(addr81);
                                 }
                                 _loc6_ = §§pop();
                                 §§goto(addr93);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(this.m_revolute1);
                                    addr143:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr141:
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr147);
                     }
                  }
                  §§goto(addr170);
               }
               §§goto(addr141);
            }
            §§goto(addr143);
         }
         §§goto(addr79);
      }
   }
}
