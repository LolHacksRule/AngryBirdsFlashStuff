package §@h§
{
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Mat22;
   import §@!E§.b2Vec2;
   
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
      
      private var §>!0§:b2Jacobian;
      
      private var §,!g§:Number;
      
      private var §^!&§:Number;
      
      private var §'q§:Number;
      
      private var §6!h§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_)
         {
            this.m_groundAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               loop2:
               while(_loc7_ || this)
               {
                  this.m_localAnchor2 = new b2Vec2();
                  loop3:
                  while(!_loc6_)
                  {
                     loop4:
                     do
                     {
                        this.§>!0§ = new b2Jacobian();
                        while(true)
                        {
                           if(_loc7_)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              super(param1);
                              if(!(_loc6_ && param1))
                              {
                                 continue loop4;
                              }
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                     while(false);
                     
                     §§push(param1.joint1.§5Q§);
                     if(!(_loc6_ && param1))
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(param1.joint2.§5Q§);
                     if(!_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(_loc7_ || _loc3_)
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
                                    this.m_ground1 = param1.joint1.§>!y§();
                                    loop10:
                                    while(true)
                                    {
                                       §9!F§ = param1.joint1.§5!0§();
                                       loop11:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          while(true)
                                          {
                                             if(§§pop() != b2Joint.e_revoluteJoint)
                                             {
                                                this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
                                                loop13:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(this.m_groundAnchor1);
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§pop().SetV(this.m_prismatic1.m_localAnchor1);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(this.m_localAnchor1);
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               §§pop().SetV(this.m_prismatic1.m_localAnchor2);
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(this.m_prismatic1.§%!-§());
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr395:
                                                                        addr178:
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    this.m_ground2 = param1.joint2.§>!y§();
                                                                                    addr385:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             break;
                                                                                             addr364:
                                                                                          }
                                                                                          §[!n§ = param1.joint2.§5!0§();
                                                                                          while(!(_loc6_ && this))
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    addr456:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.m_groundAnchor1);
                                                                                    addr468:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().SetV(this.m_revolute1.m_localAnchor1);
                                                                                       addr472:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.m_localAnchor1);
                                                                                          addr460:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().SetV(this.m_revolute1.m_localAnchor2);
                                                                                             addr464:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.m_revolute1.§"!4§());
                                                                                                addr454:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr455:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr484:
                                                                              }
                                                                              §§goto(addr456);
                                                                           }
                                                                        }
                                                                        if(!(_loc7_ || _loc3_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           addr193:
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       if(_loc7_ || param1)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             loop26:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§^!&§ = param1.§`,§;
                                                                                                loop27:
                                                                                                while(!_loc6_)
                                                                                                {
                                                                                                   addr159:
                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(_loc4_);
                                                                                                      if(_loc7_ || param1)
                                                                                                      {
                                                                                                         §§push(this.§^!&§);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc5_);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().§,!g§ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc7_ || _loc2_)
                                                                                                         {
                                                                                                            addr144:
                                                                                                            if(!(_loc7_ || this))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                         §§push(this.m_groundAnchor2);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§pop().SetV(this.m_prismatic2.m_localAnchor1);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().SetV(this.m_revolute2.m_localAnchor1);
                                                                                                               addr327:
                                                                                                               while(_loc7_)
                                                                                                               {
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            addr323:
                                                                                                         }
                                                                                                         §§goto(addr144);
                                                                                                      }
                                                                                                      addr288:
                                                                                                   }
                                                                                                   while(!_loc6_)
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                      §§goto(addr159);
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                                continue loop25;
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                          continue loop15;
                                                                                       }
                                                                                       addr349:
                                                                                       while(true)
                                                                                       {
                                                                                          this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
                                                                                          addr355:
                                                                                          while(_loc7_)
                                                                                          {
                                                                                             §§push(this.m_groundAnchor2);
                                                                                          }
                                                                                          §§goto(addr385);
                                                                                       }
                                                                                       §§goto(addr323);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             if(_loc7_ || _loc2_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                §§goto(addr464);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr355);
                                                                                             }
                                                                                          }
                                                                                          continue loop25;
                                                                                       }
                                                                                       §§goto(addr454);
                                                                                       addr231:
                                                                                    }
                                                                                    §§goto(addr327);
                                                                                 }
                                                                                 §§goto(addr364);
                                                                              }
                                                                              §§goto(addr295);
                                                                           }
                                                                           §§goto(addr296);
                                                                        }
                                                                        §§goto(addr454);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
                                                                     }
                                                                     addr478:
                                                                  }
                                                                  §§goto(addr484);
                                                               }
                                                               continue loop9;
                                                            }
                                                            §§goto(addr460);
                                                         }
                                                      }
                                                      §§goto(addr468);
                                                   }
                                                   §§goto(addr472);
                                                }
                                             }
                                             addr378:
                                             §§push(_loc3_);
                                             if(!(_loc7_ || this))
                                             {
                                                continue;
                                             }
                                             if(§§pop() != b2Joint.e_revoluteJoint)
                                             {
                                                this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
                                                §§goto(addr288);
                                             }
                                             §§goto(addr349);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr478);
                  }
                  while(true)
                  {
                     this.m_localAnchor1 = new b2Vec2();
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr73);
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
            §§push(this.§6!h§);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  §§push(this.§>!0§.§]@§.x);
                  if(!(_loc2_ && param1))
                  {
                     addr55:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(this.§6!h§);
                        if(_loc3_ || param1)
                        {
                           §§goto(addr90);
                        }
                        addr90:
                        §§push(§§pop() * §§pop());
                        if(!_loc2_)
                        {
                           addr85:
                           §§push(this.§>!0§.§]@§.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr85);
               }
               §§goto(addr55);
            }
            §§goto(addr90);
         }
         §§goto(addr55);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = b2internal::[!n.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc9_ || _loc3_)
         {
            §§push(§§pop() - b2internal::[!n.m_sweep.localCenter.x);
            if(!(_loc8_ && param1))
            {
               addr44:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc9_ || this)
            {
               §§push(§§pop() - b2internal::[!n.m_sweep.localCenter.y);
               if(!(_loc8_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc2_.col1.x);
            if(_loc9_)
            {
               §§push(_loc3_);
               if(!(_loc8_ && _loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc8_ && _loc2_))
                  {
                     §§push(_loc2_.col2.x);
                     if(!_loc8_)
                     {
                        addr98:
                        §§push(§§pop() + §§pop() * _loc4_);
                        if(!(_loc8_ && this))
                        {
                           addr106:
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr98);
                  }
                  var _loc5_:* = §§pop();
                  if(_loc9_ || _loc2_)
                  {
                     §§push(_loc2_.col1.y);
                     if(_loc9_ || this)
                     {
                        §§push(_loc3_);
                        if(!(_loc8_ && param1))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc9_ || this)
                           {
                              §§push(_loc2_.col2.y);
                              if(!(_loc8_ && _loc2_))
                              {
                                 §§goto(addr161);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr195);
                        }
                        addr161:
                        §§push(§§pop() * _loc4_);
                        if(_loc9_)
                        {
                           addr165:
                           §§push(§§pop() + §§pop());
                           if(!_loc8_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc9_ || _loc3_)
                              {
                                 _loc4_ = §§pop();
                                 if(!(_loc8_ && this))
                                 {
                                    §§push(_loc5_);
                                    if(_loc8_ && _loc3_)
                                    {
                                    }
                                    addr195:
                                    _loc3_ = §§pop();
                                    addr196:
                                    §§push(this.§6!h§);
                                    if(_loc9_ || param1)
                                    {
                                       §§goto(addr205);
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr205);
                           }
                           §§push(Number(§§pop()));
                           if(!_loc8_)
                           {
                              §§goto(addr195);
                           }
                        }
                        §§goto(addr205);
                     }
                     addr205:
                     §§push(§§pop() * this.§>!0§.§]@§.x);
                     if(_loc9_ || this)
                     {
                        addr217:
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     §§push(this.§6!h§);
                     if(_loc9_ || _loc2_)
                     {
                        §§push(§§pop() * this.§>!0§.§]@§.y);
                        if(_loc9_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc7_:* = §§pop();
                     §§push(param1);
                     if(_loc9_ || _loc2_)
                     {
                        §§push(this.§6!h§);
                        if(!_loc8_)
                        {
                           §§push(this.§>!0§.§5!C§);
                           if(_loc9_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc8_ && this))
                              {
                                 §§push(_loc3_);
                                 if(!_loc8_)
                                 {
                                    addr265:
                                    §§push(_loc7_);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc8_ && this))
                                          {
                                             addr289:
                                             §§push(_loc4_);
                                             if(!_loc8_)
                                             {
                                                addr294:
                                                §§push(§§pop() + §§pop() * _loc6_);
                                             }
                                             §§goto(addr294);
                                          }
                                          §§goto(addr296);
                                       }
                                    }
                                 }
                                 §§goto(addr294);
                              }
                              §§goto(addr289);
                           }
                           §§goto(addr265);
                        }
                        §§goto(addr289);
                     }
                     addr296:
                     return §§pop() * §§pop();
                  }
                  §§goto(addr195);
               }
               §§goto(addr98);
            }
            §§goto(addr106);
         }
         §§goto(addr44);
      }
      
      public function § null§() : Number
      {
         return this.§^!&§;
      }
      
      public function §8$§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^!&§ = param1;
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
         var _loc9_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::9!F;
         var _loc5_:b2Body = b2internal::[!n;
         §§push(0);
         if(_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(!_loc16_)
         {
            §§push(this.§>!0§);
            loop0:
            while(true)
            {
               §§pop().§>![§();
               if(_loc15_)
               {
                  while(true)
                  {
                     if(!this.m_revolute1)
                     {
                        §§push(_loc2_.m_xf);
                        if(_loc15_ || _loc3_)
                        {
                           §§push(§§pop().R);
                           if(!(_loc16_ && _loc3_))
                           {
                              _loc10_ = §§pop();
                              _loc11_ = this.m_prismatic1.§9"5§;
                              if(!_loc16_)
                              {
                                 §§push(_loc10_.col1);
                                 if(!(_loc16_ && _loc2_))
                                 {
                                    §§push(§§pop().x);
                                    if(_loc15_)
                                    {
                                       §§push(_loc11_.x);
                                       if(!(_loc16_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc15_ || _loc3_)
                                          {
                                             §§push(_loc10_.col2);
                                             if(_loc15_ || param1)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc15_)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc15_ || this)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc16_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               addr202:
                                                               _loc6_ = §§pop();
                                                               if(!_loc16_)
                                                               {
                                                                  addr207:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(_loc15_ || param1)
                                                                  {
                                                                     addr215:
                                                                     §§push(_loc11_.x);
                                                                     if(!(_loc16_ && param1))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc16_)
                                                                        {
                                                                           addr229:
                                                                           §§push(_loc10_.col2.y);
                                                                           if(!(_loc16_ && this))
                                                                           {
                                                                              addr240:
                                                                              §§push(§§pop() + §§pop() * _loc11_.y);
                                                                              if(_loc15_ || this)
                                                                              {
                                                                                 addr249:
                                                                                 _loc7_ = §§pop();
                                                                              }
                                                                              §§goto(addr249);
                                                                           }
                                                                           §§goto(addr240);
                                                                        }
                                                                        §§goto(addr249);
                                                                     }
                                                                     §§goto(addr240);
                                                                  }
                                                                  §§goto(addr249);
                                                               }
                                                               _loc10_ = _loc4_.m_xf.R;
                                                               if(_loc15_)
                                                               {
                                                                  §§push(this.m_localAnchor1);
                                                                  loop81:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr579:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.m_sweep);
                                                                        addr581:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().localCenter);
                                                                           addr582:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr583:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 addr584:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr585:
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
                                                               §§goto(addr524);
                                                            }
                                                            §§goto(addr215);
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                   }
                                                }
                                                §§goto(addr240);
                                             }
                                             §§goto(addr229);
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr240);
                                    }
                                    §§goto(addr249);
                                 }
                              }
                              §§goto(addr207);
                           }
                           addr645:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§9"5§;
                           if(_loc15_)
                           {
                              §§push(_loc10_.col1);
                              if(!_loc16_)
                              {
                                 §§push(§§pop().x);
                                 if(!_loc16_)
                                 {
                                    §§push(_loc11_.x);
                                    if(!(_loc16_ && _loc2_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc15_)
                                       {
                                          §§push(_loc10_.col2);
                                          if(_loc15_ || _loc2_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc15_ || param1)
                                             {
                                                §§push(_loc11_.y);
                                                if(_loc15_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc15_)
                                                   {
                                                      addr697:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc15_)
                                                      {
                                                         addr700:
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc16_ && this))
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(_loc15_)
                                                            {
                                                               addr713:
                                                               §§push(_loc10_.col1.y);
                                                               if(_loc15_)
                                                               {
                                                                  §§push(_loc11_.x);
                                                                  if(_loc15_ || _loc3_)
                                                                  {
                                                                     addr744:
                                                                     addr745:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc15_)
                                                                     {
                                                                        addr728:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(_loc15_ || _loc2_)
                                                                        {
                                                                           addr738:
                                                                           §§push(§§pop() * _loc11_.y);
                                                                        }
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     _loc10_ = _loc5_.m_xf.R;
                                                                     if(_loc15_)
                                                                     {
                                                                        §§push(this.m_localAnchor2);
                                                                        loop36:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr1144:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.m_sweep);
                                                                              addr1146:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().localCenter);
                                                                                 addr1147:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr1148:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr1149:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr1150:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             continue loop36;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr1140);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc15_)
                                                                  {
                                                                     §§goto(addr744);
                                                                  }
                                                                  §§goto(addr745);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr744);
                                                      }
                                                      §§goto(addr728);
                                                   }
                                                }
                                                §§goto(addr738);
                                             }
                                             §§goto(addr697);
                                          }
                                          §§goto(addr728);
                                       }
                                       §§goto(addr744);
                                    }
                                    §§goto(addr738);
                                 }
                                 §§goto(addr700);
                              }
                              §§goto(addr713);
                           }
                           §§goto(addr744);
                        }
                        break;
                     }
                     if(_loc15_ || this)
                     {
                        §§push(this.§>!0§);
                        if(!_loc16_)
                        {
                           if(_loc16_)
                           {
                              continue loop0;
                           }
                           §§pop().§&'§ = -1;
                           if(!_loc16_)
                           {
                              §§push(_loc14_);
                              if(!_loc16_)
                              {
                                 §§push(_loc4_.§"k§);
                                 if(!(_loc16_ && this))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc16_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc15_)
                                       {
                                          addr78:
                                          _loc14_ = §§pop();
                                          if(!_loc16_)
                                          {
                                             if(false)
                                             {
                                                continue;
                                             }
                                             addr587:
                                             if(!this.m_revolute2)
                                             {
                                                §§push(_loc3_.m_xf);
                                                break;
                                             }
                                             if(!(_loc16_ && _loc3_))
                                             {
                                                addr599:
                                                §§push(this.§>!0§);
                                                §§push(this.§^!&§);
                                                if(_loc15_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§5!C§ = §§pop();
                                                if(!(_loc16_ && this))
                                                {
                                                   §§push(_loc14_);
                                                   if(_loc15_)
                                                   {
                                                      addr615:
                                                      §§push(this.§^!&§);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(this.§^!&§);
                                                         if(_loc15_ || this)
                                                         {
                                                            addr634:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc15_)
                                                            {
                                                               addr631:
                                                               §§push(_loc5_.§"k§);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc15_)
                                                            {
                                                               addr637:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc14_ = §§pop();
                                                            if(!_loc16_)
                                                            {
                                                               addr1152:
                                                               §§push(this);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(_loc14_);
                                                                  if(_loc15_ || _loc3_)
                                                                  {
                                                                     if(§§pop() > 0)
                                                                     {
                                                                        addr1166:
                                                                        §§push(1 / _loc14_);
                                                                        if(!(_loc16_ && param1))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc16_)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr1183:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc15_)
                                                                        {
                                                                           §§goto(addr1183);
                                                                        }
                                                                     }
                                                                     §§pop().§'q§ = §§pop();
                                                                     if(!_loc16_)
                                                                     {
                                                                        if(param1.§-"'§)
                                                                        {
                                                                           if(!(_loc16_ && _loc2_))
                                                                           {
                                                                              addr1531:
                                                                              §§push(_loc4_.§;!A§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_.§;!A§);
                                                                                 addr1535:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!(_loc16_ && param1))
                                                                                    {
                                                                                       §§push(_loc4_.§ c§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§6!h§);
                                                                                          addr1557:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr1558:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§>!0§);
                                                                                                addr1560:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().§3!u§);
                                                                                                   addr1561:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr1562:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr1563:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr1545:
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr1533:
                                                                           }
                                                                           break loop0;
                                                                        }
                                                                        this.§6!h§ = 0;
                                                                        if(!(_loc16_ && _loc2_))
                                                                        {
                                                                           if(!(_loc16_ && param1))
                                                                           {
                                                                              if(!(_loc15_ || _loc3_))
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              addr1188:
                                                                              return;
                                                                              addr1219:
                                                                           }
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc16_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    §§push(_loc5_.m_angularVelocity);
                                                                                    if(_loc15_ || _loc3_)
                                                                                    {
                                                                                       §§push(_loc5_.§"k§);
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          §§push(this.§6!h§);
                                                                                          if(!(_loc16_ && param1))
                                                                                          {
                                                                                             addr1257:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc16_ && _loc2_))
                                                                                             {
                                                                                                addr1255:
                                                                                                §§push(§§pop() * this.§>!0§.§5!C§);
                                                                                             }
                                                                                             §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc15_ || param1)
                                                                                                {
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr1520:
                                                                                                   addr1520:
                                                                                                   loop127:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      §§push(_loc4_.m_angularVelocity);
                                                                                                      if(_loc15_ || this)
                                                                                                      {
                                                                                                         §§push(_loc4_.§"k§);
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            §§push(this.§6!h§);
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               addr1476:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  §§push(this.§>!0§.§&'§);
                                                                                                               }
                                                                                                               §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc5_.§;!A§);
                                                                                                                  loop4:
                                                                                                                  for(; _loc15_ || param1; while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.§;!A§);
                                                                                                                     if(_loc16_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     if(_loc15_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr1285);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr1533);
                                                                                                                     }
                                                                                                                     §§goto(addr1448);
                                                                                                                  })
                                                                                                                  {
                                                                                                                     §§push(_loc5_.§;!A§);
                                                                                                                     while(_loc15_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.§ c§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 if(!(_loc16_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(this.§6!h§);
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             if(_loc15_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§>!0§);
                                                                                                                                                   addr1430:
                                                                                                                                                   while(_loc15_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().§]@§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         addr1439:
                                                                                                                                                         while(_loc15_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               addr1448:
                                                                                                                                                               addr1564:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  continue loop4;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  break loop0;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1346:
                                                                                                                                                         §§goto(addr1562);
                                                                                                                                                         §§push(§§pop().§]@§);
                                                                                                                                                         if(!(_loc15_ || this))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                         if(_loc15_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr1363:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  addr1368:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc15_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop2;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§>!0§);
                                                                                                                                                                     addr1513:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().§3!u§);
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              addr1518:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1517:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1561);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1511:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  continue loop127;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1447);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1439);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1562);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1560);
                                                                                                                                                }
                                                                                                                                                addr1428:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1557);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1511);
                                                                                                                                          }
                                                                                                                                          addr1510:
                                                                                                                                       }
                                                                                                                                       §§goto(addr1517);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1439);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1558);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                              addr1317:
                                                                                                                              if(!(_loc15_ || _loc2_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§push(this.§6!h§);
                                                                                                                              if(_loc15_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    addr1336:
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§>!0§);
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1346);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1513);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr1430);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1518);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr1428);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1363);
                                                                                                                              }
                                                                                                                              §§goto(addr1355);
                                                                                                                           }
                                                                                                                           §§goto(addr1563);
                                                                                                                        }
                                                                                                                        §§goto(addr1448);
                                                                                                                        §§push(_loc5_.§;!A§);
                                                                                                                        if(_loc16_ && this)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(!(_loc16_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_.§ c§);
                                                                                                                                    if(_loc15_ || param1)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1317);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1336);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc15_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_.§ c§);
                                                                                                                                       if(_loc15_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(_loc15_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1510);
                                                                                                                                             §§push(this.§6!h§);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr1545);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1561);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1518);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1564);
                                                                                                                                 }
                                                                                                                                 addr1485:
                                                                                                                              }
                                                                                                                              §§goto(addr1448);
                                                                                                                           }
                                                                                                                           §§goto(addr1368);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr1485);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1535);
                                                                                                                  }
                                                                                                                  addr1482:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr1484);
                                                                                                                     §§push(_loc4_.§;!A§);
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1478:
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1476);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1449);
                                                                                             }
                                                                                             §§goto(addr1188);
                                                                                             addr1258:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1255);
                                                                                    }
                                                                                    §§goto(addr1257);
                                                                                 }
                                                                                 addr1378:
                                                                              }
                                                                              §§goto(addr1478);
                                                                           }
                                                                        }
                                                                        §§goto(addr1258);
                                                                        §§goto(addr1564);
                                                                        addr1187:
                                                                     }
                                                                     §§goto(addr1531);
                                                                  }
                                                                  §§goto(addr1183);
                                                               }
                                                               §§goto(addr1166);
                                                            }
                                                            break loop0;
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§goto(addr634);
                                                   }
                                                   §§goto(addr637);
                                                }
                                                §§goto(addr1378);
                                             }
                                             §§goto(addr1520);
                                          }
                                          break loop0;
                                       }
                                       §§goto(addr637);
                                    }
                                    §§goto(addr615);
                                 }
                                 §§goto(addr631);
                              }
                              §§goto(addr78);
                           }
                           §§goto(addr1219);
                        }
                        §§goto(addr599);
                     }
                     §§goto(addr1187);
                     §§goto(addr1152);
                  }
                  §§goto(addr645);
                  §§push(§§pop().R);
               }
               break;
            }
            while(true)
            {
               §§goto(addr1482);
            }
         }
         §§goto(addr1520);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = b2internal::9!F;
         var _loc3_:b2Body = b2internal::[!n;
         §§push(this.§>!0§.§%"2§(_loc2_.§;!A§,_loc2_.m_angularVelocity,_loc3_.§;!A§,_loc3_.m_angularVelocity));
         if(!(_loc7_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§'q§);
         if(!_loc7_)
         {
            §§push(-§§pop());
            if(_loc6_)
            {
               addr49:
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
               §§push(this.§6!h§);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§6!h§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(_loc2_.§;!A§);
                  loop1:
                  while(true)
                  {
                     §§push(_loc2_.§;!A§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().x);
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_.§ c§);
                           loop4:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc6_)
                              {
                                 §§push(§§pop() * §§pop());
                                 while(true)
                                 {
                                    §§push(this.§>!0§);
                                    addr403:
                                    while(true)
                                    {
                                       §§push(§§pop().§3!u§);
                                       addr404:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                       }
                                    }
                                 }
                                 addr401:
                              }
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop9:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       loop11:
                                       while(true)
                                       {
                                          §§push(_loc2_.§;!A§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(_loc2_.§;!A§);
                                             addr344:
                                             while(!_loc7_)
                                             {
                                                §§push(§§pop().y);
                                                loop14:
                                                for(; !(_loc7_ && _loc3_); while(_loc6_ || _loc3_)
                                                {
                                                   §§pop().x = §§pop();
                                                   §§goto(addr286);
                                                })
                                                {
                                                   §§push(_loc2_.§ c§);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr357:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(!(_loc6_ || _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§>!0§);
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§push(§§pop().§3!u§);
                                                                     if(!(_loc6_ || _loc2_))
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
                                                                                 if(!(_loc7_ && _loc2_))
                                                                                 {
                                                                                    §§push(_loc2_.§"k§);
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          addr334:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc7_ && _loc3_))
                                                                                          {
                                                                                             §§push(this.§>!0§.§&'§);
                                                                                          }
                                                                                          §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                          while(_loc6_)
                                                                                          {
                                                                                             §§push(_loc3_.§;!A§);
                                                                                             while(_loc6_)
                                                                                             {
                                                                                                §§push(_loc3_.§;!A§);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr234:
                                                                                                   while(!_loc7_)
                                                                                                   {
                                                                                                      §§push(_loc3_.§ c§);
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         if(!(_loc6_ || param1))
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§push(_loc5_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc6_ || param1))
                                                                                                         {
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         if(_loc7_ && this)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(this.§>!0§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().§]@§);
                                                                                                            addr271:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               addr272:
                                                                                                               while(!_loc7_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  while(_loc6_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   continue loop21;
                                                                                                }
                                                                                                §§push(_loc3_.§;!A§);
                                                                                                if(_loc6_ || _loc2_)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                             }
                                                                                             continue loop1;
                                                                                             addr201:
                                                                                             if(!(_loc7_ && _loc2_))
                                                                                             {
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      §§push(_loc3_.m_angularVelocity);
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         §§push(_loc3_.§"k§);
                                                                                                         if(!(_loc7_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               addr92:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  §§push(this.§>!0§.§5!C§);
                                                                                                               }
                                                                                                               §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr194:
                                                                                                               addr286:
                                                                                                               while(!(_loc7_ && this))
                                                                                                               {
                                                                                                                  §§goto(addr201);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc7_ && param1)
                                                                                                                  {
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                                  §§goto(addr293);
                                                                                                                  §§goto(addr194);
                                                                                                               }
                                                                                                               addr194:
                                                                                                               §§goto(addr275);
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr92);
                                                                                                   }
                                                                                                   return;
                                                                                                   addr225:
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr334);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr404);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr401);
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             continue loop2;
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
            §§goto(addr225);
         }
         §§goto(addr49);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(_loc10_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::9!F;
         var _loc4_:b2Body = b2internal::[!n;
         if(!(_loc9_ && _loc3_))
         {
            §§push(this.m_revolute1);
            if(_loc10_)
            {
               if(!§§pop())
               {
                  §§push(this.m_prismatic1.§%!-§());
                  if(!_loc9_)
                  {
                     §§push(Number(§§pop()));
                     loop0:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop1:
                        while(true)
                        {
                           if(_loc10_ || _loc3_)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(this.m_revolute2);
                                 if(_loc10_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          if(_loc9_ && this)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc10_ || this)
                                          {
                                             §§push(this.m_revolute2);
                                             break;
                                          }
                                          addr147:
                                          while(true)
                                          {
                                             §§push(this.m_revolute1);
                                             addr149:
                                             while(true)
                                             {
                                                §§push(§§pop().§"!4§());
                                                addr150:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr151:
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      addr152:
                                                      while(true)
                                                      {
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr153:
                                       §§push(this.§,!g§);
                                       if(_loc10_ || _loc2_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc10_)
                                          {
                                             §§push(this.§^!&§);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() * _loc6_);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§push(§§pop() - §§pop());
                                          if(_loc10_ || _loc3_)
                                          {
                                             addr181:
                                             var _loc7_:Number = §§pop();
                                             §§push(this.§'q§);
                                             if(!_loc9_)
                                             {
                                                §§push(-§§pop());
                                                if(_loc10_ || this)
                                                {
                                                   §§push(§§pop() * _loc7_);
                                                   if(_loc9_ && param1)
                                                   {
                                                   }
                                                   addr204:
                                                   var _loc8_:* = §§pop();
                                                   if(_loc10_)
                                                   {
                                                      §§push(_loc3_.m_sweep);
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().c);
                                                         addr644:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_.m_sweep);
                                                            addr646:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().c);
                                                               addr647:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr648:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_.§ c§);
                                                                     addr650:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        addr661:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           addr662:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§>!0§);
                                                                              addr664:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§3!u§);
                                                                                 addr665:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr666:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       addr667:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr668:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
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
                                                         loop38:
                                                         while(true)
                                                         {
                                                            if(!(_loc10_ || _loc2_))
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(§§pop().c);
                                                            loop39:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.m_sweep);
                                                               loop40:
                                                               while(_loc10_)
                                                               {
                                                                  §§push(§§pop().c);
                                                                  loop41:
                                                                  for(; _loc10_; §§push(§§pop().c),if(!(_loc10_ || this))
                                                                  {
                                                                     continue;
                                                                  },§§push(§§pop().y),if(_loc10_ || _loc3_)
                                                                  {
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        §§push(_loc4_.§ c§);
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           addr409:
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(_loc10_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§goto(addr434);
                                                                                    }
                                                                                    §§goto(addr524);
                                                                                 }
                                                                                 §§goto(addr462);
                                                                              }
                                                                              §§goto(addr454);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§goto(addr613);
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              §§goto(addr631);
                                                                              §§goto(addr409);
                                                                           }
                                                                           addr609:
                                                                        }
                                                                        §§goto(addr462);
                                                                     }
                                                                     §§goto(addr668);
                                                                  },§§goto(addr472))
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           §§push(_loc4_.§ c§);
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(!(_loc9_ && param1))
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       addr524:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       loop43:
                                                                                       while(_loc10_ || _loc3_)
                                                                                       {
                                                                                          §§push(this.§>!0§);
                                                                                          loop44:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                if(_loc10_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop().§]@§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr544:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr545:
                                                                                                         while(_loc10_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            while(!_loc9_)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_.m_sweep);
                                                                                                                  loop50:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        continue loop38;
                                                                                                                     }
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().c);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           continue loop39;
                                                                                                                        }
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_.m_sweep);
                                                                                                                           if(!(_loc9_ && this))
                                                                                                                           {
                                                                                                                              continue loop41;
                                                                                                                           }
                                                                                                                           continue loop40;
                                                                                                                        }
                                                                                                                        while(!_loc9_)
                                                                                                                        {
                                                                                                                           §§push(_loc3_.m_sweep);
                                                                                                                           break loop40;
                                                                                                                        }
                                                                                                                        §§goto(addr644);
                                                                                                                        addr585:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.m_sweep);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().a);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.§"k§);
                                                                                                                              if(_loc10_ || this)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    addr574:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§>!0§);
                                                                                                                                       addr576:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§&'§);
                                                                                                                                          addr577:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr290:
                                                                                                                                    if(_loc9_ && this)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                    {
                                                                                                                                       addr305:
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§>!0§);
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             addr312:
                                                                                                                                             §§push(§§pop().§5!C§);
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                addr315:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr323:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§pop().a = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_ && this)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            _loc3_.§+!X§();
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         continue loop50;
                                                                                                                                                      }
                                                                                                                                                      addr341:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().a = §§pop();
                                                                                                                                                      }
                                                                                                                                                      addr579:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop38;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr578:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr578:
                                                                                                                                                }
                                                                                                                                                §§goto(addr579);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr577);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr576);
                                                                                                                                          }
                                                                                                                                          §§goto(addr577);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr574);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr315);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr578);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr668);
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               §§goto(addr638);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr662);
                                                                                                      }
                                                                                                   }
                                                                                                   addr543:
                                                                                                }
                                                                                                §§goto(addr664);
                                                                                             }
                                                                                             §§push(this.§>!0§);
                                                                                             addr441:
                                                                                             break;
                                                                                             if(!(_loc10_ || _loc3_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop().§]@§);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                addr454:
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc10_ || _loc3_)
                                                                                                {
                                                                                                   addr462:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      addr464:
                                                                                                      if(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         addr472:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §§pop().y = §§pop();
                                                                                                            §§goto(addr475);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr553);
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc9_ && this))
                                                                                                         {
                                                                                                            §§push(this.§>!0§);
                                                                                                            break loop44;
                                                                                                         }
                                                                                                         break;
                                                                                                         §§goto(addr464);
                                                                                                      }
                                                                                                      §§goto(addr667);
                                                                                                      addr613:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr545);
                                                                                                   }
                                                                                                   §§goto(addr662);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr544);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr543);
                                                                                             }
                                                                                             §§goto(addr544);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§3!u§);
                                                                                             if(!(_loc9_ && this))
                                                                                             {
                                                                                                addr631:
                                                                                                §§push(§§pop().y);
                                                                                                while(_loc10_)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      break loop43;
                                                                                                   }
                                                                                                   §§goto(addr661);
                                                                                                }
                                                                                                §§goto(addr666);
                                                                                                addr631:
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr665);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr637);
                                                                                          §§goto(addr524);
                                                                                       }
                                                                                       addr524:
                                                                                    }
                                                                                    §§goto(addr631);
                                                                                 }
                                                                                 §§goto(addr544);
                                                                              }
                                                                              §§goto(addr650);
                                                                              addr434:
                                                                              if(!(_loc10_ || _loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr441);
                                                                           }
                                                                        }
                                                                        §§goto(addr648);
                                                                     }
                                                                     §§goto(addr553);
                                                                  }
                                                                  while(_loc10_)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        §§goto(addr609);
                                                                        §§push(_loc3_.§ c§);
                                                                     }
                                                                     §§goto(addr553);
                                                                  }
                                                                  §§goto(addr647);
                                                               }
                                                               while(_loc10_ || _loc3_)
                                                               {
                                                                  §§goto(addr597);
                                                                  §§push(§§pop().c);
                                                               }
                                                               §§goto(addr646);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr669);
                                                }
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr204);
                                          }
                                       }
                                       §§goto(addr181);
                                       addr123:
                                    }
                                    else
                                    {
                                       §§push(this.m_prismatic2.§%!-§());
                                       if(!_loc9_)
                                       {
                                          if(!_loc9_)
                                          {
                                             continue loop0;
                                          }
                                          addr114:
                                          §§push(Number(§§pop()));
                                          if(_loc10_ || _loc3_)
                                          {
                                             _loc6_ = §§pop();
                                             §§goto(addr123);
                                          }
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr181);
                                 }
                                 break;
                              }
                              §§goto(addr114);
                              §§push(§§pop().§"!4§());
                              addr79:
                           }
                           §§goto(addr152);
                        }
                     }
                  }
                  §§goto(addr181);
               }
               §§goto(addr147);
            }
            §§goto(addr149);
         }
         §§goto(addr152);
      }
   }
}
