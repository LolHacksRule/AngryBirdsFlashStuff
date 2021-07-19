package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §6!H§.b2Mat22;
   import §6!H§.b2Vec2;
   
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
      
      private var §8A§:b2Jacobian;
      
      private var §7-§:Number;
      
      private var § !K§:Number;
      
      private var §>§:Number;
      
      private var §==§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(_loc6_ || _loc2_)
         {
            this.m_groundAnchor1 = new b2Vec2();
         }
         while(true)
         {
            this.m_groundAnchor2 = new b2Vec2();
            while(!_loc7_)
            {
               this.m_localAnchor1 = new b2Vec2();
               while(_loc6_ || _loc3_)
               {
                  this.m_localAnchor2 = new b2Vec2();
                  loop3:
                  for(; !(_loc7_ && _loc3_); while(!(_loc7_ && _loc3_))
                  {
                     super(param1);
                     if(!_loc6_)
                     {
                        continue;
                     }
                     §§goto(addr34);
                  })
                  {
                     do
                     {
                        this.§8A§ = new b2Jacobian();
                        continue loop3;
                     }
                     while(false);
                     
                     §§push(param1.joint1.§#!&§);
                     if(_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(param1.joint2.§#!&§);
                     if(!_loc7_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc7_ && _loc2_))
                     {
                        this.m_revolute1 = null;
                        loop6:
                        while(true)
                        {
                           this.m_prismatic1 = null;
                           loop7:
                           while(true)
                           {
                              this.m_revolute2 = null;
                              loop8:
                              while(true)
                              {
                                 this.m_prismatic2 = null;
                                 loop9:
                                 while(true)
                                 {
                                    this.m_ground1 = param1.joint1.§3g§();
                                    loop10:
                                    while(true)
                                    {
                                       §6z§ = param1.joint1.§#F§();
                                       loop11:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          loop12:
                                          while(true)
                                          {
                                             if(§§pop() != b2Joint.e_revoluteJoint)
                                             {
                                                this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                                                loop22:
                                                while(!_loc7_)
                                                {
                                                   §§push(this.m_groundAnchor1);
                                                   if(_loc6_ || this)
                                                   {
                                                      §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                                                      loop23:
                                                      while(true)
                                                      {
                                                         §§push(this.m_localAnchor1);
                                                         if(!_loc7_)
                                                         {
                                                            §§pop().SetV(this.m_prismatic1.m_localAnchor2);
                                                            loop24:
                                                            while(_loc6_)
                                                            {
                                                               §§push(this.m_prismatic1.§ !Q§());
                                                               if(_loc6_ || param1)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr395:
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              this.m_ground2 = param1.joint2.§3g§();
                                                                              loop21:
                                                                              while(_loc6_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §3D§ = param1.joint2.§#F§();
                                                                                    loop28:
                                                                                    while(!_loc7_)
                                                                                    {
                                                                                       continue loop12;
                                                                                       addr150:
                                                                                       if(_loc7_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       this.§==§ = 0;
                                                                                       addr157:
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             loop34:
                                                                                             while(!(_loc7_ && this))
                                                                                             {
                                                                                                addr170:
                                                                                                if(_loc6_ || _loc2_)
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(_loc4_);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(this.§ !K§);
                                                                                                      if(!(_loc7_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(§§pop() * _loc5_);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§pop().§7-§ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§goto(addr150);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(!_loc7_)
                                                                                                         {
                                                                                                            if(!(_loc7_ && _loc3_))
                                                                                                            {
                                                                                                               if(_loc6_ || _loc3_)
                                                                                                               {
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               loop32:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.m_localAnchor2);
                                                                                                                  addr313:
                                                                                                                  addr330:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().SetV(this.m_revolute2.m_localAnchor2);
                                                                                                                  }
                                                                                                                  addr330:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().SetV(this.m_revolute2.m_localAnchor1);
                                                                                                                     continue loop32;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc7_ && this)
                                                                                                               {
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               _loc5_ = this.m_revolute2.§?!^§();
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               continue loop24;
                                                                                                            }
                                                                                                            addr355:
                                                                                                            while(_loc6_)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               §§goto(addr330);
                                                                                                               §§push(this.m_groundAnchor2);
                                                                                                            }
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                         addr219:
                                                                                                         addr279:
                                                                                                      }
                                                                                                      §§goto(addr157);
                                                                                                   }
                                                                                                   continue loop28;
                                                                                                   addr148:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr267:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(this.m_localAnchor2);
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§pop().SetV(this.m_prismatic2.m_localAnchor2);
                                                                                                         §§goto(addr219);
                                                                                                      }
                                                                                                      §§goto(addr313);
                                                                                                   }
                                                                                                   §§goto(addr170);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_ || _loc2_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§ !K§ = param1.§[!G§;
                                                                                                         continue loop34;
                                                                                                      }
                                                                                                      addr158:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      addr448:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(!(_loc7_ && param1))
                                                                                             {
                                                                                                §§goto(addr158);
                                                                                                §§goto(addr163);
                                                                                             }
                                                                                             addr163:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.m_revolute1.§?!^§());
                                                                                                if(_loc6_ || _loc2_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                addr447:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   §§goto(addr448);
                                                                                                }
                                                                                             }
                                                                                             addr456:
                                                                                             addr202:
                                                                                          }
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             return;
                                                                                          }
                                                                                          continue loop23;
                                                                                       }
                                                                                       §§goto(addr148);
                                                                                    }
                                                                                    continue loop21;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr483);
                                                                        }
                                                                        addr464:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.m_localAnchor1);
                                                                           addr452:
                                                                           while(true)
                                                                           {
                                                                              §§pop().SetV(this.m_revolute1.m_localAnchor2);
                                                                              §§goto(addr456);
                                                                              continue loop23;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr447);
                                                               }
                                                            }
                                                            continue loop22;
                                                         }
                                                         §§goto(addr452);
                                                      }
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
                                             }
                                             while(true)
                                             {
                                                §§push(this.m_groundAnchor1);
                                             }
                                             addr483:
                                             while(true)
                                             {
                                                §§pop().SetV(this.m_revolute1.m_localAnchor1);
                                                §§goto(addr464);
                                                §§goto(addr434);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr377);
                  }
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::3D.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§==§);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  addr32:
                  §§push(this.§8A§.§!8§.x);
                  if(_loc2_ || param1)
                  {
                     addr54:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!_loc2_)
                     {
                     }
                     addr89:
                     return new §§pop().b2Vec2(§§pop(),§§pop() * this.§8A§.§!8§.y);
                     addr84:
                  }
                  §§push(this.§==§);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc2_ || param1)
                     {
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr89);
               }
            }
            §§goto(addr54);
         }
         §§goto(addr32);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = b2internal::3D.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc9_ || _loc2_)
         {
            §§push(§§pop() - b2internal::3D.m_sweep.localCenter.x);
            if(_loc9_)
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc9_)
            {
               §§push(§§pop() - b2internal::3D.m_sweep.localCenter.y);
               if(!(_loc8_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(!_loc8_)
            {
               §§push(_loc3_);
               if(!(_loc8_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc9_)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc9_)
                     {
                        addr81:
                        §§push(§§pop() * _loc4_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc8_)
                     {
                     }
                     addr87:
                     var _loc5_:* = §§pop();
                     if(!(_loc8_ && _loc3_))
                     {
                        §§push(_loc2_.col1.y);
                        if(_loc9_ || param1)
                        {
                           §§push(_loc3_);
                           if(!_loc8_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc9_ || this)
                              {
                                 addr116:
                                 §§push(_loc2_.col2.y);
                                 if(!(_loc8_ && param1))
                                 {
                                    addr136:
                                    §§push(§§pop() * _loc4_);
                                    if(_loc9_)
                                    {
                                       addr140:
                                       §§push(§§pop() + §§pop());
                                       if(_loc9_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc9_)
                                          {
                                             _loc4_ = §§pop();
                                             if(!_loc8_)
                                             {
                                                addr149:
                                                §§push(_loc5_);
                                                if(!_loc8_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc8_ && this))
                                                   {
                                                      addr160:
                                                      _loc3_ = §§pop();
                                                   }
                                                   addr173:
                                                   var _loc6_:Number = §§pop();
                                                   addr172:
                                                   §§push(this.§==§);
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() * this.§8A§.§!8§.y);
                                                      if(!_loc8_)
                                                      {
                                                         addr185:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc7_:* = §§pop();
                                                      §§push(param1);
                                                      if(_loc9_ || this)
                                                      {
                                                         §§push(this.§==§);
                                                         if(_loc9_)
                                                         {
                                                            §§push(this.§8A§.§>!G§);
                                                            if(!(_loc8_ && this))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc9_ || this)
                                                               {
                                                                  addr217:
                                                                  §§push(_loc3_);
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     addr225:
                                                                     §§push(_loc7_);
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc9_ || _loc2_)
                                                                           {
                                                                              addr259:
                                                                              §§push(_loc4_);
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr264:
                                                                                 §§push(§§pop() + §§pop() * _loc6_);
                                                                              }
                                                                              §§goto(addr264);
                                                                           }
                                                                           §§goto(addr266);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr264);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      addr266:
                                                      return §§pop() * §§pop();
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr172);
                                             }
                                             §§push(this.§==§);
                                             if(!_loc8_)
                                             {
                                                addr169:
                                                §§push(§§pop() * this.§8A§.§!8§.x);
                                                if(!_loc8_)
                                                {
                                                   §§goto(addr172);
                                                }
                                                §§goto(addr173);
                                             }
                                          }
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr169);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr87);
                  §§push(Number(§§pop()));
               }
               §§goto(addr81);
            }
            §§goto(addr87);
         }
         §§goto(addr39);
      }
      
      public function §]j§() : Number
      {
         return this.§ !K§;
      }
      
      public function §=4§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§ !K§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc4_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::6z;
         var _loc5_:b2Body = b2internal::3D;
         §§push(0);
         if(!_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(_loc15_ || this)
         {
            §§push(this.§8A§);
            while(true)
            {
               §§pop().§7_§();
               addr113:
               if(!(_loc15_ || this))
               {
                  continue;
               }
               §§pop().§0K§ = -1;
               if(_loc15_ || _loc3_)
               {
                  if(!(_loc16_ && param1))
                  {
                     §§push(_loc14_);
                     if(!(_loc16_ && _loc3_))
                     {
                        §§push(_loc4_.§%L§);
                        if(_loc15_ || param1)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc15_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc16_)
                              {
                                 _loc14_ = §§pop();
                                 if(!_loc16_)
                                 {
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          if(!this.m_revolute1)
                                          {
                                             §§push(_loc2_.m_xf);
                                             if(!_loc16_)
                                             {
                                                §§push(§§pop().R);
                                                if(_loc15_ || _loc2_)
                                                {
                                                   _loc10_ = §§pop();
                                                   _loc11_ = this.m_prismatic1.§ do§;
                                                   if(_loc15_ || _loc2_)
                                                   {
                                                      §§push(_loc10_.col1);
                                                      if(_loc15_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc15_)
                                                         {
                                                            §§push(_loc11_.x);
                                                            if(!_loc16_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc16_ && _loc2_))
                                                               {
                                                                  §§push(_loc10_.col2);
                                                                  if(!(_loc16_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc15_ || _loc2_)
                                                                     {
                                                                        §§push(_loc11_.y);
                                                                        if(!(_loc16_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc15_ || this)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc15_)
                                                                              {
                                                                                 addr224:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc16_ && param1))
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    if(!(_loc16_ && _loc3_))
                                                                                    {
                                                                                       addr242:
                                                                                       §§push(_loc10_.col1.y);
                                                                                       if(!(_loc16_ && this))
                                                                                       {
                                                                                          addr250:
                                                                                          §§push(_loc11_.x);
                                                                                          if(!(_loc16_ && _loc3_))
                                                                                          {
                                                                                             addr279:
                                                                                             addr259:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                addr262:
                                                                                                §§push(_loc10_.col2.y);
                                                                                                if(_loc15_ || _loc3_)
                                                                                                {
                                                                                                   addr274:
                                                                                                   §§push(§§pop() * _loc11_.y);
                                                                                                }
                                                                                             }
                                                                                             _loc7_ = §§pop();
                                                                                             _loc10_ = _loc4_.m_xf.R;
                                                                                             if(_loc15_ || param1)
                                                                                             {
                                                                                                §§push(this.m_localAnchor1);
                                                                                                loop81:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr649:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_.m_sweep);
                                                                                                      addr651:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().localCenter);
                                                                                                         addr652:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr653:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               addr654:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr655:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     continue loop81;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr431);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             §§goto(addr279);
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr279);
                                                                                 }
                                                                                 §§goto(addr262);
                                                                              }
                                                                              §§goto(addr279);
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                                  §§goto(addr262);
                                                               }
                                                               §§goto(addr250);
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         §§goto(addr224);
                                                      }
                                                   }
                                                   §§goto(addr242);
                                                }
                                                addr715:
                                                _loc10_ = §§pop();
                                                _loc11_ = this.m_prismatic2.§ do§;
                                                if(!_loc16_)
                                                {
                                                   §§push(_loc10_.col1);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         §§push(_loc11_.x);
                                                         if(_loc15_ || _loc2_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc15_)
                                                            {
                                                               addr748:
                                                               §§push(_loc10_.col2);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(_loc11_.y);
                                                                     if(_loc15_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc15_ || param1)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!(_loc16_ && this))
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    addr783:
                                                                                    §§push(_loc10_.col1.y);
                                                                                    if(!(_loc16_ && _loc3_))
                                                                                    {
                                                                                       addr791:
                                                                                       §§push(_loc11_.x);
                                                                                       if(!(_loc16_ && this))
                                                                                       {
                                                                                          addr800:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             addr803:
                                                                                             §§push(_loc10_.col2.y);
                                                                                             if(_loc15_ || param1)
                                                                                             {
                                                                                                addr826:
                                                                                                §§push(§§pop() + §§pop() * _loc11_.y);
                                                                                                if(_loc15_ || this)
                                                                                                {
                                                                                                   addr834:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr826);
                                                                                          }
                                                                                          _loc7_ = §§pop();
                                                                                          addr836:
                                                                                          _loc10_ = _loc5_.m_xf.R;
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             §§push(this.m_localAnchor2);
                                                                                             loop39:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr1234:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_.m_sweep);
                                                                                                   addr1236:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().localCenter);
                                                                                                      addr1237:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr1238:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            addr1239:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               addr1240:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  continue loop39;
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
                                                                                       §§goto(addr826);
                                                                                    }
                                                                                    §§goto(addr803);
                                                                                 }
                                                                                 §§goto(addr836);
                                                                              }
                                                                              §§goto(addr834);
                                                                           }
                                                                           §§goto(addr791);
                                                                        }
                                                                     }
                                                                     §§goto(addr826);
                                                                  }
                                                                  §§goto(addr800);
                                                               }
                                                               §§goto(addr803);
                                                            }
                                                            §§goto(addr791);
                                                         }
                                                         §§goto(addr826);
                                                      }
                                                      §§goto(addr748);
                                                   }
                                                   §§goto(addr783);
                                                }
                                                §§goto(addr800);
                                             }
                                             break;
                                          }
                                          if(!(_loc16_ && _loc2_))
                                          {
                                             §§push(this.§8A§);
                                             if(!(_loc16_ && _loc3_))
                                             {
                                                §§goto(addr113);
                                             }
                                             addr669:
                                             §§push(this.§ !K§);
                                             if(_loc15_)
                                             {
                                                §§push(-§§pop());
                                             }
                                             §§pop().§>!G§ = §§pop();
                                             if(_loc15_)
                                             {
                                                §§push(_loc14_);
                                                if(_loc15_)
                                                {
                                                   addr680:
                                                   §§push(this.§ !K§);
                                                   if(_loc15_ || param1)
                                                   {
                                                      §§push(this.§ !K§);
                                                      if(!_loc16_)
                                                      {
                                                         addr699:
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc16_)
                                                         {
                                                            addr696:
                                                            §§push(_loc5_.§%L§);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc15_)
                                                         {
                                                            addr703:
                                                            _loc14_ = Number(§§pop());
                                                            if(_loc15_ || _loc2_)
                                                            {
                                                               addr1242:
                                                               §§push(this);
                                                               if(!(_loc16_ && _loc3_))
                                                               {
                                                                  §§push(_loc14_);
                                                                  if(!_loc16_)
                                                                  {
                                                                     if(§§pop() > 0)
                                                                     {
                                                                        addr1256:
                                                                        §§push(1 / _loc14_);
                                                                        if(_loc15_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc15_ || param1)
                                                                           {
                                                                              addr1269:
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     §§pop().§>§ = §§pop();
                                                                     if(!_loc16_)
                                                                     {
                                                                        if(!param1.§7!^§)
                                                                        {
                                                                           this.§==§ = 0;
                                                                           if(_loc16_)
                                                                           {
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc15_ || _loc2_)
                                                                                 {
                                                                                    if(!(_loc16_ && _loc2_))
                                                                                    {
                                                                                       if(!(_loc16_ && _loc2_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr1650:
                                                                                       loop27:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_.§2!@§);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                §§push(_loc4_.§2!@§);
                                                                                                loop29:
                                                                                                while(_loc15_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_.§+5§);
                                                                                                      loop31:
                                                                                                      while(_loc15_)
                                                                                                      {
                                                                                                         §§push(this.§==§);
                                                                                                         loop32:
                                                                                                         while(_loc15_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            loop33:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§8A§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().§5A§);
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     loop35:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr1603:
                                                                                                                        addr1630:
                                                                                                                        while(!(_loc16_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              addr1612:
                                                                                                                              loop38:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 §§push(_loc4_.m_angularVelocity);
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.§%L§);
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§==§);
                                                                                                                                       if(!(_loc16_ && param1))
                                                                                                                                       {
                                                                                                                                          addr1558:
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc15_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§8A§.§0K§);
                                                                                                                                          }
                                                                                                                                          §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc16_ && _loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop38;
                                                                                                                                             }
                                                                                                                                             §§push(_loc5_.§2!@§);
                                                                                                                                             loop5:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_.§2!@§);
                                                                                                                                                addr1467:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      continue loop29;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_.§+5§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§==§);
                                                                                                                                                         addr1476:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc15_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!(_loc16_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§8A§);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().§!8§);
                                                                                                                                                                     addr1494:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        addr1495:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop35;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        continue loop35;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1493:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc16_ && _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop33;
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc15_ || _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop31;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1515:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     while(!(_loc16_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        loop14:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop5;
                                                                                                                                                                           }
                                                                                                                                                                           addr1616:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_.§2!@§);
                                                                                                                                                                              addr1618:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc4_.§2!@§);
                                                                                                                                                                                 break loop29;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1454:
                                                                                                                                                                           while(_loc16_ && this)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop14;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                           §§push(_loc5_.m_angularVelocity);
                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop3;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc5_.§%L§);
                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§==§);
                                                                                                                                                                              if(_loc15_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1322:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!(_loc16_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§8A§.§>!G§);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 continue loop3;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1322);
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc16_ && _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                        §§goto(addr1454);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        continue loop27;
                                                                                                                                                                     }
                                                                                                                                                                     addr1649:
                                                                                                                                                                     addr1515:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1649);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop33;
                                                                                                                                                               addr1498:
                                                                                                                                                            }
                                                                                                                                                            continue loop32;
                                                                                                                                                         }
                                                                                                                                                         continue loop32;
                                                                                                                                                         addr1438:
                                                                                                                                                         if(!(_loc15_ || _loc2_))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1446);
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1515);
                                                                                                                                                }
                                                                                                                                                continue loop29;
                                                                                                                                             }
                                                                                                                                             §§goto(addr1558);
                                                                                                                                          }
                                                                                                                                          addr1559:
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1558);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§==§);
                                                                                                                           break loop32;
                                                                                                                           §§goto(addr1603);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr1647);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            break loop31;
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr1645);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(_loc15_ || param1)
                                                                                                   {
                                                                                                      §§goto(addr1630);
                                                                                                      §§push(_loc4_.§+5§);
                                                                                                   }
                                                                                                   §§goto(addr1515);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1618);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1559);
                                                                                 }
                                                                                 §§goto(addr1454);
                                                                              }
                                                                              addr1345:
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr1616);
                                                                     }
                                                                     §§goto(addr1650);
                                                                  }
                                                                  §§goto(addr1269);
                                                               }
                                                               §§goto(addr1256);
                                                               addr711:
                                                            }
                                                            §§goto(addr1345);
                                                         }
                                                         §§goto(addr703);
                                                      }
                                                      §§goto(addr699);
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr696);
                                                }
                                                §§goto(addr703);
                                             }
                                             §§goto(addr1345);
                                          }
                                          §§goto(addr711);
                                          §§goto(addr1242);
                                       }
                                       §§goto(addr715);
                                       §§push(§§pop().R);
                                       addr93:
                                    }
                                    §§goto(addr657);
                                 }
                                 §§goto(addr1345);
                              }
                           }
                           §§goto(addr703);
                        }
                        §§goto(addr699);
                     }
                     §§goto(addr680);
                  }
                  while(true)
                  {
                     §§goto(addr93);
                  }
                  addr140:
               }
               §§goto(addr1525);
            }
         }
         §§goto(addr140);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = b2internal::6z;
         var _loc3_:b2Body = b2internal::3D;
         §§push(this.§8A§.§5y§(_loc2_.§2!@§,_loc2_.m_angularVelocity,_loc3_.§2!@§,_loc3_.m_angularVelocity));
         if(_loc6_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§>§);
         if(!(_loc7_ && _loc2_))
         {
            §§push(-§§pop());
            if(!(_loc7_ && param1))
            {
               addr59:
               §§push(§§pop() * _loc4_);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               §§push(this);
               §§push(this.§==§);
               if(_loc6_ || param1)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§==§ = §§pop();
               while(true)
               {
                  §§push(_loc2_.§2!@§);
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_.§2!@§);
                     addr412:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr413:
                        while(true)
                        {
                           §§push(_loc2_.§+5§);
                           if(_loc6_ || param1)
                           {
                              §§push(_loc5_);
                              if(_loc6_)
                              {
                                 addr426:
                                 §§push(§§pop() * §§pop());
                                 while(true)
                                 {
                                    §§push(this.§8A§);
                                    addr428:
                                    while(true)
                                    {
                                       §§push(§§pop().§5A§);
                                       addr429:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                       }
                                    }
                                 }
                                 addr426:
                              }
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr431:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr432:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       addr433:
                                       while(true)
                                       {
                                          §§push(_loc2_.§2!@§);
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              addr430:
                           }
                           §§goto(addr426);
                        }
                     }
                  }
               }
            }
            §§goto(addr433);
         }
         §§goto(addr59);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(_loc9_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::6z;
         var _loc4_:b2Body = b2internal::3D;
         if(_loc9_ || _loc2_)
         {
            §§push(this.m_revolute1);
            if(!_loc10_)
            {
               if(!§§pop())
               {
                  §§push(this.m_prismatic1.§ !Q§());
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                     loop0:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop1:
                        while(true)
                        {
                           if(!_loc10_)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(this.m_revolute2);
                                 if(_loc9_ || _loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(this.m_prismatic2.§ !Q§());
                                       if(_loc9_ || _loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             if(_loc9_ || this)
                                             {
                                                _loc6_ = §§pop();
                                                if(_loc9_ || this)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      addr102:
                                                      if(!_loc10_)
                                                      {
                                                         §§push(this.m_revolute2);
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   if(!(_loc10_ && _loc2_))
                                                   {
                                                      if(false)
                                                      {
                                                         continue;
                                                      }
                                                      addr152:
                                                      §§push(this.§7-§);
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         addr161:
                                                         §§push(_loc5_);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(this.§ !K§);
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               §§push(§§pop() * _loc6_);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc9_)
                                                         {
                                                            break loop1;
                                                         }
                                                         addr180:
                                                         var _loc7_:* = §§pop();
                                                         §§push(this.§>§);
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            §§push(-§§pop());
                                                            if(!(_loc10_ && this))
                                                            {
                                                               addr198:
                                                               §§push(§§pop() * _loc7_);
                                                               if(_loc9_)
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
                                                                                 §§push(_loc3_.§+5§);
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
                                                                                          §§push(this.§8A§);
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§5A§);
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
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().c);
                                                                                                               loop18:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_.m_sweep);
                                                                                                                  loop19:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().c);
                                                                                                                     loop20:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        loop21:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_.§+5§);
                                                                                                                           loop22:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              loop23:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 loop24:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§8A§);
                                                                                                                                    loop25:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§5A§);
                                                                                                                                       if(!(_loc9_ || param1))
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       loop26:
                                                                                                                                       while(!_loc10_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          loop27:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             loop28:
                                                                                                                                             while(!(_loc10_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc10_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   continue loop7;
                                                                                                                                                }
                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                loop29:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.m_sweep);
                                                                                                                                                   loop30:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_.m_sweep);
                                                                                                                                                      addr526:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().a);
                                                                                                                                                         if(!(_loc10_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.§%L§);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(!(_loc10_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§8A§);
                                                                                                                                                                     addr547:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().§0K§);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr545:
                                                                                                                                                               }
                                                                                                                                                               addr548:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  addr549:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr330:
                                                                                                                                                               if(_loc10_ && _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§pop().a = §§pop() + §§pop();
                                                                                                                                                               loop55:
                                                                                                                                                               while(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  _loc3_.§&I§();
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop29;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop16;
                                                                                                                                                                  if(!(_loc9_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        return _loc2_ < b2Settings.b2_linearSlop;
                                                                                                                                                                        addr231:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     loop54:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_.m_sweep);
                                                                                                                                                                        if(!(_loc10_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop3;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop30;
                                                                                                                                                                        }
                                                                                                                                                                        addr345:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop17;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc10_ && _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop4;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc4_.m_sweep);
                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop5;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop().c);
                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc10_ && this)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    if(_loc9_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc10_ && this)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop28;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc4_.§+5§);
                                                                                                                                                                                             if(!(_loc10_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop23;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr415:
                                                                                                                                                                                                            §§push(this.§8A§);
                                                                                                                                                                                                            if(!(_loc10_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop11;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop().§!8§);
                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr430:
                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr432:
                                                                                                                                                                                                                     if(!(_loc10_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop26;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr442:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr451:
                                                                                                                                                                                                                                    §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                                                    continue loop54;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop8;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop24;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop27;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           addr490:
                                                                                                                                                                                                                           while(_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§8A§);
                                                                                                                                                                                                                              while(!(_loc10_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().§!8§);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                    addr503:
                                                                                                                                                                                                                                    while(_loc9_ || _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop9;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr415);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop25;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop10;
                                                                                                                                                                                                                           §§goto(addr432);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr489:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(_loc9_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                           break loop55;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop14;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr503);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr502);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr494);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr490);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr442);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr430);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(_loc9_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop22;
                                                                                                                                                                                                   addr481:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr489);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr442);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_.§+5§);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop21;
                                                                                                                                                                                             addr477:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr481);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr519);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr451);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop6;
                                                                                                                                                                                    addr474:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr477);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(_loc9_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().c);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop19;
                                                                                                                                                                                 addr466:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr474);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              addr464:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr466);
                                                                                                                                                                           continue loop54;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop18;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr549);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_.m_sweep);
                                                                                                                                                                     continue loop17;
                                                                                                                                                                  }
                                                                                                                                                                  addr551:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr345);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr550:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().a = §§pop();
                                                                                                                                                            §§goto(addr551);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop15;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                    continue loop12;
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
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                            §§goto(addr202);
                                                         }
                                                         §§goto(addr198);
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop2;
                                                      }
                                                      addr151:
                                                   }
                                                }
                                                addr118:
                                                §§goto(addr152);
                                                addr118:
                                             }
                                             addr107:
                                             if(_loc10_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(Number(§§pop()));
                                             if(!(_loc10_ && param1))
                                             {
                                                _loc6_ = §§pop();
                                                §§goto(addr118);
                                             }
                                          }
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr102);
                                 }
                                 break;
                              }
                              §§goto(addr107);
                              §§push(§§pop().§?!^§());
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this.m_revolute1);
                                 addr139:
                                 while(true)
                                 {
                                    §§push(§§pop().§?!^§());
                                    if(_loc9_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          _loc5_ = §§pop();
                                       }
                                       break loop1;
                                    }
                                    break loop1;
                                 }
                              }
                              addr137:
                           }
                           §§goto(addr151);
                        }
                     }
                  }
                  §§goto(addr161);
                  §§push(Number(§§pop()));
               }
               §§goto(addr137);
            }
            §§goto(addr139);
         }
         §§goto(addr118);
      }
   }
}
