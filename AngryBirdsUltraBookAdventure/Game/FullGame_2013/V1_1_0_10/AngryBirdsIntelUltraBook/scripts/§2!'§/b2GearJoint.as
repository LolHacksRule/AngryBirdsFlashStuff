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
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(_loc6_ || this)
         {
            this.m_groundAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  addr69:
                  while(!_loc7_)
                  {
                  }
               }
            }
            addr82:
         }
         while(true)
         {
            this.m_localAnchor2 = new b2Vec2();
            loop4:
            for(; !_loc7_; while(_loc6_ || _loc2_)
            {
               super(param1);
               if(!(_loc6_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr39);
            })
            {
               if(_loc6_)
               {
                  do
                  {
                     this.§ !Q§ = new b2Jacobian();
                     continue loop4;
                  }
                  while(false);
                  
                  §§push(param1.joint1.§3r§);
                  if(!_loc7_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(param1.joint2.§3r§);
                  if(!_loc7_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  if(_loc6_)
                  {
                     this.m_revolute1 = null;
                     while(true)
                     {
                        this.m_prismatic1 = null;
                        loop8:
                        while(true)
                        {
                           this.m_revolute2 = null;
                           addr502:
                           while(true)
                           {
                              this.m_prismatic2 = null;
                              addr171:
                              if(!(_loc7_ && _loc3_))
                              {
                                 continue loop8;
                              }
                           }
                        }
                        if(!(_loc6_ || _loc3_))
                        {
                           continue;
                        }
                        §§goto(addr302);
                        §§push(this.m_localAnchor2);
                     }
                  }
                  §§goto(addr497);
               }
               else
               {
                  §§goto(addr82);
               }
            }
            §§goto(addr69);
         }
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
         if(_loc2_ || param1)
         {
            §§push(this.§&""§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(this.§ !Q§.§"S§.x);
                  if(_loc2_ || _loc3_)
                  {
                     addr64:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(this.§&""§);
                        if(!_loc3_)
                        {
                           §§goto(addr89);
                        }
                        §§push(§§pop() * §§pop());
                     }
                  }
                  addr89:
                  §§push(§§pop() * §§pop());
                  if(!(_loc3_ && this))
                  {
                     §§push(this.§ !Q§.§"S§.y);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
            }
         }
         §§goto(addr64);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Mat22 = b2internal::4!d.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc9_ || param1)
         {
            §§push(§§pop() - b2internal::4!d.m_sweep.localCenter.x);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc8_ && this))
         {
            §§push(§§pop() - b2internal::4!d.m_sweep.localCenter.y);
            if(_loc9_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc2_.col1.x);
         if(!_loc8_)
         {
            §§push(_loc3_);
            if(!_loc8_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc8_ && param1))
               {
                  addr81:
                  §§push(_loc2_.col2.x);
                  if(_loc9_ || _loc2_)
                  {
                     addr91:
                     §§push(§§pop() * _loc4_);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc9_ || this)
                  {
                     addr101:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc8_)
                  {
                     §§push(_loc2_.col1.y);
                     if(!_loc8_)
                     {
                        §§push(_loc3_);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc8_ && param1))
                           {
                              §§push(_loc2_.col2.y);
                              if(_loc9_)
                              {
                                 addr136:
                                 §§push(§§pop() * _loc4_);
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc8_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc9_ || _loc2_)
                                       {
                                          _loc4_ = §§pop();
                                          if(_loc9_)
                                          {
                                             addr159:
                                             §§push(_loc5_);
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                addr167:
                                                §§push(Number(§§pop()));
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   _loc3_ = §§pop();
                                                   addr176:
                                                   §§push(this.§&""§);
                                                   if(_loc8_)
                                                   {
                                                   }
                                                   addr193:
                                                   var _loc6_:* = §§pop();
                                                   §§push(this.§&""§);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§pop() * this.§ !Q§.§"S§.y);
                                                      if(!_loc8_)
                                                      {
                                                         addr205:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc7_:* = §§pop();
                                                      §§push(param1);
                                                      if(_loc9_)
                                                      {
                                                         §§push(this.§&""§);
                                                         if(_loc9_)
                                                         {
                                                            §§push(this.§ !Q§.§5!<§);
                                                            if(!(_loc8_ && this))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc8_ && _loc3_)
                                                                              {
                                                                              }
                                                                              addr276:
                                                                              return §§pop() * (§§pop() + §§pop());
                                                                              addr275:
                                                                           }
                                                                           §§goto(addr275);
                                                                        }
                                                                        §§push(_loc6_);
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§push(§§pop() * this.§ !Q§.§"S§.x);
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§goto(addr193);
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr176);
                                       }
                                    }
                                    §§goto(addr167);
                                 }
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr159);
               }
               §§goto(addr101);
            }
            §§goto(addr91);
         }
         §§goto(addr81);
      }
      
      public function §%!d§() : Number
      {
         return this.§2z§;
      }
      
      public function §0!<§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
         var _loc9_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::&A;
         var _loc5_:b2Body = b2internal::4!d;
         §§push(0);
         if(_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         if(!_loc16_)
         {
            §§push(this.§ !Q§);
            if(!(_loc16_ && _loc3_))
            {
               §§pop().§+J§();
               loop0:
               while(true)
               {
                  while(true)
                  {
                     if(!this.m_revolute1)
                     {
                        §§push(_loc2_.m_xf);
                        if(!(_loc16_ && param1))
                        {
                           §§push(§§pop().R);
                           if(!(_loc16_ && param1))
                           {
                              _loc10_ = §§pop();
                              _loc11_ = this.m_prismatic1.§>!C§;
                              if(!_loc16_)
                              {
                                 §§push(_loc10_.col1);
                                 if(!(_loc16_ && param1))
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc16_)
                                    {
                                       §§push(_loc11_.x);
                                       if(!(_loc16_ && _loc2_))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc15_ || _loc3_)
                                          {
                                             §§push(_loc10_.col2);
                                             if(_loc15_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc15_)
                                                {
                                                   §§push(_loc11_.y);
                                                   if(_loc15_ || param1)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc15_)
                                                      {
                                                         addr201:
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc16_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(_loc15_ || _loc3_)
                                                               {
                                                                  addr222:
                                                                  §§push(_loc10_.col1.y);
                                                                  if(_loc15_ || _loc3_)
                                                                  {
                                                                     addr230:
                                                                     §§push(_loc11_.x);
                                                                     if(_loc15_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc15_)
                                                                        {
                                                                           addr237:
                                                                           addr239:
                                                                           §§push(_loc10_.col2.y);
                                                                           if(_loc15_ || _loc2_)
                                                                           {
                                                                           }
                                                                           addr250:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr254:
                                                                              _loc7_ = §§pop();
                                                                              _loc10_ = _loc4_.m_xf.R;
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 §§push(this.m_localAnchor1);
                                                                                 loop82:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr609:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_.m_sweep);
                                                                                       addr611:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().localCenter);
                                                                                          addr612:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr613:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                addr614:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr615:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc8_ = §§pop();
                                                                                                      continue loop82;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr425);
                                                                           }
                                                                        }
                                                                        §§goto(addr254);
                                                                     }
                                                                     §§goto(addr250);
                                                                     §§push(§§pop() * _loc11_.y);
                                                                  }
                                                               }
                                                               §§goto(addr254);
                                                            }
                                                            §§goto(addr230);
                                                         }
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr239);
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr254);
                                 }
                                 §§goto(addr222);
                              }
                              §§goto(addr254);
                           }
                           addr675:
                           _loc10_ = §§pop();
                           _loc11_ = this.m_prismatic2.§>!C§;
                           if(!_loc16_)
                           {
                              §§push(_loc10_.col1);
                              if(!(_loc16_ && param1))
                              {
                                 §§push(§§pop().x);
                                 if(_loc15_)
                                 {
                                    §§push(_loc11_.x);
                                    if(!(_loc16_ && _loc2_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc15_ || _loc3_)
                                       {
                                          §§push(_loc10_.col2);
                                          if(!(_loc16_ && this))
                                          {
                                             §§push(§§pop().x);
                                             if(!(_loc16_ && this))
                                             {
                                                §§push(_loc11_.y);
                                                if(!_loc16_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc15_ || param1)
                                                   {
                                                      addr742:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc15_ || _loc3_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc15_ || _loc3_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(!_loc16_)
                                                            {
                                                               addr763:
                                                               §§push(_loc10_.col1.y);
                                                               if(!_loc16_)
                                                               {
                                                                  addr766:
                                                                  §§push(_loc11_.x);
                                                                  if(!(_loc16_ && param1))
                                                                  {
                                                                     addr775:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        addr778:
                                                                        addr780:
                                                                        §§push(_loc10_.col2.y);
                                                                        if(_loc16_ && param1)
                                                                        {
                                                                        }
                                                                        addr791:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc15_ || this)
                                                                        {
                                                                           addr810:
                                                                           _loc7_ = §§pop();
                                                                           _loc10_ = _loc5_.m_xf.R;
                                                                           if(_loc15_ || _loc2_)
                                                                           {
                                                                              §§push(this.m_localAnchor2);
                                                                              loop36:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr1214:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.m_sweep);
                                                                                    addr1216:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().localCenter);
                                                                                       addr1217:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr1218:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr1219:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr1220:
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
                                                                           §§goto(addr1182);
                                                                           addr809:
                                                                        }
                                                                     }
                                                                     §§goto(addr810);
                                                                  }
                                                                  addr790:
                                                                  §§goto(addr791);
                                                                  §§push(§§pop() * _loc11_.y);
                                                               }
                                                               §§goto(addr778);
                                                            }
                                                            §§goto(addr810);
                                                         }
                                                         §§goto(addr809);
                                                      }
                                                      §§goto(addr810);
                                                   }
                                                   §§goto(addr778);
                                                }
                                                §§goto(addr790);
                                             }
                                             §§goto(addr775);
                                          }
                                          §§goto(addr780);
                                       }
                                       §§goto(addr778);
                                    }
                                    §§goto(addr742);
                                 }
                                 §§goto(addr766);
                              }
                              §§goto(addr763);
                           }
                           §§goto(addr810);
                        }
                        break;
                     }
                     if(!_loc16_)
                     {
                        §§push(this.§ !Q§);
                        if(!(_loc16_ && _loc2_))
                        {
                           §§pop().§[!p§ = -1;
                           if(_loc15_)
                           {
                              if(!_loc15_)
                              {
                                 continue loop0;
                              }
                              §§push(_loc14_);
                              if(_loc15_)
                              {
                                 §§push(_loc4_.§2!1§);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc16_ && _loc2_))
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc16_ && this))
                                       {
                                          addr83:
                                          _loc14_ = §§pop();
                                          if(!(_loc16_ && _loc2_))
                                          {
                                             if(false)
                                             {
                                                continue;
                                             }
                                             addr617:
                                             if(!this.m_revolute2)
                                             {
                                                §§push(_loc3_.m_xf);
                                                break;
                                             }
                                             if(_loc15_)
                                             {
                                                addr622:
                                                §§push(this.§ !Q§);
                                                §§push(this.§2z§);
                                                if(!_loc16_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§5!<§ = §§pop();
                                                if(_loc15_)
                                                {
                                                   §§push(_loc14_);
                                                   if(_loc15_ || _loc3_)
                                                   {
                                                      addr640:
                                                      §§push(this.§2z§);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(this.§2z§);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc16_)
                                                            {
                                                               addr653:
                                                               §§push(§§pop() * _loc5_.§2!1§);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc15_ || _loc3_)
                                                            {
                                                               addr663:
                                                               _loc14_ = Number(§§pop());
                                                               if(_loc15_ || this)
                                                               {
                                                                  addr1222:
                                                                  §§push(this);
                                                                  if(_loc15_ || _loc3_)
                                                                  {
                                                                     §§push(_loc14_);
                                                                     if(!_loc16_)
                                                                     {
                                                                        if(§§pop() > 0)
                                                                        {
                                                                           addr1236:
                                                                           §§push(1 / _loc14_);
                                                                           if(_loc15_ || _loc3_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc16_)
                                                                              {
                                                                                 addr1258:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc16_ && this))
                                                                           {
                                                                              §§goto(addr1258);
                                                                           }
                                                                        }
                                                                        §§pop().§"X§ = §§pop();
                                                                        if(!_loc16_)
                                                                        {
                                                                           if(!param1.§9!w§)
                                                                           {
                                                                              this.§&""§ = 0;
                                                                              if(!_loc16_)
                                                                              {
                                                                                 if(!(_loc15_ || _loc2_))
                                                                                 {
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr1608:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_.§%!<§);
                                                                                                   loop35:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_.§%!<§);
                                                                                                      loop33:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         loop32:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_.§3!q§);
                                                                                                            loop24:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§&""§);
                                                                                                               loop25:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  loop30:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§ !Q§);
                                                                                                                     loop31:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§,!]§);
                                                                                                                        loop26:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           loop27:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr1623:
                                                                                                                              §§push(§§pop() + §§pop() * §§pop());
                                                                                                                              loop28:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 addr1625:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.§%!<§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_.§%!<§);
                                                                                                                                       loop5:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          loop6:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc15_ || this))
                                                                                                                                             {
                                                                                                                                                continue loop28;
                                                                                                                                             }
                                                                                                                                             §§push(_loc4_.§3!q§);
                                                                                                                                             loop7:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§&""§);
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc15_ || this))
                                                                                                                                                   {
                                                                                                                                                      continue loop27;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc15_)
                                                                                                                                                      {
                                                                                                                                                         continue loop24;
                                                                                                                                                      }
                                                                                                                                                      §§push(this.§ !Q§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().§,!]§);
                                                                                                                                                         if(_loc15_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr1584:
                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc15_ || _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  continue loop25;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                            }
                                                                                                                                                            continue loop25;
                                                                                                                                                            addr1584:
                                                                                                                                                         }
                                                                                                                                                         continue loop26;
                                                                                                                                                      }
                                                                                                                                                      continue loop26;
                                                                                                                                                      addr1575:
                                                                                                                                                   }
                                                                                                                                                   loop9:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      loop10:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         loop11:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            §§push(_loc4_.m_angularVelocity);
                                                                                                                                                            if(!(_loc16_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.§2!1§);
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§&""§);
                                                                                                                                                                  if(!(_loc16_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr1537:
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§ !Q§.§[!p§);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc5_.§%!<§);
                                                                                                                                                                           loop14:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc16_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_.§%!<§);
                                                                                                                                                                                 while(_loc15_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    while(!(_loc16_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc5_.§3!q§);
                                                                                                                                                                                       if(_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§&""§);
                                                                                                                                                                                             loop17:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                addr1487:
                                                                                                                                                                                                while(!(_loc16_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§ !Q§);
                                                                                                                                                                                                   while(!_loc16_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc16_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop31;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop().§"S§);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                         addr1502:
                                                                                                                                                                                                         addr1407:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop().§"S§);
                                                                                                                                                                                                         if(!(_loc15_ || _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                         if(_loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop17;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1502);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1575);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop9;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1623);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          addr1504:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                             continue loop14;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc15_ || _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc16_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc15_ || this))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop32;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc5_.§3!q§);
                                                                                                                                                                                       if(_loc15_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§&""§);
                                                                                                                                                                                             if(!_loc16_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop7;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1389:
                                                                                                                                                                                                if(_loc15_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc16_ && _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop30;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(this.§ !Q§);
                                                                                                                                                                                                   if(_loc15_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1407);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1496);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1503);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1416);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1487);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1389);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc5_.§%!<§);
                                                                                                                                                                                    continue loop6;
                                                                                                                                                                                    if(!(_loc15_ || _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc16_ && param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop33;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    if(!(_loc15_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1350);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1504);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop5;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop35;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop33;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop11;
                                                                                                                                                                     }
                                                                                                                                                                     addr1539:
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1537);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1584);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop28;
                                                                                                                                       }
                                                                                                                                       if(!(_loc15_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr1324);
                                                                                                                                    }
                                                                                                                                    continue loop28;
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
                                                                                             §§goto(addr1625);
                                                                                          }
                                                                                          §§goto(addr1539);
                                                                                       }
                                                                                       §§goto(addr1505);
                                                                                    }
                                                                                    §§push(_loc5_);
                                                                                    §§push(_loc5_.m_angularVelocity);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(_loc5_.§2!1§);
                                                                                       if(_loc15_ || _loc3_)
                                                                                       {
                                                                                          §§push(this.§&""§);
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             addr1310:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                addr1308:
                                                                                                §§push(§§pop() * this.§ !Q§.§5!<§);
                                                                                             }
                                                                                             §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                             return;
                                                                                             addr1311:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1308);
                                                                                    }
                                                                                    §§goto(addr1310);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr1282:
                                                                                 }
                                                                                 §§goto(addr1310);
                                                                              }
                                                                              §§goto(addr1311);
                                                                           }
                                                                        }
                                                                        §§goto(addr1608);
                                                                     }
                                                                     §§goto(addr1258);
                                                                  }
                                                                  §§goto(addr1236);
                                                               }
                                                               §§goto(addr1608);
                                                            }
                                                            §§goto(addr663);
                                                         }
                                                      }
                                                      §§goto(addr653);
                                                   }
                                                   §§goto(addr663);
                                                }
                                                §§goto(addr1625);
                                             }
                                             §§goto(addr1608);
                                          }
                                          §§goto(addr622);
                                       }
                                       §§goto(addr640);
                                    }
                                    §§goto(addr663);
                                 }
                                 §§goto(addr653);
                              }
                              §§goto(addr83);
                           }
                        }
                        §§goto(addr622);
                     }
                     §§goto(addr1625);
                     §§goto(addr1222);
                  }
                  §§goto(addr675);
               }
            }
            §§goto(addr622);
         }
         §§goto(addr1282);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = b2internal::&A;
         var _loc3_:b2Body = b2internal::4!d;
         §§push(this.§ !Q§.§]l§(_loc2_.§%!<§,_loc2_.m_angularVelocity,_loc3_.§%!<§,_loc3_.m_angularVelocity));
         if(!(_loc7_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§"X§);
         if(!_loc7_)
         {
            §§push(-§§pop());
            if(!(_loc7_ && this))
            {
               §§push(§§pop() * _loc4_);
               if(!_loc7_)
               {
                  addr58:
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!(_loc7_ && param1))
            {
               §§push(this);
               §§push(this.§&""§);
               if(!(_loc7_ && _loc2_))
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§&""§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(_loc2_.§%!<§);
                  while(true)
                  {
                     §§push(_loc2_.§%!<§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().x);
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_.§3!q§);
                           if(_loc6_ || _loc3_)
                           {
                              §§push(_loc5_);
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                              addr395:
                           }
                           loop5:
                           while(true)
                           {
                              §§push(this.§ !Q§);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop().§,!]§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop9:
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
                                                §§push(_loc2_.§%!<§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§%!<§);
                                                   loop13:
                                                   while(_loc6_ || param1)
                                                   {
                                                      §§push(§§pop().y);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         §§push(_loc2_.§3!q§);
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            addr358:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr359:
                                                               while(true)
                                                               {
                                                                  §§push(this.§ !Q§);
                                                                  addr361:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§,!]§);
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop().y);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr366:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                         }
                                                         addr357:
                                                      }
                                                      loop20:
                                                      while(true)
                                                      {
                                                         §§pop().y = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            §§push(_loc2_.m_angularVelocity);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(_loc2_.§2!1§);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr331:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr329:
                                                                        §§push(§§pop() * this.§ !Q§.§[!p§);
                                                                     }
                                                                     §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                     loop22:
                                                                     while(!_loc7_)
                                                                     {
                                                                        §§push(_loc3_.§%!<§);
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.§%!<§);
                                                                           addr236:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc6_ || param1))
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              §§push(§§pop().x);
                                                                              if(_loc6_ || _loc2_)
                                                                              {
                                                                                 if(_loc7_ && _loc2_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc7_ && this)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(_loc3_.§3!q§);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       loop25:
                                                                                       while(_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          loop26:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§ !Q§);
                                                                                             loop27:
                                                                                             while(_loc6_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop().§"S§);
                                                                                                loop28:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   loop29:
                                                                                                   while(!_loc7_)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         loop30:
                                                                                                         while(!_loc7_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               addr300:
                                                                                                               addr142:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               if(!(_loc6_ || param1))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               §§push(_loc3_.§3!q§);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  continue loop30;
                                                                                                               }
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ || this))
                                                                                                                     {
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc7_ && this)
                                                                                                                     {
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                     if(_loc7_ && this)
                                                                                                                     {
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     §§push(this.§ !Q§);
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        continue loop27;
                                                                                                                     }
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§"S§);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           continue loop28;
                                                                                                                        }
                                                                                                                        §§push(§§pop().y);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr361);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(_loc6_ || param1)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               §§goto(addr357);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      §§goto(addr395);
                                                                                                   }
                                                                                                   §§goto(addr358);
                                                                                                }
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr365);
                                                                                    }
                                                                                    §§goto(addr366);
                                                                                 }
                                                                                 §§goto(addr280);
                                                                              }
                                                                              §§goto(addr299);
                                                                           }
                                                                           addr309:
                                                                           §§push(_loc3_.§%!<§);
                                                                           continue loop20;
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                               }
                                                               §§goto(addr329);
                                                            }
                                                            §§goto(addr331);
                                                         }
                                                      }
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
                     if(_loc7_ && this)
                     {
                        continue;
                     }
                     §§push(_loc3_.§%!<§);
                     if(_loc6_)
                     {
                        §§push(§§pop().y);
                        if(_loc6_)
                        {
                           §§goto(addr142);
                        }
                        §§goto(addr229);
                     }
                     §§goto(addr236);
                  }
               }
            }
            §§goto(addr115);
         }
         §§goto(addr58);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(0);
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:b2Body = b2internal::&A;
         var _loc4_:b2Body = b2internal::4!d;
         if(!_loc9_)
         {
            §§push(this.m_revolute1);
            if(!(_loc9_ && _loc3_))
            {
               if(!§§pop())
               {
                  §§push(this.m_prismatic1.§+t§());
                  if(_loc10_)
                  {
                     §§push(Number(§§pop()));
                     loop0:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        addr134:
                        loop59:
                        while(true)
                        {
                           loop58:
                           while(true)
                           {
                              §§push(this.m_revolute2);
                              if(_loc10_ || this)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(this.m_prismatic2.§+t§());
                                    if(!(_loc9_ && this))
                                    {
                                       addr48:
                                       if(!(_loc9_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             addr63:
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                _loc6_ = §§pop();
                                                if(!(_loc9_ && this))
                                                {
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      if(false)
                                                      {
                                                         continue;
                                                      }
                                                      addr158:
                                                      §§push(this.§-#§);
                                                      if(!_loc9_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr98:
                                                      if(_loc9_ && this)
                                                      {
                                                         continue loop59;
                                                      }
                                                      if(!_loc9_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            addr111:
                                                            §§push(this.m_revolute2.§5M§());
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               addr120:
                                                               §§push(Number(§§pop()));
                                                               if(_loc9_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               _loc6_ = §§pop();
                                                               §§goto(addr158);
                                                               addr123:
                                                            }
                                                            break;
                                                         }
                                                         addr145:
                                                         loop54:
                                                         while(true)
                                                         {
                                                            §§push(this.m_revolute1);
                                                            addr147:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§5M§());
                                                               addr148:
                                                               addr181:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc10_ || _loc2_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc5_ = §§pop();
                                                                  §§goto(addr48);
                                                               }
                                                               addr181:
                                                               var _loc7_:* = §§pop();
                                                               §§push(this.§"X§);
                                                               if(_loc10_)
                                                               {
                                                                  §§push(-§§pop());
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     addr194:
                                                                     §§push(§§pop() * _loc7_);
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc8_:* = §§pop();
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(_loc3_.m_sweep);
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().c);
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.m_sweep);
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().c);
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_.§3!q§);
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          loop8:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§ !Q§);
                                                                                             loop9:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().§,!]§);
                                                                                                loop10:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   loop11:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      loop12:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         loop13:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            loop14:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_.m_sweep);
                                                                                                               loop15:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().c);
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
                                                                                                                           §§push(§§pop().y);
                                                                                                                           loop19:
                                                                                                                           while(_loc10_)
                                                                                                                           {
                                                                                                                              §§push(_loc3_.§3!q§);
                                                                                                                              if(!(_loc9_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc9_ && _loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop6;
                                                                                                                                 }
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    addr459:
                                                                                                                                    if(_loc9_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    addr467:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!(_loc9_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr475:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          continue loop13;
                                                                                                                                       }
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       loop48:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             addr480:
                                                                                                                                             §§push(_loc4_.m_sweep);
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   continue loop1;
                                                                                                                                                }
                                                                                                                                                §§push(_loc4_.m_sweep);
                                                                                                                                                if(!(_loc9_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().a);
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc9_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_.§2!1§);
                                                                                                                                                            if(!(_loc9_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc10_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr293:
                                                                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc10_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr308:
                                                                                                                                                                              §§push(this.§ !Q§);
                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              addr313:
                                                                                                                                                                              §§push(§§pop() * §§pop().§5!<§);
                                                                                                                                                                           }
                                                                                                                                                                           addr315:
                                                                                                                                                                           §§pop().a = §§pop() + §§pop();
                                                                                                                                                                           loop49:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc3_.§@!1§();
                                                                                                                                                                              do
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc10_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop48;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop49;
                                                                                                                                                                                 _loc4_.§@!1§();
                                                                                                                                                                              }
                                                                                                                                                                              while(_loc9_);
                                                                                                                                                                              
                                                                                                                                                                              §§goto(addr221);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        loop30:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc9_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§ !Q§);
                                                                                                                                                                                 break loop48;
                                                                                                                                                                              }
                                                                                                                                                                              addr582:
                                                                                                                                                                           }
                                                                                                                                                                           addr586:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              addr587:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().a = §§pop();
                                                                                                                                                                                 addr588:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_.m_sweep);
                                                                                                                                                                                    loop34:
                                                                                                                                                                                    while(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().c);
                                                                                                                                                                                       loop35:
                                                                                                                                                                                       while(_loc10_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc4_.m_sweep);
                                                                                                                                                                                          while(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                                                                while(!(_loc9_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                   while(!(_loc9_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc4_.§3!q§);
                                                                                                                                                                                                      if(!(_loc9_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                         loop39:
                                                                                                                                                                                                         while(!_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            while(_loc10_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§ !Q§);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().§"S§);
                                                                                                                                                                                                                  addr539:
                                                                                                                                                                                                                  addr423:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                                                                     addr540:
                                                                                                                                                                                                                     loop43:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        addr541:
                                                                                                                                                                                                                        while(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           while(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                 addr320:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop34;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr322:
                                                                                                                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().c);
                                                                                                                                                                                                                                       if(!(_loc10_ || _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop35;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc9_ && param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop2;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr358);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr496);
                                                                                                                                                                                                                                       continue loop35;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr561:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc3_.m_sweep);
                                                                                                                                                                                                                                       addr563:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().a);
                                                                                                                                                                                                                                          addr564:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc3_.§2!1§);
                                                                                                                                                                                                                                             if(_loc10_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                                                                continue loop30;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr582);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr322);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr480);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop43;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                              addr648:
                                                                                                                                                                                                                              while(_loc10_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr561);
                                                                                                                                                                                                                                 §§push(_loc3_.m_sweep);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop14;
                                                                                                                                                                                                                              §§goto(addr549);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr549:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr629:
                                                                                                                                                                                                                        while(_loc10_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr647);
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop8;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(this.§ !Q§);
                                                                                                                                                                                                                  if(_loc9_ && _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().§,!]§);
                                                                                                                                                                                                                        if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                                                                           break loop39;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop10;
                                                                                                                                                                                                                     addr619:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop9;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop().§"S§);
                                                                                                                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr445:
                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                     if(_loc10_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc10_ || _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop39;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr459);
                                                                                                                                                                                                                        continue loop39;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr539);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr540);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc10_ || _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr423);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr617:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr619);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop12;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr629);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr541);
                                                                                                                                                                                                      if(!(_loc10_ || param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc4_.§3!q§);
                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop11;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc9_ && this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop7;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!(_loc9_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr414);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr467);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr445);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr467);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                                                                   continue loop19;
                                                                                                                                                                                                   if(!(_loc10_ || _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc9_ && this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop18;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr383);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr549);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr475);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop4;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop3;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop16;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop15;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr586);
                                                                                                                                                                     }
                                                                                                                                                                     addr585:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr313);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr586);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr308);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr564);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr587);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr315);
                                                                                                                                                }
                                                                                                                                                §§goto(addr563);
                                                                                                                                             }
                                                                                                                                             §§goto(addr320);
                                                                                                                                          }
                                                                                                                                          §§goto(addr588);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr585);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr541);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr617);
                                                                                                                           }
                                                                                                                           continue loop5;
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
                                                                  addr221:
                                                                  return _loc2_ < b2Settings.b2_linearSlop;
                                                               }
                                                               §§goto(addr194);
                                                               continue loop54;
                                                            }
                                                         }
                                                         §§goto(addr181);
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop58;
                                                      }
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr123);
                                             }
                                             §§goto(addr120);
                                          }
                                          addr180:
                                          §§goto(addr181);
                                          §§push(Number(§§pop()));
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr63);
                                 }
                                 §§goto(addr98);
                              }
                              §§goto(addr111);
                           }
                           §§push(_loc5_);
                           if(_loc10_)
                           {
                              §§push(this.§2z§);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() * _loc6_);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc10_ || _loc2_)
                           {
                              §§goto(addr180);
                           }
                           §§goto(addr181);
                        }
                     }
                  }
                  §§goto(addr180);
               }
               §§goto(addr145);
            }
            §§goto(addr147);
         }
         §§goto(addr134);
      }
   }
}
